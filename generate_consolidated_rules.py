#!/usr/bin/env python3
"""
Script to generate consolidated business rules by merging NJ2BE067 rules with COSMATRX base rules.
Outputs directly to markdown file in natural language format.
"""

import re
import sys
from pathlib import Path


def read_file(filepath):
    """Read a markdown file and return its contents."""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()


def parse_cosmatrx_rules(cosmatrx_content):
    """Parse COSMATRX rules from markdown content."""
    rules = []
    # Updated pattern to match new format: Description (Code)
    pattern = r'\*\*Rule (\d+)\*\* - (.+?) \((.+?)\) is assigned when (.+?)(?=\n\n|\n\*\*Rule|\Z)'

    matches = re.finditer(pattern, cosmatrx_content, re.DOTALL)
    for match in matches:
        rule_num = match.group(1)
        cos_desc = match.group(2)  # Description is now first
        cos_code = match.group(3)  # Code is now second (in brackets)
        conditions = match.group(4).strip()

        rules.append({
            'number': rule_num,
            'cos_code': cos_code,
            'cos_desc': cos_desc,
            'conditions': conditions
        })

    return rules


def is_procedure_based_rule(conditions):
    """Check if a rule is procedure-based (mentions Procedure Code or Procedure Modifier)."""
    procedure_keywords = [
        'Procedure Code',
        'Procedure Modifier',
        'PROC ',
        'PROCMV'
    ]
    return any(keyword in conditions for keyword in procedure_keywords)


def add_claim_type_descriptions(conditions):
    """Add inline descriptions for claim types in conditions."""
    claim_type_map = {
        '01': 'Inpatient Hospital',
        '02': 'Long Term Care',
        '03': 'Outpatient Hospital',
        '04': 'Physician',
        '05': 'Chiropractor',
        '06': 'Home Health',
        '07': 'Transportation',
        '08': 'Vision',
        '09': 'Supplies/DME',
        '10': 'Podiatry',
        '11': 'Dental',
        '13': 'EPSDT/HealthStart',
        '16': 'Laboratory',
        '17': 'Prosthetic/Orthotic',
        '18': 'Independent Clinic',
        '19': 'Psychologist',
        '21': 'Optometry',
        '22': 'Nurse-Midwife',
        '23': 'Hearing Aid'
    }

    # Add descriptions to Claim Type references
    for code, desc in claim_type_map.items():
        # Match patterns like "Claim Type is `01`" without description
        pattern = rf'Claim Type is `{code}`(?!\s*\()'
        replacement = f'Claim Type is {desc} (`{code}`)'
        conditions = re.sub(pattern, replacement, conditions)

    return conditions


def add_medicare_crossovers(conditions, cos_code):
    """Add Medicare Part A/B crossover variations to rules."""
    claim_type_map = {
        '01': ('Inpatient Hospital', '14/01', 'A'),
        '02': ('LTC', '14/02', 'A'),
        '03': ('Outpatient Hospital', '14/03', 'A'),
        '04': ('Physician', '15/04', 'B'),
        '05': ('Chiropractor', '15/05', 'B'),
        '06': ('Home Health', '15/06', 'B'),
        '07': ('Transportation', '15/07', 'B'),
        '08': ('Vision', '15/08', 'B'),
        '09': ('Supplies/DME', '15/09', 'B'),
        '10': ('Podiatry', '15/10', 'B'),
        '16': ('Laboratory', '15/16', 'B'),
        '17': ('Prosthetic/Orthotic', '15/17', 'B'),
        '18': ('Independent Clinic', '15/18', 'B'),
        '19': ('Psychologist', '15/19', 'B'),
        '21': ('Optometry', '15/21', 'B'),
        '22': ('Nurse-Midwife', '15/22', 'B'),
        '23': ('Hearing Aid', '15/23', 'B')
    }

    # Add Medicare crossovers for each claim type mentioned
    for code, (desc, crossover, part) in claim_type_map.items():
        # Pattern: "Claim Type is Description (`XX`)"
        pattern = rf'Claim Type is {desc} \(`{code}`\)'
        replacement = f'Claim Type is {desc} (`{code}`) OR Medicare Part {part} {desc} Crossover ({crossover})'
        conditions = re.sub(pattern, replacement, conditions)

    return conditions


def add_conditional_exclusions(conditions):
    """Add conditional exclusions for procedure-based rules."""
    if is_procedure_based_rule(conditions):
        # Don't add exclusions if already present
        if 'NOT Claim Type Inpatient Hospital' not in conditions:
            exclusion = (' and claim is NOT Claim Type Inpatient Hospital (`01`), '
                        'NOT Claim Type Home Health (`06`), '
                        'NOT Medicare Part A Inpatient Hospital Crossover (14/01), '
                        'and NOT Outpatient Lab Procedure')
            # Add before the final period
            if conditions.endswith('.'):
                conditions = conditions[:-1] + exclusion + '.'
            else:
                conditions = conditions + exclusion + '.'

    return conditions


def generate_consolidated_report(nj2be067_rules, cosmatrx_rules, output_file):
    """Generate the consolidated business rules report."""
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("# NJ2BE067 + COSMATRX Consolidated Business Rules Report\n\n")

        rule_number = 1

        # Add NJ2BE067 Override Rules (001-003)
        override_rules = [
            {
                'cos_code': '94',
                'cos_desc': 'Garden State Health Plan - GSHP',
                'conditions': ('GSHP-RELATED flag is GSHP Encounter Claim (`1`), '
                              'GSHP Referral In-Plan Capitated (`2`), '
                              'GSHP Capitated Claim (`5`), '
                              'GSHP Referral Inpatient (`6`), '
                              'GSHP PCM Capitated Claim (`7`), '
                              'GSHP Referral In-Plan Non-Capitated (`8`), '
                              'or GSHP In-Plan Non-Capitated (`9`)')
            },
            {
                'cos_code': '37',
                'cos_desc': 'Managed Care',
                'conditions': ('Provider Type is HMO/Managed Care (`37`) '
                              'OR Media Code is Encounters Fee for Service (`7`)')
            },
            {
                'cos_code': '60',
                'cos_desc': 'Laboratory',
                'conditions': ('Procedure Code first 4 characters are numeric (`0000` through `9999`) '
                              'AND last character is alphabetic (U or M) AND claim is NOT Claim Type '
                              'Outpatient Hospital (`03`) AND NOT Medicare Part A Outpatient Hospital '
                              'Crossover (14/03)')
            }
        ]

        for rule in override_rules:
            f.write(f"**Rule {rule_number:03d}** - Modified COS is assigned {rule['cos_desc']} "
                   f"(`{rule['cos_code']}`) when {rule['conditions']}.\n\n")
            rule_number += 1

        # Add COSMATRX Rules (004-112)
        for rule in cosmatrx_rules:
            conditions = rule['conditions']

            # Add claim type descriptions
            conditions = add_claim_type_descriptions(conditions)

            # Add Medicare crossovers
            conditions = add_medicare_crossovers(conditions, rule['cos_code'])

            # Add conditional exclusions for procedure-based rules
            conditions = add_conditional_exclusions(conditions)

            # Remove trailing period if exists (we'll add it back)
            conditions = conditions.rstrip('.')

            f.write(f"**Rule {rule_number:03d}** - Modified COS is assigned {rule['cos_desc']} "
                   f"(`{rule['cos_code']}`) when {conditions}.\n\n")
            rule_number += 1

        # Add NJ2BE067 Fallback Rules (113-114)
        fallback_rules = [
            {
                'cos_code': '08C',
                'cos_desc': 'Other Clinic',
                'conditions': ('no COSMATRX match is found AND Claim Type is '
                              'Independent Clinic (`18`) OR Medicare Part B Independent Clinic '
                              'Crossover (15/18)')
            },
            {
                'cos_code': '99',
                'cos_desc': 'Other',
                'conditions': ('no COSMATRX match is found and the claim does not qualify '
                              'for COS Other Clinic (`08C`)')
            }
        ]

        for rule in fallback_rules:
            f.write(f"**Rule {rule_number:03d}** - Modified COS is assigned {rule['cos_desc']} "
                   f"(`{rule['cos_code']}`) when {rule['conditions']}.\n\n")
            rule_number += 1


def main():
    """Main function to generate the consolidated rules report."""
    nj2be067_file = Path('cobol/NJ2BE067-rules-extracted.md')
    cosmatrx_file = Path('copybook/COSMATRX-integrated-report.md')
    output_file = Path('cobol/NJ2BE067-CONSOLIDATED-RULES.md')

    print(f"Reading NJ2BE067 rules from {nj2be067_file}...")
    if not nj2be067_file.exists():
        print(f"ERROR: {nj2be067_file} not found!")
        print("Please run extract_nj2be067_rules.py first to generate this file.")
        sys.exit(1)

    nj2be067_content = read_file(nj2be067_file)

    print(f"Reading COSMATRX rules from {cosmatrx_file}...")
    if not cosmatrx_file.exists():
        print(f"ERROR: {cosmatrx_file} not found!")
        print("Please ensure COSMATRX-integrated-report.md exists in the copybook/ directory.")
        sys.exit(1)

    cosmatrx_content = read_file(cosmatrx_file)

    print(f"Parsing COSMATRX rules...")
    cosmatrx_rules = parse_cosmatrx_rules(cosmatrx_content)
    print(f"Found {len(cosmatrx_rules)} COSMATRX rules")

    # Debug: Print first few rule numbers to verify parsing
    if len(cosmatrx_rules) > 0:
        print(f"First 5 COSMATRX rules parsed:")
        for i, rule in enumerate(cosmatrx_rules[:5]):
            print(f"  COSMATRX Rule {rule['number']}: {rule['cos_desc']} ({rule['cos_code']})")
        if len(cosmatrx_rules) >= 15:
            print(f"Rules 11-15:")
            for i in range(10, min(15, len(cosmatrx_rules))):
                rule = cosmatrx_rules[i]
                print(f"  COSMATRX Rule {rule['number']}: {rule['cos_desc']} ({rule['cos_code']})")

    print(f"Generating consolidated report: {output_file}...")
    generate_consolidated_report(nj2be067_content, cosmatrx_rules, output_file)

    print(f"\nSUCCESS: Consolidated business rules written to {output_file}")
    print(f"  - Override rules: 3 (Rules 001-003)")
    print(f"  - COSMATRX rules: {len(cosmatrx_rules)} (Rules 004-{3 + len(cosmatrx_rules):03d})")
    print(f"  - Fallback rules: 2 (Rules {3 + len(cosmatrx_rules) + 1:03d}-{3 + len(cosmatrx_rules) + 2:03d})")
    print(f"  - Total rules: {3 + len(cosmatrx_rules) + 2}")
    print(f"\nMapping examples:")
    print(f"  - Consolidated Rule 004 = COSMATRX Rule 001")
    print(f"  - Consolidated Rule 014 = COSMATRX Rule 011")
    print(f"  - Consolidated Rule {3 + len(cosmatrx_rules):03d} = COSMATRX Rule {len(cosmatrx_rules):03d}")
    print(f"\nOutput format: Natural language (matching COSMATRX-integrated-report.md)")

    # Exit cleanly
    sys.exit(0)


if __name__ == '__main__':
    main()
