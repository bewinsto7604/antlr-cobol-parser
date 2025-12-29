# COBOL Program Business Rule Extraction - Reusable Framework

## Overview

This framework extracts enhanced business rules from **any COBOL program** that uses **any base copybook rules**. It's designed to be completely reusable across different programs and copybooks.

## Architecture

```
┌─────────────────────┐
│ Base Copybook       │
│ (e.g., COSMATRX.cpy)│
└──────────┬──────────┘
           │
           │ 1. Parse with integrated-parser.js
           ↓
┌─────────────────────────────────┐
│ Base Rules Report (markdown)    │
│ COSMATRX-integrated-report.md   │
│ - Rule 001: COS code 01A when...│
│ - Rule 002: COS code 01B when...│
│ - ... (109 rules total)         │
└──────────┬──────────────────────┘
           │
           │ 2. Used as reference by
           ↓
┌─────────────────────┐      ┌────────────────────────┐
│ COBOL Program       │──────│ program-rule-extractor │
│ (e.g., NJ2BE067.cbl)│      │ Analyzes program logic │
└─────────────────────┘      │ Cross-refs base rules  │
                             └─────────┬──────────────┘
                                       │
                                       │ 3. Generates LLM prompt
                                       ↓
                             ┌─────────────────────────┐
                             │ LLM Prompt with:        │
                             │ - Full COBOL source     │
                             │ - Full base rules       │
                             │ - Groundtruth rules     │
                             │ - Output format         │
                             └─────────┬───────────────┘
                                       │
                                       │ 4. Send to Claude/GPT-4
                                       ↓
                             ┌─────────────────────────┐
                             │ Enhanced Rules Report   │
                             │ NJ2BE067-business-rules │
                             │ - Override rules        │
                             │ - Modified base rules   │
                             │ - Cross-references      │
                             │ - Evidence citations    │
                             └─────────────────────────┘
```

## Step-by-Step Workflow

### Step 1: Parse Base Copybook

Parse the base copybook (e.g., COSMATRX.cpy) to extract base business rules:

```bash
node src/integrated-parser.js copybook/COSMATRX.cpy
```

**Output:**
- `copybook/COSMATRX-integrated-report.md` - Natural language rules
- `copybook/COSMATRX-integrated.json` - Structured data

**Example Base Rule:**
```markdown
**Rule 015** - COS code 08A (COMM HLTH CLINIC) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA`.
```

### Step 2: Generate LLM Prompt for Program Analysis

Analyze the COBOL program against base rules:

```bash
node src/program-rule-extractor.js cobol/NJ2BE067.cbl copybook/COSMATRX-integrated-report.md
```

**Output:**
- `cobol/NJ2BE067-llm-prompt.txt` - LLM prompt with full context

**What's in the Prompt:**
1. **Full COBOL source** (581 lines) - Source of truth
2. **Full base rules report** (109 rules) - Reference/lookup table
3. **Structure analysis** - Hints where to look (override rules, conditionals)
4. **Groundtruth requirements** - Mandatory citation rules
5. **Output format** - Matching COSMATRX report style

### Step 3: Send Prompt to LLM

Copy the prompt file and send to Claude/GPT-4:

```bash
# View the prompt
cat cobol/NJ2BE067-llm-prompt.txt

# Or open in editor
notepad cobol/NJ2BE067-llm-prompt.txt
```

Paste entire prompt (72,344 characters) into Claude chat.

### Step 4: Save LLM Output

Save the LLM's response as:

```
cobol/NJ2BE067-business-rules.md
```

## How the LLM Works

### Workflow Inside LLM:

1. **Read COBOL program systematically** (line by line)
2. **Identify override rules** (bypass base rules entirely)
   - Example: Lines 77-79 → COS 94 for GSHP-related claims
3. **Identify conditional modifications** (add conditions to base rules)
   - Example: Line 334 → Exclude inpatient/home health/lab procedures
4. **Cross-reference base rules** (lookup in COSMATRX report)
   - Example: "This modifies COSMATRX Rule 015 (08A base rule)"
5. **Generate enhanced rules** with evidence

### Example LLM Output:

```markdown
**Rule 001** - COS code 94 (GSHP) is assigned when GSHP-RELATED flag is `1`, `2`, `5`, `6`, `7`, `8`, or `9`.

**Evidence:** [Line 77-79]
```cobol
IF A-CLM-GSHP-RELATED = '1' OR '2' OR '5' OR '6' OR
                        '7' OR '8' OR '9'
   MOVE '94' TO A-MODIFIED-COS
   GO TO 1000-EXIT
```

**Cross-Reference:** Overrides COSMATRX Rule 106 (GSHP base rule)

**Type:** Override Rule

---

**Rule 015** - COS code 08A (COMM HLTH CLINIC) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA` and claim is NOT inpatient, home health, or outpatient lab procedure.

**Evidence:** [Line 328-337]
```cobol
3040-PROCEDURE-CODE.
   IF NOT ((A-INPATIENT OR A-HOME-HEALTH OR
            (A-MCARE-PARTA AND TT-A-INPATIENT)) OR
           ((A-OUTPATIENT OR
             (A-MCARE-PARTA AND TT-A-OUTPATIENT)) AND
            NOT (OUTPATIENT-LAB-PROC)))
      MOVE A-PROC-CDE TO W-VALUE
      PERFORM 4000-EXECUTE-TEST
```

**Cross-Reference:** Modifies COSMATRX Rule 015 (base 08A rule) by excluding inpatient, home health, and outpatient lab procedures

**Type:** Modified Rule
```

## Groundtruth Mechanisms (Anti-Hallucination)

The framework prevents LLM hallucination through:

### 1. **Full Source Code Provided**
- LLM can only work with actual code
- Cannot guess or make up logic

### 2. **Mandatory Line Number Citations**
Format: `[Line 77-79]`
- LLM must cite exact locations
- Verifiable against source

### 3. **Mandatory Code Quotes**
```cobol
[actual COBOL code from program]
```
- LLM must quote real code
- Cannot paraphrase or summarize

### 4. **Cross-Reference Requirements**
"Modifies COSMATRX Rule 015..."
- LLM must link to base rules
- Uses provided rule numbers (001-109)

### 5. **Explicit Prohibitions**
- "Never infer logic not in code"
- "If unclear, state: Logic unclear - needs manual review"

## Reusability for Other Programs

### Example 1: Different Program, Same Copybook

```bash
# Parse different program using same COSMATRX rules
node src/program-rule-extractor.js cobol/NJ2BE068.cbl copybook/COSMATRX-integrated-report.md
```

### Example 2: Different Program, Different Copybook

```bash
# Step 1: Parse new copybook
node src/integrated-parser.js copybook/PROVIDER-RULES.cpy

# Step 2: Analyze program against new base rules
node src/program-rule-extractor.js cobol/PROVIDER-ASSIGN.cbl copybook/PROVIDER-RULES-integrated-report.md
```

### Example 3: Analyze Multiple Programs

```bash
# Batch process all programs
for program in cobol/*.cbl; do
  basename=$(basename "$program" .cbl)
  node src/program-rule-extractor.js "$program" copybook/COSMATRX-integrated-report.md
  echo "Generated: cobol/${basename}-llm-prompt.txt"
done
```

## Framework Components

### 1. `src/integrated-parser.js`
**Purpose:** Parse copybooks to extract base rules
**Input:** Copybook file (e.g., COSMATRX.cpy)
**Output:** Markdown report with natural language rules
**Reusable:** Works with any COBOL copybook

### 2. `src/program-rule-extractor.js`
**Purpose:** Generate LLM prompt for program analysis
**Input:**
- COBOL program file
- Base rules report (markdown)
**Output:** LLM prompt with full context and groundtruth requirements
**Reusable:** Works with any COBOL program + any base rules

### 3. LLM (Claude/GPT-4)
**Purpose:** Extract and document business rules
**Input:** Generated prompt
**Output:** Enhanced rules report with citations
**Reusable:** Same prompt format for all programs

## Benefits of This Approach

### ✅ **Reusable**
- Works with any COBOL program
- Works with any base copybook
- Same workflow for all analyses

### ✅ **Accurate**
- Full source code prevents hallucination
- Mandatory citations ensure verifiability
- Cross-references link to base rules

### ✅ **Traceable**
- Every rule has line number evidence
- Every rule cites actual COBOL code
- Clear override/modification/default classification

### ✅ **Maintainable**
- Consistent format across all reports
- Easy to compare program variations
- Easy to update when code changes

## File Naming Convention

```
Base Copybook:
  copybook/COSMATRX.cpy
  → copybook/COSMATRX-integrated-report.md  (base rules)
  → copybook/COSMATRX-integrated.json       (structured data)

COBOL Program:
  cobol/NJ2BE067.cbl
  → cobol/NJ2BE067-llm-prompt.txt           (LLM input)
  → cobol/NJ2BE067-business-rules.md        (LLM output)
```

## Validation

After LLM generates the report, validate:

1. **All rules have line number citations** - `grep "Evidence:" output.md`
2. **All rules have code quotes** - Look for ```cobol blocks
3. **All rules have cross-references** - Check for "COSMATRX Rule XXX"
4. **All cited lines exist** - Verify line numbers against source
5. **Quoted code matches source** - Compare code blocks to actual program

## Future Enhancements

- [ ] Add DED.docx parser for code descriptions
- [ ] Add PDF parser for Quick Reference Guide
- [ ] Create validation script for LLM output
- [ ] Add API integration for automated LLM calls
- [ ] Support batch processing of multiple programs
- [ ] Generate comparison reports across program versions

---

**Framework Version:** 1.0
**Last Updated:** 2024-12-25
**Status:** Production Ready ✅
