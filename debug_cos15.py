#!/usr/bin/env python3
"""Debug script to check COS 15 parsing"""

import re
from pathlib import Path

def read_file(filepath):
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()

def extract_filler_lines(copybook_content):
    pattern = r"'([^']+)'"
    return re.findall(pattern, copybook_content)

# Read copybook
copybook_file = Path('copybook/COSMATRX.cpy')
content = read_file(copybook_file)

# Extract filler lines
filler_lines = extract_filler_lines(content)

# Find COS 15
found_cos15 = False
for i, line in enumerate(filler_lines):
    line_stripped = line.strip()

    # Check if this is COS 15
    if re.match(r'^15\s+', line_stripped):
        found_cos15 = True
        print(f"=== Found COS 15 at index {i} ===")
        print(f"Line: '{line}'")
        print(f"Stripped: '{line_stripped}'")

        # Print next 20 lines
        for j in range(i, min(i+20, len(filler_lines))):
            print(f"{j}: '{filler_lines[j]}'")
        break

if not found_cos15:
    print("COS 15 not found!")
    print("\n=== All COS codes found ===")
    for i, line in enumerate(filler_lines):
        cos_match = re.match(r'^(\d+[A-Z]?)\s+(.+?)\s+00\s*$', line.strip())
        if cos_match:
            print(f"{i}: COS {cos_match.group(1)} - {cos_match.group(2)}")
