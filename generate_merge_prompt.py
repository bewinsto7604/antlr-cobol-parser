#!/usr/bin/env python3
"""
Script to generate a prompt that merges NJ2BE067 rules with COSMATRX base rules.
The generated prompt produces natural language business rules matching COSMATRX-integrated-report.md format.
"""

import sys
from pathlib import Path


def read_file(filepath):
    """Read a markdown file and return its contents."""
    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        return f.read()


def generate_merge_prompt(nj2be067_content, cosmatrx_content, output_file):
    """
    Generate a prompt that produces natural language business rules.
    """
    prompt = f"""# Task: Generate Consolidated Business Rules Report in Natural Language

You are a business analyst expert in healthcare Medicaid systems. Your task is to create a **comprehensive, consolidated business rules report** in natural language format that combines:

1. **NJ2BE067.cbl override and fallback rules** (5 rules)
2. **COSMATRX base rules** (109 rules)

The final output should match the format of COSMATRX-integrated-report.md - simple, clean natural language rules.

---

## Input 1: NJ2BE067 Rules Extraction

{nj2be067_content}

---

## Input 2: COSMATRX Base Rules (109 Rules)

{cosmatrx_content}

---

## Output Format Requirements

### CRITICAL: Use Simple Natural Language Format

Match the format of COSMATRX-integrated-report.md EXACTLY:

```markdown
**Rule XXX** - COS code `YY` (Description) is assigned when [natural language conditions].
```

**DO NOT include**:
- Evidence sections
- Cross-reference sections
- Type sections
- COBOL code blocks
- Source attribution

**DO include**:
- Rule number (sequential)
- COS code with description
- Natural language conditions with inline code descriptions

### Format Examples

**GOOD** (Simple natural language):
```markdown
**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1` (GSHP Encounter Claim), `2` (GSHP Referral In-Plan Capitated), `5` (GSHP Capitated Claim), `6` (GSHP Referral Inpatient), `7` (GSHP PCM Capitated Claim), `8` (GSHP Referral In-Plan Non-Capitated), or `9` (GSHP In-Plan Non-Capitated).

**Rule 002** - COS code `37` (Managed Care) is assigned when Provider Type is `37` (HMO/Managed Care) OR Media Code is `7` (Encounters Fee for Service).

**Rule 003** - COS code `01A` (INPAT GENL HOSP) is assigned when Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `60` (General Hospital).
```

**BAD** (Too complex):
```markdown
**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1`, `2`, `5`, `6`, `7`, `8`, or `9`.

**Evidence**: [Line 77-80]
```cobol
IF A-CLM-GSHP-RELATED = '1' OR '2'...
```

**Cross-Reference**: Overrides COSMATRX Rule 106

**Type**: Override Rule
```

---

## Rule Numbering

Number rules sequentially starting from 001:

- **Rules 001-003**: NJ2BE067 Override Rules (GSHP, Managed Care, Lab format)
- **Rules 004-112**: COSMATRX Base Rules (109 rules, with Medicare crossover variations)
- **Rules 113-114**: NJ2BE067 Fallback Rules (08C for Claim Type 18, 99 for others)

**Total: 114 rules**

---

## Key Guidelines

### 1. Inline Code Descriptions

ALWAYS include descriptions inline with code values:
- **CORRECT**: Claim Type is `01` (Inpatient Hospital)
- **WRONG**: Claim Type is `01`

- **CORRECT**: GSHP-RELATED flag is `1` (GSHP Encounter Claim), `2` (GSHP Referral In-Plan Capitated)
- **WRONG**: GSHP-RELATED flag is `1`, `2`

### 2. Medicare Crossovers

Include Medicare crossover variations inline with OR:
- **CORRECT**: Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01)
- **CORRECT**: Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18)

### 3. List ALL Codes Explicitly

NEVER generalize - list every code:
- **CORRECT**: Provider Specialty is `819`, `822`, `824`
- **WRONG**: Provider Specialty includes specific values

- **CORRECT**: Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018`
- **WRONG**: Procedure Code includes specific mental health codes

### 4. Conditional Exclusions

For procedure-based COSMATRX rules that have conditional exclusions (from NJ2BE067 lines 330-376), append:
```
and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure
```

Example:
```markdown
**Rule 015** - COS code `08A` (COMM HLTH CLINIC) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.
```

### 5. Code Descriptions

Use descriptions from the NJ2BE067 extraction for:
- GSHP codes (1-9)
- Claim Types (01-23)
- Provider Types (20, 24, 25, etc.)
- Media Codes (0-8)

For COSMATRX rules, preserve existing code descriptions where available.

---

## Output Structure

```markdown
# NJ2BE067 + COSMATRX Consolidated Business Rules Report

**Rule 001** - [Override rule 1]

**Rule 002** - [Override rule 2]

**Rule 003** - [Override rule 3]

**Rule 004** - [COSMATRX rule 1 with Medicare crossovers and conditional exclusions]

**Rule 005** - [COSMATRX rule 2 with Medicare crossovers and conditional exclusions]

...

**Rule 112** - [COSMATRX rule 109]

**Rule 113** - [Fallback rule 1]

**Rule 114** - [Fallback rule 2]
```

---

## Processing Instructions

1. **Start with Override Rules (001-003)**: Copy from NJ2BE067 extraction, ensuring GSHP codes have inline descriptions

2. **Add COSMATRX Rules (004-112)**: For each of the 109 COSMATRX rules:
   - Include Medicare crossover variations with OR
   - Add conditional exclusions for procedure-based rules
   - Preserve all code descriptions
   - List ALL codes explicitly (no generalizations)

3. **End with Fallback Rules (113-114)**: Copy from NJ2BE067 extraction

4. **Use simple format**: One-line rule statements only, no evidence/cross-reference/type sections

---

## Begin Report Generation

Generate the consolidated business rules report following the format above. Output ONLY the markdown report, starting with:

```markdown
# NJ2BE067 + COSMATRX Consolidated Business Rules Report

**Rule 001** - COS code `94`...
```

Do not include any explanatory text before or after the report. Just the rules in natural language format.
"""

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(prompt)

    return prompt


def main():
    """Main function to generate the merge prompt."""
    nj2be067_file = Path('cobol/NJ2BE067-rules-extracted.md')
    cosmatrx_file = Path('copybook/COSMATRX-integrated-report.md')
    output_file = Path('cobol/MERGE-PROMPT.txt')

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

    print(f"Generating merge prompt: {output_file}...")
    prompt = generate_merge_prompt(nj2be067_content, cosmatrx_content, output_file)

    print(f"\nSUCCESS: Generated merge prompt: {output_file}")
    print(f"\nNext steps:")
    print(f"1. Copy the contents of {output_file}")
    print(f"2. Paste into your LLM (Claude, ChatGPT, etc.)")
    print(f"3. The LLM will generate natural language business rules")
    print(f"4. Save the output as: cobol/NJ2BE067-CONSOLIDATED-RULES.md")
    print(f"\nThe output will be in simple natural language format:")
    print(f"  **Rule XXX** - COS code `YY` (Description) is assigned when [conditions].")

    # Exit cleanly
    sys.exit(0)


if __name__ == '__main__':
    main()
