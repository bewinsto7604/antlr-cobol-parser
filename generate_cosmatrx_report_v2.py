#!/usr/bin/env python3
"""
COSMATRX Parser v2 - Complete rewrite with proper handling of:
1. Continuation lines (values spanning multiple lines)
2. Multiple logical paths (separate rules)
3. R (Range) vs V (Value) indicators
4. Proper tree structure interpretation
"""

import re
import sys
from pathlib import Path
from collections import defaultdict


def read_file(filepath):
    """Read a file and return its contents."""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()


def extract_filler_lines(copybook_content):
    """Extract all FILLER VALUE lines from copybook."""
    pattern = r"'([^']+)'"
    return re.findall(pattern, copybook_content)


def parse_cosmatrx_structure(filler_lines):
    """
    Parse COSMATRX copybook into structured format.
    Returns list of COS codes with their complete condition trees.
    """
    cos_codes = []
    current_cos = None
    current_condition = None  # Track current condition for continuations

    for line in filler_lines:
        line = line.strip()
        if not line:
            continue

        # Check if this is a COS code definition line
        # Format: "15 NURSE PRACTITONER00" or "14 CHIROPRACTOR     00" or "08ACOMM HLTH CLINIC 00"
        # Note: Some descriptions have no space before "00", and some codes have no space after code (08A)
        cos_match = re.match(r'^(\d+[A-Z]?)\s*(.+?)\s*00\s*$', line)
        if cos_match:
            # Save previous COS
            if current_cos:
                cos_codes.append(current_cos)

            # Start new COS
            current_cos = {
                'code': cos_match.group(1),
                'description': cos_match.group(2).strip(),
                'conditions': []
            }
            current_condition = None
            continue

        # Check if this is a condition line (starts with level + I/E)
        # Format: "01IPTYPEV70" or "                    02EPROC RP0000  P9999"
        # Pattern: LEVEL(2 digits) + I/E(1 char) + REST
        cond_match = re.match(r'^(\d{2})([IE])(.+)$', line)
        if cond_match:
            level = int(cond_match.group(1))
            include_exclude = cond_match.group(2)
            rest = cond_match.group(3).strip()

            # Parse TYPE + [R/V] + VALUES from rest
            cond_type, range_value, values = parse_condition_rest(rest)

            current_condition = {
                'level': level,
                'include_exclude': include_exclude,
                'type': cond_type,
                'range_value': range_value,
                'values': values
            }

            if current_cos:
                current_cos['conditions'].append(current_condition)
            continue

        # Otherwise, this is a continuation line (more values for current condition)
        if current_condition and current_cos:
            # Append values to current condition
            more_values = line.strip()
            if more_values:
                if current_condition['values']:
                    current_condition['values'] += '  ' + more_values
                else:
                    current_condition['values'] = more_values

    # Don't forget last COS
    if current_cos:
        cos_codes.append(current_cos)

    return cos_codes


def parse_condition_rest(rest):
    """
    Parse the TYPE + [R/V] + VALUES portion of a condition.
    Returns: (type, range_value, values)

    Examples:
    "PTYPEV70" -> ("PTYPE", "V", "70")
    "PROC RP0000  P9999" -> ("PROC", "R", "P0000  P9999")
    "PROCMV90832AJ90834AJ" -> ("PROCMV", "V", "90832AJ90834AJ")
    """
    # Known condition types
    type_patterns = [
        'PROCMV',  # Must come before PROC
        'PROC',
        'PTYPE',
        'CTYPE',
        'PSPEC',
        'PMOD',
        'CLINC',
        'FACCC',
        'PSTAT',
        'SPROG',
        'GSHP'
    ]

    # Try to match known types
    for type_pattern in type_patterns:
        if rest.startswith(type_pattern):
            remainder = rest[len(type_pattern):]

            # Check if next character is R or V
            if remainder and remainder[0] in 'RV':
                range_value = remainder[0]
                values = remainder[1:].strip()
                return (type_pattern, range_value, values)
            elif remainder and remainder[0] == ' ':
                # Space separates type from R/V + values
                remainder = remainder.strip()
                if remainder and remainder[0] in 'RV':
                    range_value = remainder[0]
                    values = remainder[1:].strip()
                    return (type_pattern, range_value, values)
                else:
                    # No R/V indicator, assume V
                    return (type_pattern, 'V', remainder)
            else:
                # No explicit R/V, assume V
                return (type_pattern, 'V', remainder.strip())

    # Fallback: couldn't match known pattern
    return ('UNKNOWN', 'V', rest)


def build_rule_paths(conditions):
    """
    Build all distinct rule paths through the condition tree.

    Key insight: Multiple conditions at the same level under the same parent
    create separate OR branches (separate rules).

    Returns: List of paths, where each path is a list of conditions forming
    a complete rule.
    """
    if not conditions:
        return [[]]

    # Build tree structure
    # Group conditions by level and track parent-child relationships
    paths = []

    # Find all level 01 (root) conditions
    root_conditions = [c for c in conditions if c['level'] == 1]

    if not root_conditions:
        # No root conditions, return empty
        return [[]]

    # For each root condition, build all paths under it
    for root in root_conditions:
        root_idx = conditions.index(root)
        root_paths = build_paths_from_condition(root_idx, conditions)
        paths.extend(root_paths)

    return paths


def build_paths_from_condition(cond_idx, all_conditions):
    """
    Build all paths starting from a specific condition.

    Returns: List of paths, where each path includes this condition and
    all children down to leaves.
    """
    current_cond = all_conditions[cond_idx]
    current_level = current_cond['level']

    # Find the next sibling (same or higher level)
    next_sibling_idx = None
    for i in range(cond_idx + 1, len(all_conditions)):
        if all_conditions[i]['level'] <= current_level:
            next_sibling_idx = i
            break

    # Find all direct children (exactly next level down)
    child_level = current_level + 1
    children = []
    for i in range(cond_idx + 1, next_sibling_idx if next_sibling_idx else len(all_conditions)):
        if all_conditions[i]['level'] == child_level:
            children.append(i)

    if not children:
        # Leaf node - return single path with just this condition
        return [[current_cond]]

    # For each child, build paths recursively
    all_paths = []
    for child_idx in children:
        child_paths = build_paths_from_condition(child_idx, all_conditions)
        # Prepend current condition to each child path
        for path in child_paths:
            all_paths.append([current_cond] + path)

    return all_paths


def format_code_range(values, range_value):
    """Format code values handling R (range) vs V (individual values)."""
    if not values:
        return ""

    # Split on whitespace
    codes = values.split()

    if range_value == 'R':
        # Pairs are ranges
        formatted = []
        i = 0
        while i < len(codes):
            if i + 1 < len(codes):
                formatted.append(f"`{codes[i]}` through `{codes[i+1]}`")
                i += 2
            else:
                formatted.append(f"`{codes[i]}`")
                i += 1
        return ', '.join(formatted)
    else:
        # Individual values
        return ', '.join(f"`{code}`" for code in codes)


def format_procedure_modifiers(values):
    """
    Parse procedure codes with embedded modifiers.
    Format: 5-char procedure + 2-char modifier, repeated
    Example: "90832AJ90834AJ" -> "90832 with modifier AJ, 90834 with modifier AJ"
    """
    formatted = []
    i = 0

    while i < len(values):
        # Try to extract procedure (5 chars) + modifier (2 chars)
        if i + 7 <= len(values):
            proc = values[i:i+5]
            mod = values[i+5:i+7]
            formatted.append(f"`{proc}` with modifier `{mod}`")
            i += 7
        elif i + 5 <= len(values):
            # Just procedure, no modifier
            proc = values[i:i+5]
            formatted.append(f"`{proc}`")
            i += 5
        else:
            # Remainder
            formatted.append(f"`{values[i:]}`")
            break

    return ', '.join(formatted)


def condition_to_text(condition):
    """Convert a condition to natural language."""
    ie = "is" if condition['include_exclude'] == 'I' else "is NOT"

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

    type_name = type_map.get(condition['type'], condition['type'])
    values = condition['values']
    range_value = condition['range_value']

    # Format values based on type
    if condition['type'] == 'PROCMV' and values:
        # Procedure codes with embedded modifiers
        # Remove spaces (from continuation lines) and parse
        values_no_spaces = values.replace(' ', '')
        formatted = format_procedure_modifiers(values_no_spaces)
    else:
        # Regular codes
        formatted = format_code_range(values, range_value)

    return f"{type_name} {ie} {formatted}"


def generate_report(cos_codes, output_file):
    """Generate the COSMATRX integrated report."""
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# COS Business Rules Report\n\n")

        rule_number = 1

        for cos in cos_codes:
            # Build all rule paths for this COS code
            paths = build_rule_paths(cos['conditions'])

            # Generate a rule for each path
            for path in paths:
                if not path:
                    continue

                # Convert path to natural language
                condition_texts = [condition_to_text(cond) for cond in path]
                full_condition = ' and '.join(condition_texts)

                f.write(f"**Rule {rule_number:03d}** - {cos['description']} "
                       f"({cos['code']}) is assigned when {full_condition}.\n\n")

                rule_number += 1

    return rule_number - 1


def main():
    """Main function."""
    copybook_file = Path('copybook/COSMATRX.cpy')
    output_file = Path('copybook/COSMATRX-integrated-report.md')

    print(f"Reading COSMATRX copybook: {copybook_file}")
    if not copybook_file.exists():
        print(f"ERROR: {copybook_file} not found!")
        sys.exit(1)

    content = read_file(copybook_file)

    print("Extracting FILLER lines...")
    filler_lines = extract_filler_lines(content)
    print(f"Found {len(filler_lines)} FILLER lines")

    print("Parsing COSMATRX structure...")
    cos_codes = parse_cosmatrx_structure(filler_lines)
    print(f"Parsed {len(cos_codes)} COS codes")

    print("Building rule paths (splitting multiple logical paths)...")
    print(f"Generating report: {output_file}")

    total_rules = generate_report(cos_codes, output_file)

    print(f"\nSUCCESS: Generated {output_file}")
    print(f"  COS codes: {len(cos_codes)}")
    print(f"  Total rules: {total_rules}")
    print(f"\nFeatures:")
    print(f"  - Multiple paths split into separate rules")
    print(f"  - R (Range): 'P0000 through P9999'")
    print(f"  - V (Value): individual codes")
    print(f"  - Procedure+modifier pairs parsed")

    sys.exit(0)


if __name__ == '__main__':
    main()
