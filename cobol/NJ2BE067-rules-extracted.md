# NJ2BE067 Business Rules Report

**Rule 001** - Garden State Health Plan - GSHP (94) is assigned when GSHP-RELATED flag is GSHP Encounter Claim (`1`), GSHP Referral In-Plan Capitated (`2`), GSHP Capitated Claim (`5`), GSHP Referral Inpatient (`6`), GSHP PCM Capitated Claim (`7`), GSHP Referral In-Plan Non-Capitated (`8`), GSHP In-Plan Non-Capitated (`9`).

**Rule 002** - Managed Care (37) is assigned when Provider Type is HMO/Managed Care (`37`) OR Media Code is Encounters Fee for Service (`7`).

**Rule 003** - Laboratory (60) is assigned when Procedure Code first 4 characters are numeric (`0000` through `9999`) AND last character is alphabetic (U or M) AND claim is NOT Claim Type Outpatient Hospital (`03`) AND NOT Medicare Part A Outpatient Hospital Crossover (14/03).

**COSMATRX Traversal** - After checking the above override rules, NJ2BE067 calls the COSMATRX matrix (Lines 95-115) to evaluate all 109 base COSMATRX rules. The program performs matrix traversal by:

1. Evaluating claim data against matrix conditions (Claim Type, Provider Type, Provider Specialty, Procedure Codes, etc.)
2. Applying conditional exclusions for procedure-based rules (excludes Inpatient, Home Health, and Outpatient Lab procedures)
3. Handling Medicare Part A (14/XX) and Part B (15/XX) crossovers by substituting actual Medicare claim types
4. Returning the matched COS code or HIGH-VALUES if no match found

**Note**: All 109 COSMATRX base rules are called via matrix traversal. See COSMATRX-integrated-report.md for the complete list of base rules.

**Rule 004** - Other Clinic (08C) is assigned when no COSMATRX match is found AND Claim Type is Independent Clinic (`18`) OR Medicare Part B Independent Clinic Crossover (15/18).

**Rule 005** - Default/Other (99) is assigned when no COSMATRX match is found and the claim does not qualify for Other Clinic (08C).

---

## Processing Flow

1. **Override Rules (001-003)**: Check GSHP, Managed Care, Lab format procedures
   - If matched: Assign COS code and EXIT

2. **COSMATRX Traversal**: Call COSMATRX matrix to evaluate 109 base rules
   - Apply conditional exclusions for procedure-based rules
   - Handle Medicare crossovers (14/XX, 15/XX)
   - Return matched COS code or no match

3. **Fallback Rules (004-005)**: Apply defaults when no COSMATRX match
   - COS 08C for Claim Type 18
   - COS 99 for all others

---

## Medicare Crossover Handling

NJ2BE067 handles Medicare crossover claims by substituting the actual Medicare claim type (Lines 240-252):

- **Part A (Claim Type 14)**: Substitutes TT-A-MCARE-CLM-TYPE values (01, 02, 03)
- **Part B (Claim Type 15)**: Substitutes TT-B-MCARE-CLM-TYPE values (04, 05, 07-10, 16-19, 21-23)

Example: A claim with Claim Type 15 and TT-B-MCARE-CLM-TYPE = 18 is evaluated as Claim Type 18 (Independent Clinic) for COSMATRX rules.

---

## Conditional Exclusions

Procedure-based COSMATRX rules (PROCEDURE-CODE, PROCEDURE-AND-MODS, PROCEDURE-MOD-ONLY) are excluded when (Lines 330-376):

- Claim Type is `01` (Inpatient Hospital) OR
- Claim Type is `06` (Home Health) OR
- Medicare Part A Inpatient Hospital Crossover (14/01) OR
- Outpatient Lab Procedure flag is set

---

## Summary

- **Override Rules**: 3 (Rules 001-003)
- **COSMATRX Base Rules Called**: 109 (via matrix traversal)
- **Fallback Rules**: 2 (Rules 004-005)
- **Total NJ2BE067-Specific Rules**: 5
- **Total Rules Including COSMATRX**: 114

