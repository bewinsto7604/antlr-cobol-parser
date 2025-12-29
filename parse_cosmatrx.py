#!/usr/bin/env python3
"""
Script to properly parse COSMATRX copybook and generate accurate business rules.
Handles:
- R (Range) indicators for code ranges like P0000-P9999
- V (Value) indicators for individual code values
- Multiple logical paths through the matrix (separate rules)
- Nested condition structures (levels 01, 02, 03, 04)
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
    """Parse COSMATRX copybook and extract rule structure."""

    # Extract all FILLER lines that contain rule definitions
    filler_lines = re.findall(r"'([^']+)'", copybook_content)

    rules = []
    current_rule = None
    current_conditions = []

    for line in filler_lines:
        line = line.strip()
        if not line:
            continue

        # Check if this is a new COS code definition (e.g., "15 NURSE PRACTITONER00")
        cos_match = re.match(r'^(\d+[A-Z]?)\s+(.+?)\s+00\s*$', line)
        if cos_match:
            # Save previous rule if exists
            if current_rule and current_conditions:
                current_rule['conditions'] = parse_condition_tree(current_conditions)
                rules.append(current_rule)

            # Start new rule
            cos_code = cos_match.group(1)
            cos_desc = cos_match.group(2).strip()
            current_rule = {
                'cos_code': cos_code,
                'cos_desc': cos_desc
            }
            current_conditions = []
            continue

        # Check if this is a condition line (starts with level number + I/E + type)
        cond_match = re.match(r'^(\d{2})([IE])(\w+)\s+([RV]?)(.*)$', line)
        if cond_match and current_rule:
            level = cond_match.group(1)
            include_exclude = cond_match.group(2)
            cond_type = cond_match.group(3)
            range_or_value = cond_match.group(4)
            values = cond_match.group(5).strip()

            current_conditions.append({
                'level': level,
                'include_exclude': include_exclude,
                'type': cond_type,
                'range_or_value': range_or_value,
                'values': values
            })

    # Don't forget the last rule
    if current_rule and current_conditions:
        current_rule['conditions'] = parse_condition_tree(current_conditions)
        rules.append(current_rule)

    return rules


def parse_condition_tree(conditions):
    """Parse flat condition list into a tree structure based on levels."""
    # For now, return the flat list - we'll enhance this to build a proper tree
    return conditions


def format_code_list(values, range_or_value):
    """Format a list of codes, handling ranges (R) vs individual values (V)."""
    # Split values by whitespace
    codes = values.split()

    if not codes:
        return ""

    formatted = []
    i = 0

    while i < len(codes):
        code = codes[i]

        # Check if this is a range (R indicator followed by two codes)
        if range_or_value == 'R' and i + 1 < len(codes):
            # This is a range from code[i] to code[i+1]
            start_code = code
            end_code = codes[i + 1]
            formatted.append(f"`{start_code}` through `{end_code}`")
            i += 2
        else:
            # Individual value
            formatted.append(f"`{code}`")
            i += 1

    return ', '.join(formatted)


def main():
    """Main function to parse COSMATRX and generate report."""
    copybook_file = Path('copybook/COSMATRX.cpy')
    output_file = Path('copybook/COSMATRX-parsed.md')

    print(f"Reading COSMATRX copybook from {copybook_file}...")
    if not copybook_file.exists():
        print(f"ERROR: {copybook_file} not found!")
        sys.exit(1)

    content = read_file(copybook_file)

    print(f"Parsing COSMATRX rules...")
    rules = parse_cosmatrx_copybook(content)

    print(f"Found {len(rules)} COS codes")

    # For now, just output the structure we've parsed
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# COSMATRX Parsed Structure\n\n")

        for rule in rules:
            f.write(f"## COS Code {rule['cos_code']} - {rule['cos_desc']}\n\n")

            for cond in rule['conditions']:
                level_indent = "  " * (int(cond['level']) // 10)
                ie = "Include" if cond['include_exclude'] == 'I' else "Exclude"
                f.write(f"{level_indent}Level {cond['level']}: {ie} {cond['type']} ")
                f.write(f"({cond['range_or_value']}): {cond['values']}\n")

            f.write("\n")

    print(f"\nSUCCESS: Parsed structure written to {output_file}")
    print(f"  - Total COS codes: {len(rules)}")

    sys.exit(0)


if __name__ == '__main__':
    main()
