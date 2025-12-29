# Business Rule Extraction - Feedback Log

## Feedback #1 - 2024-12-25

### Issue: Missing Inline Code Descriptions

**Problem:**
- Code descriptions are placed in separate "Code Description:" sections instead of being embedded inline within the rule text
- Individual code values (e.g., GSHP-RELATED flags 1, 2, 5, 6, 7, 8, 9) lack descriptions even when available in reference materials

**Example of Current (Incorrect) Format:**
```markdown
**Rule 001** - COS code `94` (GSHP) is assigned when GSHP-RELATED flag is `1`, `2`, `5`, `6`, `7`, `8`, or `9`.

**Code Description:** Per 2025 Quick Guide, COS code 94 identifies Garden State Health Plan (GSHP) claims.
```

**Expected Format:**
```markdown
**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1` (description if available), `2` (description if available), `5` (description if available), `6` (description if available), `7` (description if available), `8` (description if available), or `9` (description if available).
```

**Action Items:**
1. ✅ Update prompt template in program-rule-extractor.js to include inline description requirements
2. ✅ Add specific examples showing inline vs separate descriptions
3. ✅ Add instruction to look up EVERY code value in reference materials
4. ✅ Document feedback loop process in FEEDBACK-LOOP-GUIDE.md

**Resolution:**
Framework updated with enhanced prompt instructions in program-rule-extractor.js:
- Added critical requirement #4 with explicit inline description instructions
- Updated format examples to show correct inline descriptions
- Added guideline #3 prohibiting separate "Code Description:" sections
- Added guideline #8 requiring lookup of EVERY code in reference materials

Next run will automatically apply these improvements.

---

## Feedback #2 - 2024-12-25

### Issue: Formatting - Remove Source Attributions

**Problem:**
Inline descriptions included source attributions like "per ZCLMACTU", "per 2025 Quick Guide", "per DED" which make the text verbose and harder to read.

**Example of Current (Incorrect) Format:**
```markdown
`1` (GSHP Encounter Claim per ZCLMACTU)
`37` (HMO/Managed Care per 2025 Quick Guide)
`7` (description not in reference materials)
```

**Expected Format:**
```markdown
`1` (GSHP Encounter Claim)
`37` (HMO/Managed Care)
`7`
```

**Action Items:**
- [x] Remove "per ZCLMACTU", "per 2025 Quick Guide", "per DED" from all inline descriptions
- [x] Remove "(description not in reference materials)" entirely
- [ ] Update framework prompt to not include source attributions
- [ ] Update examples in prompt template

**Resolution:**
Applied to NJ2BE067-business-rules.md using replace_all. Framework needs update for future runs.

---

## Feedback #3 - 2024-12-25

### Issue: Missing Data Element Descriptions from Copybooks

**Problem:**
Code value descriptions were marked as "(description not in reference materials)" when they actually existed in the COBOL copybooks as 88-level condition names. The framework was only checking DED.txt and PDF, but not the copybooks themselves.

**Example:**
GSHP-RELATED flag values (1, 2, 5, 6, 7, 8, 9) were marked as "description not in reference materials" when ZCLMACTU.cpy copybook contains:
```cobol
88 :CLM:A-GSHP-ENCOUNTER-CLAIM    VALUE '1'.
88 :CLM:A-GSHP-REF-INPLAN-CAP     VALUE '2'.
88 :CLM:A-GSHP-CAP-CLAIM          VALUE '5'.
...
```

**Expected Behavior:**
- Framework should check copybooks (ZCLMACTU.cpy, etc.) for 88-level condition names
- These condition names are excellent sources for data element value descriptions
- Example: `88 A-GSHP-ENCOUNTER-CLAIM VALUE '1'` means value `1` = "GSHP Encounter Claim"

**Action Items:**
- [ ] Update framework to include ZCLMACTU copybook parsing
- [ ] Extract 88-level condition names as descriptions for data element values
- [ ] Add ZCLMACTU to reference materials in prompt
- [ ] Update instructions to check copybooks for data element descriptions

**Resolution:**
Manual update applied to NJ2BE067-business-rules.md for this run. Framework enhancement needed for future runs.

**Lesson Learned:**
COBOL copybooks with 88-level condition names are valuable sources of domain knowledge and should be parsed alongside DED and PDF reference materials.

---

## Feedback #4 - 2024-12-26

### Issue: Medicare Crossover Precision and COS 81A/81B/81C Documentation

**Problem:**
1. Medicare crossover descriptions were verbose and hard to read
2. Medicare crossovers were incorrectly applied to invalid claim types (e.g., Claim Type 13)
3. Valid Medicare claim types were not verified against ZCLMACTU.cpy copybook
4. COS codes 81A, 81B, 81C were only mentioned in summary list, not documented as individual rules

**Example of Current (Incorrect) Format:**
```markdown
NOT Claim Type `14` (Institutional Cross-Overs) with Medicare Part A claim type `03` (Outpatient Hospital)

OR Claim Type `13` (EPSDT/HealthStart) OR Medicare Part B EPSDT/HealthStart Crossover (15/13)
```

**Expected Format:**
```markdown
NOT Medicare Part A Outpatient Hospital Crossover (14/03)

OR Claim Type `13` (EPSDT/HealthStart)
(No Medicare crossover because 13 is not a valid Medicare claim type)
```

**Action Items:**
- [x] Add Medicare crossover format requirement to prompt (use concise format)
- [x] Add instruction to check ZCLMACTU.cpy for valid Medicare claim types
- [x] Document valid Part A claim types: 01, 02, 03 (Lines 2166-2169)
- [x] Document valid Part B claim types: 04, 05, 07-10, 16-19, 21-23 (Lines 2791-2810)
- [x] Add requirement to document COS codes 81A, 81B, 81C individually
- [x] Update Important Guidelines section with Medicare crossover format

**Resolution:**
Framework updated with new requirement #7 (Medicare Crossover Claims) and requirement #8 (Document Multi-Rule COS Codes Individually) in program-rule-extractor.js lines 161-177. Also added guidelines #9 and #10 to Important Guidelines section (lines 294-295).

Next run will automatically:
- Use concise Medicare crossover format: "Medicare Part A/B [Type] Crossover (XX/YY)"
- Only create crossovers for valid Medicare claim types from ZCLMACTU.cpy
- Document ANY COS code with 3+ COSMATRX rules as individual rules (not just 81A/81B/81C)
- This future-proofs the extraction for new COS codes added to the copybook

**Lesson Learned:**
Use general principles instead of specific lists when possible. A rule like "document COS codes with 3+ rules individually" is more maintainable than listing specific codes, as it automatically adapts when new codes are added to the copybook.

---

## Feedback #5 - 2024-12-26

### Issue: Generalized Code Lists Instead of Explicit Enumeration

**Problem:**
Several rules generalized code lists with vague phrases instead of listing all codes explicitly:
- "with exclusion criteria for specific procedure codes" (Rule 037, 042, 043)
- "includes specific mental health codes" (Rule 044, 045)
- "Procedure Code with exclusions" (Rule 048)

**Example of Current (Incorrect) Format:**
```markdown
**Rule 043** - COS code `16` (Psychologist) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` with exclusion criteria for specific procedure codes.
```

**Expected Format:**
```markdown
**Rule 043** - COS code `16` (Psychologist) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code is NOT `Y7433`, `Y7570`, `VS9122`, or `T1001` and Procedure Code with Modifiers is NOT `S5101`, `S5102`, `S5120`, `S8990`, or `97535` with modifier `ST` and Procedure Code with Modifiers is NOT `H0004`, `S5135`, or `97532` with modifier `ST` and Procedure Modifier Only is NOT `22`.
```

**Action Items:**
- [x] Add new CRITICAL REQUIREMENT #9 "List ALL Codes Explicitly" to framework
- [x] Add comprehensive examples showing CORRECT vs WRONG formats
- [x] Add guideline #11 to Important Guidelines section
- [x] Document feedback in FEEDBACK.md

**Resolution:**
Framework updated with new requirement #9 (Lines 179-198) in program-rule-extractor.js:
- Added explicit prohibition against generalizing code lists
- Provided multiple CORRECT vs WRONG examples
- Emphasized that even 50+ code lists must be fully enumerated
- Added guideline #11 to Important Guidelines section

Next run will automatically list every code value explicitly without generalization.

**Lesson Learned:**
Completeness trumps brevity in business rule documentation. Even verbose code lists (20, 30, 50+ codes) must be fully enumerated to ensure implementers have complete, actionable information without needing to cross-reference other documents.

---

## Feedback Template

### Feedback #[N] - [Date]

**Problem:**
[Description of issue]

**Example:**
[Code example showing the issue]

**Expected Behavior:**
[What should happen instead]

**Action Items:**
- [ ] Item 1
- [ ] Item 2

**Resolution:**
[How it was fixed]
