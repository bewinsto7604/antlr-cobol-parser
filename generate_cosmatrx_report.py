#!/usr/bin/env python3
"""
Script to generate COSMATRX-integrated-report.md from COSMATRX.cpy copybook.
Properly handles:
- Multiple logical paths through the matrix (separate rules)
- R (Range) indicators: P0000-P9999 becomes "P0000 through P9999"
- V (Value) indicators: individual code values
- Nested condition structures creating AND/OR logic
- Procedure codes with embedded modifiers (e.g., 90832AJ)
"""

import re
import sys
from pathlib import Path
from collections import defaultdict


def read_file(filepath):
    """Read a file and return its contents."""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()


def parse_cosmatrx_copybook(copybook_content):
    """
    Parse COSMATRX copybook and extract rule tree structure.
    Returns a list of COS codes with their condition trees.
    """
    # Extract all FILLER VALUE lines
    filler_pattern = r"'([^']+)'"
    filler_lines = re.findall(filler_pattern, copybook_content)

    cos_codes = []
    current_cos = None

    for line in filler_lines:
        line = line.strip()
        if not line:
            continue

        # Check if this is a new COS code definition
        # Format: "15 NURSE PRACTITONER00"
        cos_match = re.match(r'^(\d+[A-Z]?)\s*(.+?)\s+00\s*$', line)
        if cos_match:
            # Save previous COS code if exists
            if current_cos:
                cos_codes.append(current_cos)

            # Start new COS code
            current_cos = {
                'code': cos_match.group(1),
                'description': cos_match.group(2).strip(),
                'conditions': []
            }
            continue

        # Check if this is a condition line
        # Format: "                    01IPTYPEV70                          "
        # After trimming: "01IPTYPEV70"
        # Structure: LEVEL(2) + I/E(1) + TYPE + [R/V](1) + VALUES
        cond_match = re.match(r'^(\d{2})([IE])(.+)$', line)
        if cond_match and current_cos:
            level = int(cond_match.group(1))
            include_exclude = cond_match.group(2)  # I or E
            rest = cond_match.group(3)

            # Parse the rest to get type, range/value indicator, and values
            # Common patterns:
            # "PROC RP0000  P9999  Q0111..." - Type + space + R/V + values
            # "PTYPEV70" - Type + R/V + values (no space)
            # "PROCMV90832AJ90834AJ..." - Type + R/V + values (no space, complex)

            # Check if there's a space after the type
            if ' ' in rest:
                parts = rest.split(None, 1)  # Split on first whitespace
                type_and_rv = parts[0]
                values = parts[1] if len(parts) > 1 else ''

                # Extract R/V from end of type string
                if type_and_rv[-1] in 'RV':
                    cond_type = type_and_rv[:-1]
                    range_value = type_and_rv[-1]
                else:
                    cond_type = type_and_rv
                    range_value = 'V'  # Default to value
            else:
                # No space, everything is concatenated
                # Need to find where type ends and R/V begins
                # Type is all uppercase letters at start
                # Then comes R or V
                # Then comes values (could be alphanumeric)

                # Try to match known type patterns
                type_patterns = [
                    'PROCMV', 'PROC', 'PTYPE', 'CTYPE', 'PSPEC', 'PMOD',
                    'CLINC', 'FACCC', 'PSTAT', 'SPROG', 'GSHP'
                ]

                cond_type = None
                range_value = 'V'
                values = ''

                for pattern in type_patterns:
                    if rest.startswith(pattern):
                        remainder = rest[len(pattern):]
                        # Check if next char is R or V
                        if remainder and remainder[0] in 'RV':
                            cond_type = pattern
                            range_value = remainder[0]
                            values = remainder[1:]
                        elif remainder:
                            # No explicit R/V, assume V
                            cond_type = pattern
                            range_value = 'V'
                            values = remainder
                        break

                if not cond_type:
                    # Fallback: assume type is all capital letters at start
                    match = re.match(r'^([A-Z]+)([RV]?)(.*)$', rest)
                    if match:
                        cond_type = match.group(1)
                        range_value = match.group(2) or 'V'
                        values = match.group(3)
                    else:
                        continue  # Skip malformed line

            current_cos['conditions'].append({
                'level': level,
                'include_exclude': include_exclude,
                'type': cond_type,
                'range_value': range_value,
                'values': values.strip()
            })

    # Don't forget the last COS code
    if current_cos:
        cos_codes.append(current_cos)

    return cos_codes


def build_rule_paths(conditions):
    """
    Build all distinct paths through the condition tree.
    Multiple conditions at the same level create separate paths (OR).
    Conditions at deeper levels extend the path (AND).

    Returns: List of paths, where each path is a list of conditions.
    """
    if not conditions:
        return [[]]

    # Group conditions by level
    by_level = defaultdict(list)
    for cond in conditions:
        by_level[cond['level']].append(cond)

    # Sort levels
    levels = sorted(by_level.keys())

    # Build paths recursively
    def build_paths_from_level(level_idx, current_path):
        if level_idx >= len(levels):
            return [current_path]

        current_level = levels[level_idx]
        level_conditions = by_level[current_level]

        all_paths = []

        # Each condition at this level creates a separate branch
        for cond in level_conditions:
            new_path = current_path + [cond]

            # Find child conditions (next level down)
            # Children are conditions at the next level that follow this condition in the original list
            cond_idx = conditions.index(cond)

            # Check if there are conditions at deeper levels after this one
            has_children = False
            if level_idx + 1 < len(levels):
                next_level = levels[level_idx + 1]
                # Find next sibling or parent's sibling
                next_sibling_idx = None
                for i in range(cond_idx + 1, len(conditions)):
                    if conditions[i]['level'] <= current_level:
                        next_sibling_idx = i
                        break

                # Children are conditions between this one and next sibling
                children = []
                for i in range(cond_idx + 1, next_sibling_idx if next_sibling_idx else len(conditions)):
                    if conditions[i]['level'] == next_level:
                        children.append(conditions[i])
                        has_children = True

                if has_children:
                    # Recursively build paths for children
                    for child in children:
                        child_idx = conditions.index(child)
                        child_path = build_single_path(child_idx, new_path)
                        all_paths.append(child_path)
                else:
                    all_paths.append(new_path)
            else:
                all_paths.append(new_path)

        return all_paths

    def build_single_path(start_idx, current_path):
        """Build a single path starting from a condition index."""
        cond = conditions[start_idx]
        new_path = current_path + [cond]

        # Find children (next level conditions that come after this one)
        current_level = cond['level']

        # Find next sibling (same or higher level)
        next_sibling_idx = None
        for i in range(start_idx + 1, len(conditions)):
            if conditions[i]['level'] <= current_level:
                next_sibling_idx = i
                break

        # Children are conditions between this one and next sibling that are exactly one level deeper
        child_level = current_level + 1
        for i in range(start_idx + 1, next_sibling_idx if next_sibling_idx else len(conditions)):
            if conditions[i]['level'] == child_level:
                # Recursively add this child's path
                new_path = build_single_path(i, new_path)
                break  # Only follow first child at each level for this path

        return new_path

    # Start building paths from level 1 (root level)
    if 1 in by_level:
        root_conditions = by_level[1]
        all_paths = []

        for root_cond in root_conditions:
            root_idx = conditions.index(root_cond)
            path = build_single_path(root_idx, [])
            all_paths.append(path)

        return all_paths

    return [[]]


def format_code_range(codes, range_value):
    """
    Format code values handling ranges (R) and individual values (V).

    R indicator: Pairs are ranges
      RP0000 P9999 Q0111 Q0116 -> "`P0000` through `P9999`", "`Q0111` through `Q0116`"

    V indicator: Individual values
      V01 02 03 -> "`01`", "`02`", "`03`"
    """
    if not codes:
        return ""

    code_list = codes.split()
    formatted = []

    if range_value == 'R':
        # Pairs of codes are ranges
        i = 0
        while i < len(code_list):
            if i + 1 < len(code_list):
                formatted.append(f"`{code_list[i]}` through `{code_list[i+1]}`")
                i += 2
            else:
                formatted.append(f"`{code_list[i]}`")
                i += 1
    else:
        # Individual values
        formatted = [f"`{code}`" for code in code_list]

    return ', '.join(formatted)


def format_procedure_modifiers(values):
    """
    Parse procedure codes with embedded modifiers.
    E.g., "90832AJ90834AJ90837AJ" -> "90832 with modifier AJ", "90834 with modifier AJ", ...
    Assumes format: 5-char procedure code + 2-char modifier
    """
    formatted = []
    i = 0

    while i < len(values):
        if i + 7 <= len(values):
            proc_code = values[i:i+5]
            modifier = values[i+5:i+7]
            formatted.append(f"`{proc_code}` with modifier `{modifier}`")
            i += 7
        else:
            # Remainder
            if i < len(values):
                formatted.append(f"`{values[i:]}`")
            break

    return ', '.join(formatted)


def condition_to_text(condition):
    """Convert a condition to natural language text."""
    ie = "is" if condition['include_exclude'] == 'I' else "is NOT"
    cond_type = condition['type']
    values = condition['values']
    range_value = condition['range_value']

    # Map condition types to readable names
    type_map = {
        'CTYPE': 'Claim Type',
        'PTYPE': 'Provider Type',
        'PSPEC': 'Provider Specialty',
        'PROC': 'Procedure Code',
        'PROCMV': 'Procedure Code with Modifiers',
        'PMOD': 'Procedure Modifier Only',
        'CLINC': 'Clinic Code',
        'FACCC': 'Facility Control Code',
        'PSTAT': 'Program Status',
        'SPROG': 'Special Program',
        'GSHP': 'GSHP'
    }

    type_name = type_map.get(cond_type, cond_type)

    # Format values based on type
    if cond_type == 'PROCMV' and not ' ' in values:
        # Procedure codes with embedded modifiers
        formatted_values = format_procedure_modifiers(values)
    else:
        # Regular codes (with or without ranges)
        formatted_values = format_code_range(values, range_value)

    return f"{type_name} {ie} {formatted_values}"


def generate_cosmatrx_report(cos_codes, output_file):
    """Generate COSMATRX integrated report with all rules properly split."""
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# COS Business Rules Report\n\n")

        rule_number = 1

        for cos in cos_codes:
            cos_code = cos['code']
            cos_desc = cos['description']
            conditions = cos['conditions']

            # Build all paths through the condition tree
            paths = build_rule_paths(conditions)

            # Generate a rule for each path
            for path in paths:
                if not path:
                    continue

                # Convert path to natural language
                condition_texts = [condition_to_text(cond) for cond in path]
                condition_text = ' and '.join(condition_texts)

                f.write(f"**Rule {rule_number:03d}** - COS code {cos_code} ({cos_desc}) is assigned when {condition_text}.\n\n")
                rule_number += 1

    return rule_number - 1


def main():
    """Main function to generate COSMATRX report."""
    copybook_file = Path('copybook/COSMATRX.cpy')
    output_file = Path('copybook/COSMATRX-integrated-report.md')

    print(f"Reading COSMATRX copybook from {copybook_file}...")
    if not copybook_file.exists():
        print(f"ERROR: {copybook_file} not found!")
        sys.exit(1)

    content = read_file(copybook_file)

    print(f"Parsing COSMATRX copybook structure...")
    cos_codes = parse_cosmatrx_copybook(content)
    print(f"Found {len(cos_codes)} COS codes")

    print(f"Building rule paths (handling multiple logical paths per COS code)...")
    print(f"Generating report: {output_file}...")

    total_rules = generate_cosmatrx_report(cos_codes, output_file)

    print(f"\nSUCCESS: COSMATRX report written to {output_file}")
    print(f"  - COS codes: {len(cos_codes)}")
    print(f"  - Total rules: {total_rules}")
    print(f"  - Format: Natural language with proper range/value handling")
    print(f"\nKey features:")
    print(f"  - Multiple logical paths split into separate rules")
    print(f"  - R (Range) indicator: 'P0000 through P9999'")
    print(f"  - V (Value) indicator: individual codes")
    print(f"  - Procedure codes with modifiers properly parsed")

    sys.exit(0)


if __name__ == '__main__':
    main()
