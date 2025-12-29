#!/usr/bin/env python3
"""
Script to fix COSMATRX-integrated-report.md by properly parsing the COSMATRX copybook.
Handles:
- Multiple logical paths through the matrix (separate rules)
- R (Range) indicators: P0000 through P9999
- V (Value) indicators: individual code values
- Proper nesting of conditions (levels 01, 02, 03, 04)
"""

import re
import sys
from pathlib import Path


def read_file(filepath):
    """Read a file and return its contents."""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()


def parse_cosmatrx_copybook(copybook_content):
    """
    Parse COSMATRX copybook and extract ALL rules including multiple paths.
    Each distinct path through the matrix tree becomes a separate rule.
    """
    # Extract all FILLER VALUE lines
    filler_pattern = r"05\s+FILLER\s+PIC X\(57\) VALUE\s+\d+\s*\n\s*'([^']+)'"
    filler_lines = re.findall(filler_pattern, copybook_content, re.MULTILINE)

    all_rules = []
    current_cos_code = None
    current_cos_desc = None
    current_paths = [[]]  # List of paths, each path is a list of conditions

    for line in filler_lines:
        line = line.strip()
        if not line:
            continue

        # Check if this is a new COS code definition
        cos_match = re.match(r'^(\d+[A-Z]?)\s*(.+?)\s+00\s*$', line)
        if cos_match:
            # Save previous COS code's rules
            if current_cos_code and current_paths[0]:
                for path in current_paths:
                    if path:
                        all_rules.append({
                            'cos_code': current_cos_code,
                            'cos_desc': current_cos_desc,
                            'path': path
                        })

            # Start new COS code
            current_cos_code = cos_match.group(1)
            current_cos_desc = cos_match.group(2).strip()
            current_paths = [[]]
            continue

        # Check if this is a condition line
        cond_match = re.match(r'^(\d{2})([IE])(\w+)\s*([RV]?)(.*)$', line)
        if cond_match and current_cos_code:
            level = int(cond_match.group(1))
            include_exclude = cond_match.group(2)
            cond_type = cond_match.group(3)
            range_or_value = cond_match.group(4) or 'V'
            values = cond_match.group(5).strip()

            condition = {
                'level': level,
                'include_exclude': include_exclude,
                'type': cond_type,
                'range_or_value': range_or_value,
                'values': values
            }

            # Determine if this creates a new path or extends existing ones
            # Multiple level 01 conditions create separate paths
            if level == 1:
                # Check if this is continuation of previous path or new path
                last_path = current_paths[-1]
                if last_path and last_path[-1]['level'] == 1:
                    # This is a new sibling path at level 01
                    current_paths.append([condition])
                else:
                    # First level 01 or extending after deeper levels
                    if last_path:
                        # Start new path
                        current_paths.append([condition])
                    else:
                        # Add to empty path
                        last_path.append(condition)
            else:
                # Add to the current path (all paths get this condition)
                if current_paths[-1]:
                    current_paths[-1].append(condition)

    # Don't forget the last COS code
    if current_cos_code and current_paths[0]:
        for path in current_paths:
            if path:
                all_rules.append({
                    'cos_code': current_cos_code,
                    'cos_desc': current_cos_desc,
                    'path': path
                })

    return all_rules


def format_codes(values, range_or_value):
    """
    Format code values, handling ranges (R) and individual values (V).
    R indicator means pairs of codes are ranges: R P0000 P9999 Q0111 Q0116
      becomes: `P0000` through `P9999`, `Q0111` through `Q0116`
    V indicator means individual values: V 01 02 03
      becomes: `01`, `02`, `03`
    """
    codes = values.split()
    if not codes:
        return ""

    formatted = []
    i = 0

    if range_or_value == 'R':
        # Pairs of codes are ranges
        while i < len(codes):
            if i + 1 < len(codes):
                formatted.append(f"`{codes[i]}` through `{codes[i+1]}`")
                i += 2
            else:
                formatted.append(f"`{codes[i]}`")
                i += 1
    else:
        # Individual values
        formatted = [f"`{code}`" for code in codes]

    return ', '.join(formatted)


def condition_to_text(condition):
    """Convert a condition to natural language text."""
    ie = "is" if condition['include_exclude'] == 'I' else "is NOT"
    cond_type = condition['type']
    values = condition['values']
    range_or_value = condition['range_or_value']

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
        'SPROG': 'Special Program'
    }

    type_name = type_map.get(cond_type, cond_type)
    formatted_values = format_codes(values, range_or_value)

    # Handle Procedure Code with Modifiers specially
    if cond_type == 'PROCMV':
        # Parse procedure+modifier pairs
        proc_mod_pairs = []
        i = 0
        while i < len(values):
            if i + 1 < len(values):
                # Assume format like: 90832AJ (procedure + 2-char modifier)
                proc_code = values[i:i+5]
                modifier = values[i+5:i+7] if len(values) > i+5 else ""
                if modifier:
                    proc_mod_pairs.append(f"`{proc_code}` with modifier `{modifier}`")
                else:
                    proc_mod_pairs.append(f"`{proc_code}`")
                i += 7
            else:
                break
        if proc_mod_pairs:
            formatted_values = ', '.join(proc_mod_pairs)

    return f"{type_name} {ie} {formatted_values}"


def generate_fixed_report(rules, output_file):
    """Generate corrected COSMATRX report with properly split rules."""
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# COS Business Rules Report (Corrected)\n\n")

        rule_number = 1
        for rule in rules:
            cos_code = rule['cos_code']
            cos_desc = rule['cos_desc']
            path = rule['path']

            # Build natural language conditions
            conditions = []
            for cond in path:
                conditions.append(condition_to_text(cond))

            condition_text = ' and '.join(conditions)

            f.write(f"**Rule {rule_number:03d}** - COS code `{cos_code}` ({cos_desc}) ")
            f.write(f"is assigned when {condition_text}.\n\n")

            rule_number += 1

    print(f"Generated {rule_number - 1} rules")


def main():
    """Main function."""
    copybook_file = Path('copybook/COSMATRX.cpy')
    output_file = Path('copybook/COSMATRX-integrated-report-FIXED.md')

    print(f"Reading COSMATRX copybook from {copybook_file}...")
    if not copybook_file.exists():
        print(f"ERROR: {copybook_file} not found!")
        sys.exit(1)

    content = read_file(copybook_file)

    print(f"Parsing COSMATRX rules (handling multiple paths, ranges, values)...")
    rules = parse_cosmatrx_copybook(content)

    print(f"Found {len(rules)} total rules (including multiple paths per COS code)")

    print(f"Generating fixed report: {output_file}...")
    generate_fixed_report(rules, output_file)

    print(f"\nSUCCESS: Fixed COSMATRX report written to {output_file}")

    sys.exit(0)


if __name__ == '__main__':
    main()
