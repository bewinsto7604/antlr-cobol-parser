# How to Run and Check Output

## Quick Start

### 1. Run the Parser

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy
```

### 2. Check if ANTLR is Running

**Look for this in the first 10 lines:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
```

**And you'll see grammar errors (proof of ANTLR):**
```
line 1:72 extraneous input '00180014' expecting...
line 2:57 mismatched input '57' expecting...
```

### 3. Check the Results

**At the end, you'll see:**
```
📊 PARSING COMPLETE
============================================================
Type: COS_MATRIX  (or STANDARD_COPYBOOK)

✅ Report saved to: copybook/COSMATRX-integrated-report.md
✅ JSON saved to: copybook/COSMATRX-integrated.json
```

### 4. View the Report

```bash
type copybook\COSMATRX-integrated-report.md
```

Or open in notepad:
```bash
notepad copybook\COSMATRX-integrated-report.md
```

---

## Step-by-Step Commands

### Run Parser and See Status Only

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | head -15
```

**Expected output:**
```
🚀 Integrated COBOL + COS Matrix Parser
============================================================
File: copybook/COSMATRX.cpy

🔍 Step 1: Parsing COBOL structure...
============================================================
✅ ANTLR Parser: AVAILABLE (using generated parser)  ← Check this!
line 1:72 extraneous input '00180014' expecting...    ← ANTLR proof
line 2:57 mismatched input '57' expecting...          ← ANTLR proof
✅ Found 393 fields
✅ Found 14 88-level conditions
✅ Found 2 REDEFINES
✅ Found 379 VALUE clauses
```

### Check Summary Only

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep -A 10 "PARSING COMPLETE"
```

**Expected output:**
```
📊 PARSING COMPLETE
============================================================
Type: STANDARD_COPYBOOK

📝 Generating markdown report...
✅ Report saved to: copybook/COSMATRX-integrated-report.md

✅ JSON saved to: copybook/COSMATRX-integrated.json
```

### View Just ANTLR Status

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep "Parser:"
```

**Output:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
```

---

## Output Files

After running, you'll have these files:

### 1. Markdown Report
**File:** `copybook/COSMATRX-integrated-report.md`

**View it:**
```bash
type copybook\COSMATRX-integrated-report.md | more
```

**Contains:**
- COBOL structure analysis
- Field list
- 88-level conditions
- REDEFINES
- COS business rules (if detected)

### 2. JSON Output
**File:** `copybook/COSMATRX-integrated.json`

**View it:**
```bash
type copybook\COSMATRX-integrated.json | more
```

**Contains:**
- All parsed data in JSON format
- Easy to process programmatically

---

## What to Look For

### ✅ ANTLR is Working:
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
line X:Y mismatched input...
line X:Y extraneous input...
✅ Found 393 fields
```

### ❌ ANTLR Not Working (Regex Fallback):
```
⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)
✅ Found 396 fields  (different count)
```

---

## Common Commands

### Parse Different Files

```bash
# Parse sample copybook
node src/integrated-parser.js examples/sample-copybook.cbl

# Parse specific COS matrix
node src/cos-matrix-parser.js copybook/COSMATRX.cpy

# Parse with ANTLR directly
node src/antlr-parser.js examples/sample-copybook.cbl
```

### Check Output Files

```bash
# List generated reports
dir copybook\*.md

# List JSON files
dir copybook\*.json

# View latest report
type copybook\COSMATRX-integrated-report.md | more
```

### Quick Verification

```bash
# One command to check everything
cd antlr-cobol-parser && ./QUICK-ANTLR-CHECK.sh
```

---

## Understanding the Output

### Phase 1: COBOL Structure Parsing
```
🔍 Step 1: Parsing COBOL structure...
============================================================
✅ ANTLR Parser: AVAILABLE (using generated parser)
✅ Found 393 fields
✅ Found 14 88-level conditions
✅ Found 2 REDEFINES
✅ Found 379 VALUE clauses
```

### Phase 2: COS Rules (if applicable)
```
🎯 Detected COS Matrix copybook!
🔍 Step 2: Decoding COS assignment rules...
============================================================
✅ Found 19 COS categories
✅ Found 232 assignment rules
```

### Final Output
```
📊 PARSING COMPLETE
============================================================
Type: COS_MATRIX

📝 Generating markdown report...
✅ Report saved to: copybook/COSMATRX-integrated-report.md
✅ JSON saved to: copybook/COSMATRX-integrated.json
```

---

## Troubleshooting

### Parser runs but no output?

Check if files were created:
```bash
dir copybook\*integrated*
```

### Want to see full output?

Remove the `head` command:
```bash
node src/integrated-parser.js copybook/COSMATRX.cpy
```

### Output too long?

Redirect to file:
```bash
node src/integrated-parser.js copybook/COSMATRX.cpy > output.txt 2>&1
notepad output.txt
```

---

## Complete Example Session

```bash
# 1. Go to project
cd C:\Users\samue\antlr-cobol-parser

# 2. Run parser
node src/integrated-parser.js copybook/COSMATRX.cpy

# 3. Check ANTLR status (look for "AVAILABLE")
# (You'll see it in the output above)

# 4. View the report
type copybook\COSMATRX-integrated-report.md | more

# 5. Check JSON output
type copybook\COSMATRX-integrated.json | more

# 6. Verify ANTLR with script
./QUICK-ANTLR-CHECK.sh
```

---

## Summary

**To run:**
```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy
```

**To check ANTLR is working:**
Look for: `✅ ANTLR Parser: AVAILABLE (using generated parser)`

**To view results:**
```bash
type copybook\COSMATRX-integrated-report.md
```

**That's it!** ✅
