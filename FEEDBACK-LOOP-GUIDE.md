# Business Rule Extraction - Feedback Loop Guide

## Overview

This guide explains how to incorporate feedback from business rule extraction runs into the framework so improvements are automatically applied in future runs.

## How the Feedback Loop Works

```
┌─────────────────────────────────────────────────────────────┐
│ 1. Run Extraction                                            │
│    node src/program-rule-extractor.js cobol/X.cbl ...       │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 2. Review Output                                             │
│    - Check cobol/X-llm-prompt.txt                           │
│    - Run LLM extraction                                      │
│    - Review generated business rules report                  │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 3. Identify Issues                                           │
│    - Missing information                                     │
│    - Incorrect format                                        │
│    - Hallucinations                                          │
│    - Incomplete descriptions                                 │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 4. Document Feedback                                         │
│    - Add entry to FEEDBACK.md                                │
│    - Include problem description                             │
│    - Provide examples (current vs expected)                  │
│    - List action items                                       │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 5. Update Framework                                          │
│    - Modify src/program-rule-extractor.js                    │
│    - Update generateLLMPrompt() method                       │
│    - Add/enhance instructions                                │
│    - Add/update examples                                     │
│    - Add validation rules                                    │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 6. Test Changes                                              │
│    - Re-run extraction with same inputs                      │
│    - Verify issue is resolved                                │
│    - Check for regressions                                   │
└───────────────────┬─────────────────────────────────────────┘
                    │
                    ↓
┌─────────────────────────────────────────────────────────────┐
│ 7. Update Feedback Log                                       │
│    - Mark action items as complete                           │
│    - Document resolution                                     │
│    - Update FEEDBACK.md                                      │
└─────────────────────────────────────────────────────────────┘
                    │
                    ↓
         ┌──────────────────────┐
         │ Future runs benefit  │
         │ from improvements    │
         └──────────────────────┘
```

## Where to Make Changes

### 1. Prompt Instructions (Most Common)

**File:** `src/program-rule-extractor.js`
**Method:** `generateLLMPrompt(structure)`
**Location:** Lines ~114-135 (CRITICAL GROUNDTRUTH REQUIREMENTS section)

**When to update:**
- LLM is missing information
- LLM is formatting incorrectly
- LLM needs additional requirements
- Need to add prohibitions ("NEVER do X")

**Example:**
```javascript
4. **INLINE descriptions for ALL code values** - CRITICAL REQUIREMENT
   - Look up descriptions in DED/PDF reference materials for EVERY code value
   - Embed descriptions INLINE in the rule text, NOT in separate sections
   - Format: \`code\` (description from reference materials)
```

### 2. Format Examples

**File:** `src/program-rule-extractor.js`
**Method:** `generateLLMPrompt(structure)`
**Location:** Lines ~202-249 (Format Examples section)

**When to update:**
- LLM is not following the correct format
- Need to show specific examples of desired output
- Clarify ambiguous formatting requirements

**Example:**
```javascript
**Rule 001** - COS code \`94\` (Garden State Health Plan - GSHP) is assigned...
// Shows INLINE description format
```

### 3. Guidelines

**File:** `src/program-rule-extractor.js`
**Method:** `generateLLMPrompt(structure)`
**Location:** Lines ~253-264 (Important Guidelines section)

**When to update:**
- Adding new rules LLM must follow
- Emphasizing critical requirements
- Adding prohibitions

**Example:**
```javascript
3. **Code values in backticks with INLINE descriptions**: Use \`value\` (description) for ALL codes
   - NEVER create separate "Code Description:" sections
```

### 4. Structure Analysis (Less Common)

**File:** `src/program-rule-extractor.js`
**Method:** `analyzeStructure()`
**Location:** Lines ~51-103

**When to update:**
- Need to detect new patterns in COBOL code
- Add pre-processing hints for LLM
- Identify additional rule types

### 5. Context Loading (Rare)

**File:** `src/program-rule-extractor.js`
**Method:** `loadContext()`
**Location:** Lines ~22-46

**When to update:**
- Adding new reference file types
- Changing what context is provided to LLM
- Adding validation for input files

## Example: Feedback #1 Implementation

### Problem Identified
Code descriptions were in separate "Code Description:" sections instead of being inline in rule text.

### Changes Made

1. **Updated Critical Requirements** (Line 126-134)
   ```javascript
   4. **INLINE descriptions for ALL code values** - CRITICAL REQUIREMENT
      - Look up descriptions in DED/PDF reference materials for EVERY code value
      - Embed descriptions INLINE in the rule text, NOT in separate sections
      ...
   ```

2. **Updated Format Examples** (Line 204, 219, 233)
   ```javascript
   **Rule 001** - COS code \`94\` (Garden State Health Plan - GSHP) ...
   **Rule 002** - ... Provider Type is \`37\` (HMO/Managed Care) ...
   **Rule 003** - COS code \`08A\` (Community Health Clinic) ...
   ```

3. **Added Prohibition in Guidelines** (Line 257-259)
   ```javascript
   3. **Code values in backticks with INLINE descriptions**: Use \`value\` (description) for ALL codes
      - NEVER create separate "Code Description:" sections
      - Descriptions must be embedded directly in the rule text
   ```

4. **Added Lookup Requirement** (Line 264)
   ```javascript
   8. **Look up EVERY code** in the reference materials (DED.docx and 2025QuickGuide-v2.pdf)
   ```

### Result
Next extraction run will automatically include inline descriptions without needing to manually edit the output.

## Best Practices

### DO:
- ✅ Document feedback immediately after identifying issues
- ✅ Provide concrete examples (current vs expected)
- ✅ Update prompt with explicit, clear instructions
- ✅ Test changes with same inputs to verify fix
- ✅ Use emphatic language: "CRITICAL", "NEVER", "ALWAYS", "MUST"
- ✅ Update both instructions AND examples

### DON'T:
- ❌ Make manual fixes to output files without updating framework
- ❌ Use vague feedback like "make it better"
- ❌ Update only examples without updating instructions
- ❌ Forget to test after making changes
- ❌ Skip documenting in FEEDBACK.md

## Testing Your Changes

After updating the framework, test with the following:

```bash
# 1. Re-run extraction
node src/program-rule-extractor.js cobol/NJ2BE067.cbl copybook/COSMATRX-integrated-report.md

# 2. Review generated prompt
cat cobol/NJ2BE067-llm-prompt.txt | grep -A 10 "CRITICAL GROUNDTRUTH"

# 3. Check format examples
cat cobol/NJ2BE067-llm-prompt.txt | grep -A 20 "Format Examples"

# 4. Verify all changes are present
```

## Feedback Template Usage

When documenting new feedback, copy this template from FEEDBACK.md:

```markdown
## Feedback #[N] - [Date]

### Issue: [Brief Title]

**Problem:**
[Description of issue]

**Example of Current (Incorrect) Format:**
```markdown
[Show actual output with issue]
```

**Expected Format:**
```markdown
[Show desired output]
```

**Action Items:**
- [ ] Update prompt template
- [ ] Add specific examples
- [ ] Test changes
- [ ] Document resolution

**Resolution:**
[How it was fixed - to be filled after implementation]
```

## Version Control

When making framework changes:

```bash
# 1. Commit changes with descriptive message
git add src/program-rule-extractor.js FEEDBACK.md
git commit -m "Feedback #1: Add inline code description requirements"

# 2. Tag release if significant
git tag -a v1.1.0 -m "Added inline description requirements"
```

## Future Enhancements

Potential improvements to the feedback loop:

1. **Automated Validation:** Script to check output against requirements
2. **Regression Tests:** Test suite with known inputs/outputs
3. **Prompt Versioning:** Track prompt changes over time
4. **Quality Metrics:** Measure improvement in output quality
5. **A/B Testing:** Compare different prompt versions

---

**Last Updated:** 2024-12-25
**Framework Version:** 1.1.0
