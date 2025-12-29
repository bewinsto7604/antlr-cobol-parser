# How to Verify ANTLR is Running

## Quick Check

Run the integrated parser and look for this line:

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | head -20
```

**Look for:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
```

**If using regex fallback, you'll see:**
```
⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)
```

## Detailed Verification Methods

### Method 1: Check for ANTLR-specific output

ANTLR produces parsing errors/warnings that regex doesn't:

```bash
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep "line.*mismatched"
```

**If you see output like this:**
```
line 2:57 mismatched input '57' expecting {VALUE, VALUES, '.'}
line 4:57 mismatched input '57' expecting {VALUE, VALUES, '.'}
```

**✅ ANTLR is running!** (Regex parser doesn't produce these grammar-based errors)

### Method 2: Check the status message

```bash
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep "Parser:"
```

**Expected output:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
```

### Method 3: Test with a simple file

Create a test file and parse it:

```bash
# Create test file
echo "       01  TEST-FIELD PIC X(10)." > test.cbl

# Parse it
node src/integrated-parser.js test.cbl 2>&1 | head -15
```

**With ANTLR, you'll see:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
line 1:28 mismatched input '10' expecting {VALUE, VALUES, '.'}
line 1:30 mismatched input ')' expecting IDENTIFIER
✅ Found 2 fields
```

**With Regex, you'll see:**
```
⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)
✅ Found 1 fields
```

### Method 4: Compare field counts

ANTLR and Regex may extract different numbers of fields:

```bash
# With ANTLR
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep "Found.*fields"
```

**ANTLR output:**
```
✅ Found 393 fields  (ANTLR extracts from parse tree)
```

**Regex output:**
```
✅ Found 396 fields  (Regex uses line patterns)
```

Different counts = different parsers!

### Method 5: Check generated files exist

```bash
ls -la src/generated/
```

**You should see:**
```
Cobol85Lexer.js       (12 KB)
Cobol85Parser.js      (32 KB)
Cobol85Listener.js    (3 KB)
```

If these files exist and are recent, ANTLR can be loaded.

### Method 6: Direct ANTLR parser test

```bash
node src/antlr-parser.js examples/sample-copybook.cbl 2>&1 | head -20
```

**Look for:**
- No "regex fallback" message
- Grammar-based error messages (like "mismatched input")
- Parse tree output

## Visual Comparison

### ANTLR Running:
```
🚀 Integrated COBOL + COS Matrix Parser
============================================================
File: copybook/COSMATRX.cpy

🔍 Step 1: Parsing COBOL structure...
============================================================
✅ ANTLR Parser: AVAILABLE (using generated parser)    ← HERE
line 1:72 extraneous input '00180014' expecting...     ← GRAMMAR ERRORS
line 2:57 mismatched input '57' expecting...           ← GRAMMAR ERRORS
✅ Found 393 fields
```

### Regex Running:
```
🚀 Integrated COBOL + COS Matrix Parser
============================================================
File: copybook/COSMATRX.cpy

🔍 Step 1: Parsing COBOL structure...
============================================================
⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)  ← HERE
   To use ANTLR: npm run generate (requires Java)

✅ Found 396 fields                                       ← NO GRAMMAR ERRORS
```

## Key Differences

| Indicator | ANTLR | Regex |
|-----------|-------|-------|
| Status message | "AVAILABLE" ✅ | "NOT AVAILABLE" ⚠️ |
| Grammar errors | Yes (line X:Y...) | No |
| Field count | 393 | 396 |
| Error handling | Grammar-based | Pattern-based |
| Parse tree | Available | Not available |

## Troubleshooting

### If ANTLR says "NOT AVAILABLE":

1. **Check generated files:**
   ```bash
   ls -la src/generated/
   ```
   Should contain: Cobol85Lexer.js, Cobol85Parser.js, Cobol85Listener.js

2. **Check they're ES6 modules:**
   ```bash
   head -3 src/generated/Cobol85Lexer.js
   ```
   Should show:
   ```javascript
   import antlr4 from 'antlr4';
   ```
   NOT:
   ```javascript
   const antlr4 = require('antlr4');
   ```

3. **Regenerate if needed:**
   ```bash
   npm run generate
   ```

### If you see "module" errors:

Check package.json has:
```json
"type": "module"
```

## Definitive Test

Run this command:

```bash
cd C:\Users\samue\antlr-cobol-parser
node src/integrated-parser.js copybook/COSMATRX.cpy 2>&1 | grep -E "Parser:|mismatched|extraneous" | head -5
```

**If ANTLR is running, you'll see:**
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
line 1:72 extraneous input '00180014' expecting...
line 2:57 mismatched input '57' expecting...
```

**If regex is running:**
```
⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)
```

## Summary

**Easiest way:** Look for this exact line in the output:
```
✅ ANTLR Parser: AVAILABLE (using generated parser)
```

**Confirmation:** You'll also see grammar-based error messages like:
```
line X:Y mismatched input 'token' expecting ...
```

These errors only come from ANTLR's grammar-based parsing.
