/**
 * Step 1: Flow Analyzer for NJ2BE067.cbl
 * Extracts program flow, copybooks, override conditions, and algorithm logic
 * Output: NJ2BE067-flow-analysis.md
 */

import fs from 'fs';
import path from 'path';

class FlowAnalyzer {

  constructor() {
    this.cobolContent = null;
    this.lines = [];
  }

  /**
   * Load COBOL program
   */
  loadProgram(cobolPath) {
    console.log('📖 Loading COBOL program...');
    this.cobolContent = fs.readFileSync(cobolPath, 'utf-8');
    this.lines = this.cobolContent.split('\n');
    console.log(`✅ Loaded: ${path.basename(cobolPath)} (${this.lines.length} lines)`);
  }

  /**
   * Extract COPY statements (copybooks used)
   */
  extractCopybooks() {
    const copybooks = [];
    const copyPattern = /^\s+COPY\s+(\S+)/i;

    this.lines.forEach((line, index) => {
      const match = line.match(copyPattern);
      if (match) {
        const copybook = match[1].replace(/\.$/, '');
        copybooks.push({
          lineNumber: index + 1,
          name: copybook,
          statement: line.trim()
        });
      }
    });

    return copybooks;
  }

  /**
   * Extract override conditions (rules that bypass COSMATRX)
   */
  extractOverrides() {
    const overrides = [];

    // Pattern: MOVE 'XX' TO A-MODIFIED-COS
    const overridePattern = /MOVE\s+'(\d{2}[A-Z]?)'\s+TO\s+A-MODIFIED-COS/i;

    // Track context (need to capture IF conditions above the MOVE)
    for (let i = 0; i < this.lines.length; i++) {
      const line = this.lines[i];
      const match = line.match(overridePattern);

      if (match) {
        const cosCode = match[1];

        // Look back up to 10 lines to find the IF condition
        let conditionLines = [];
        let startLine = i;
        for (let j = i - 1; j >= Math.max(0, i - 10); j--) {
          const prevLine = this.lines[j];
          if (prevLine.match(/^\s*IF\s+/i)) {
            startLine = j;
            break;
          }
        }

        // Collect condition lines
        for (let j = startLine; j <= i; j++) {
          conditionLines.push(this.lines[j].trim());
        }

        overrides.push({
          startLine: startLine + 1,
          endLine: i + 1,
          cosCode: cosCode,
          condition: conditionLines.join('\n')
        });
      }
    }

    return overrides;
  }

  /**
   * Extract test type paragraphs (3000-level paragraphs)
   */
  extractTestTypes() {
    const testTypes = [];
    const paragraphPattern = /^\s*(30\d0-[\w-]+)\./i;

    this.lines.forEach((line, index) => {
      const match = line.match(paragraphPattern);
      if (match) {
        const name = match[1];
        testTypes.push({
          lineNumber: index + 1,
          name: name,
          line: line.trim()
        });
      }
    });

    return testTypes;
  }

  /**
   * Extract procedure division entry point
   */
  extractEntryPoint() {
    const procDivPattern = /PROCEDURE\s+DIVISION\s+USING/i;

    for (let i = 0; i < this.lines.length; i++) {
      if (this.lines[i].match(procDivPattern)) {
        // Collect next few lines (parameters)
        const entryLines = [];
        for (let j = i; j < Math.min(i + 5, this.lines.length); j++) {
          entryLines.push(this.lines[j].trim());
          if (this.lines[j].includes('.')) break;
        }
        return {
          lineNumber: i + 1,
          code: entryLines.join('\n')
        };
      }
    }
    return null;
  }

  /**
   * Extract main processing paragraphs
   */
  extractMainParagraphs() {
    const paragraphs = [];
    const mainPattern = /^\s*(0000-START|1000-PROCESS|2000-KEEP-TRYING|3000-TRY-A-TEST|4000-EXECUTE-TEST)\./i;

    this.lines.forEach((line, index) => {
      const match = line.match(mainPattern);
      if (match) {
        paragraphs.push({
          lineNumber: index + 1,
          name: match[1],
          line: line.trim()
        });
      }
    });

    return paragraphs;
  }

  /**
   * Generate markdown report
   */
  generateReport(cobolPath) {
    console.log('\n📝 Analyzing program structure...');

    const copybooks = this.extractCopybooks();
    const overrides = this.extractOverrides();
    const testTypes = this.extractTestTypes();
    const entryPoint = this.extractEntryPoint();
    const mainParagraphs = this.extractMainParagraphs();

    console.log(`   Copybooks: ${copybooks.length}`);
    console.log(`   Override Rules: ${overrides.length}`);
    console.log(`   Test Types: ${testTypes.length}`);

    const programName = path.basename(cobolPath, '.cbl');
    const timestamp = new Date().toISOString().split('T')[0];

    let report = `# ${programName}.cbl - Flow Analysis

**Generated:** ${timestamp}

---

## 1. Copybooks Used

This program uses the following copybooks:

`;

    copybooks.forEach(cb => {
      report += `- **Line ${cb.lineNumber}**: \`${cb.name}\``;
      if (cb.name === 'COSMATRX') {
        report += ' ← **PRIMARY RULES COPYBOOK**';
      }
      if (cb.name === 'ZCLMACTU') {
        report += ' ← **Medicare Part A/B Crossover Rules**';
      }
      report += '\n';
    });

    report += `

### Key Copybooks:
- **COSMATRX**: Contains the matrix of COS (Category of Service) determination rules
- **ZCLMACTU**: Contains Medicare Part A and Part B crossover claim fields (TT-A-*, TT-B-*)

---

## 2. Program Flow

### Entry Point (PROCEDURE DIVISION)

`;

    if (entryPoint) {
      report += `\`\`\`cobol
${entryPoint.code}
\`\`\`

**Parameters:**
- \`PROCESS\`: Controls initialization ('0') vs processing ('1')
- \`OUTPATIENT-LAB-PROC-SW\`: Indicates if this is an outpatient lab procedure
- \`CLMS-ACTIVITY-RECORD\`: The claim record to process (from ZCLMACTU copybook)

`;
    }

    report += `### Main Logic Flow:

\`\`\`
IF PROCESS = '0'
   ├─→ PERFORM 0000-START (Initialization)
ELSE
   └─→ PERFORM 1000-PROCESS THRU 1000-EXIT (Main Processing)
\`\`\`

---

## 3. Paragraph Execution Flow

### 0000-START (Initialization)
**Purpose:** One-time setup when program first loads

**Actions:**
1. Set PROGRAM-NME to '${programName}'
2. COPY COMPMOVE (common initialization)

### 1000-PROCESS (Main Processing)
**Purpose:** Determine the Modified Category of Service (A-MODIFIED-COS)

**Flow:**

#### Step 1: Check for Override Conditions

Before using COSMATRX rules, check if any override conditions apply:

`;

    overrides.forEach((override, index) => {
      report += `**Override ${index + 1}: COS Code ${override.cosCode}**
- **Lines ${override.startLine}-${override.endLine}**:
\`\`\`cobol
${override.condition}
\`\`\`
- Then: Set \`A-MODIFIED-COS\` = '${override.cosCode}'
- Exit processing

`;
    });

    report += `#### Step 2: COSMATRX Rule Processing

If no override applies, process through COSMATRX rules:

\`\`\`cobol
SET NDX1 TO 1
SET NDX2 TO 2
PERFORM 3000-TRY-A-TEST
PERFORM 2000-KEEP-TRYING UNTIL COMPLETED
\`\`\`

**Algorithm:**
1. Start at first rule in COSMATRX matrix (NDX1 = 1, NDX2 = 2)
2. Test each rule condition (PERFORM 3000-TRY-A-TEST)
3. Navigate through rule hierarchy based on INCLUDE/EXCLUDE results
4. Continue until COMPLETED flag is set
5. Use the Modified COS from the matched rule (M-MODCOS)

#### Step 3: Default COS Assignment

If no rule matched (M-MODCOS = HIGH-VALUES):

\`\`\`cobol
IF A-CLM-TYPE = 18 OR
   (A-CLM-TYPE = 15 AND TT-B-MCARE-CLM-TYPE = 18)
   THEN: A-MODIFIED-COS = '08C'
ELSE
   A-MODIFIED-COS = '99' (default catch-all)
\`\`\`

---

## 4. Rule Testing Logic (3000-TRY-A-TEST)

The program evaluates rules based on **test type**. Each rule in COSMATRX specifies which type of test to perform:

### Test Types:

`;

    const testTypeDescriptions = {
      '3010-CLAIM-TYPE': 'Tests against claim type code. Converts Medicare Part A (14) and Part B (15) to their specific claim types.',
      '3020-CLINIC-CODE': 'Tests against clinic code(s). Handles up to 4 clinic codes per claim, including Medicare Part A outpatient.',
      '3030-FACILITY-CONTROL-CODE': 'Tests against facility control code.',
      '3040-PROCEDURE-CODE': 'Tests against procedure code. Excluded for inpatient, home health, outpatient lab procedures.',
      '3050-PROCEDURE-AND-MODIFIER': 'Tests procedure code with modifier. Tests both primary and secondary modifiers.',
      '3060-PROCEDURE-MODIFIER-ONLY': 'Tests only the procedure modifier. Tests both primary and secondary modifiers.',
      '3070-PROGRAM-STATUS-CODE': 'Tests against program status code.',
      '3080-SPECIALTY-CODE': 'Tests against provider specialty.',
      '3090-PROVIDER-TYPE': 'Tests against provider type.',
      '3100-SPECIAL-PROGRAM-CODE': 'Tests against special program code.'
    };

    testTypes.forEach(tt => {
      const description = testTypeDescriptions[tt.name] || 'Description not available';
      report += `**${tt.name}** (Line ${tt.lineNumber})
- ${description}

`;
    });

    report += `---

## 5. Medicare Part A/B Special Handling (ZCLMACTU Copybook)

### Claim Type Mapping (3010-CLAIM-TYPE)

**Medicare Part A (Claim Type 14):**
\`\`\`cobol
IF A-CLM-TYPE = 14
   MOVE TT-A-MCARE-CLM-TYPE TO W-VALUE
\`\`\`
- Uses \`TT-A-MCARE-CLM-TYPE\` from ZCLMACTU copybook

**Medicare Part B (Claim Type 15):**
\`\`\`cobol
IF A-CLM-TYPE = 15
   MOVE TT-B-MCARE-CLM-TYPE TO W-VALUE
\`\`\`
- Uses \`TT-B-MCARE-CLM-TYPE\` from ZCLMACTU copybook

### Medicare Part A Outpatient Clinic Codes (3020-CLINIC-CODE)

For Medicare Part A claims that are outpatient (\`TT-A-OUTPATIENT\`):
- Loops through \`TT-A-O-REV-CDE-CTR\` revenue code entries
- Tests up to 4 clinic codes per revenue code line: \`TT-A-O-CLINIC-CDE (TTAO-INDX 1-4)\`

### Fields from ZCLMACTU Referenced:
- \`TT-A-MCARE-CLM-TYPE\`: Medicare Part A claim type
- \`TT-B-MCARE-CLM-TYPE\`: Medicare Part B claim type
- \`TT-A-INPATIENT\`: Medicare Part A inpatient indicator
- \`TT-A-OUTPATIENT\`: Medicare Part A outpatient indicator
- \`TT-A-O-REV-CDE-CTR\`: Count of outpatient revenue codes
- \`TT-A-O-CLINIC-CDE\`: Outpatient clinic codes array

---

## 6. Rule Execution Algorithm (4000-EXECUTE-TEST)

### For INCLUDE Rules:

1. **Range Test** (if RANGE flag is set):
   - Check if value is within \`M-VALUE-1\` to \`M-VALUE-2\`
   - Optionally check second range: \`M-VALUE-3\` to \`M-VALUE-4\`
   - If matched: Set INCLUSION-INDICATOR = 'Y'

2. **List/Value Test** (if not a range):
   - Check if value equals any of: \`M-VALUE-1\`, \`M-VALUE-2\`, \`M-VALUE-3\`, \`M-VALUE-4\`
   - If matched: Set INCLUSION-INDICATOR = 'Y'

3. **Continue Searching**:
   - If not matched, check additional include rows (4010-MORE-INCLUDES)

### For EXCLUDE Rules:

Same logic as INCLUDE, but sets EXCLUSION-INDICATOR = 'Y'

### Result:
- INCLUDED → Use this rule (move to next level or finalize)
- EXCLUDED → Skip this rule branch
- Neither → Continue to next rule

---

## 7. COSMATRX Navigation Logic (2000-KEEP-TRYING)

**Algorithm:**

1. Start at current rule (NDX2)
2. Perform test (3000-TRY-A-TEST)
3. Based on INCLUDE/EXCLUDE result and rule hierarchy (M-LEVEL):
   - If EXCLUDED and rule has deeper levels: Navigate to sibling/child rules
   - If INCLUDED and rule has deeper levels: Navigate to child rules
   - If rule has no deeper levels: Mark COMPLETED and use this COS
4. Repeat until COMPLETED

**Key Concepts:**
- **M-LEVEL**: Hierarchy level ('00', '01', '02', etc.)
- **NDX1**: Points to the final selected rule
- **NDX2**: Points to current rule being tested
- **NDX3**: Temporary pointer for navigation
- **NDX4**: Pointer for checking additional include/exclude values

---

## 8. Which COSMATRX Rules Are Used?

**Answer: ALL rules in COSMATRX are potentially used.**

The program:
1. Starts at the beginning of COSMATRX
2. Loops through the entire matrix
3. Tests each rule's conditions against the claim data
4. Navigates through the rule hierarchy based on INCLUDE/EXCLUDE results
5. Stops when it finds a matching rule or reaches the end

**Important Notes:**
- The program does NOT call specific rules by ID
- Instead, it **traverses the entire COSMATRX decision tree**
- Which rules are actually evaluated depends on the claim's characteristics
- The COSMATRX structure determines the evaluation order and hierarchy

**To determine which rules apply:**
- Must analyze COSMATRX-integrated-report.md (Step 2 output)
- All rules in that report are potentially used by ${programName}

---

## 9. Summary for Step 3 (LLM Integration)

### Key Facts for Business Rules Extraction:

1. **COSMATRX is the primary source** of COS determination rules
   - All rules in COSMATRX-integrated-report.md are potentially used
   - Rules are evaluated in hierarchical order

2. **${overrides.length} override conditions** bypass COSMATRX:
${overrides.map((o, i) => `   - Override ${i + 1}: COS ${o.cosCode} (Lines ${o.startLine}-${o.endLine})`).join('\n')}

3. **Medicare Part A/B handling** uses ZCLMACTU copybook:
   - Claim types 14 (Part A) and 15 (Part B) get special mapping
   - Part A outpatient claims use TT-A-O-CLINIC-CDE fields

4. **Default catch-all**: COS 99 if no rule matches, COS 08C for claim type 18

### For Step 3 Prompt:

When combining this flow analysis with COSMATRX-integrated-report.md:
- Include ALL rules from COSMATRX report (all are potentially used)
- Add the ${overrides.length} override conditions as precedence rules
- Explain Medicare Part A/B special handling
- Include default COS assignments (08C, 99)

---

**End of Flow Analysis**
`;

    return report;
  }

  /**
   * Main method
   */
  analyze(cobolPath) {
    console.log('🚀 COBOL Flow Analyzer - Step 1');
    console.log('='.repeat(60));

    this.loadProgram(cobolPath);
    const report = this.generateReport(cobolPath);

    // Save report
    const outputPath = cobolPath.replace(/\.(cbl|cob)$/i, '-flow-analysis.md');
    fs.writeFileSync(outputPath, report);

    console.log(`\n✅ Flow analysis saved to: ${outputPath}`);
    console.log('\n📋 Next Steps:');
    console.log('   1. Review the flow analysis document');
    console.log('   2. Ensure COSMATRX-integrated-report.md exists (Step 2)');
    console.log('   3. Run Step 3 to generate LLM prompt combining both');

    return outputPath;
  }
}

export { FlowAnalyzer };

// CLI
if (import.meta.url === `file:///${process.argv[1].replace(/\\/g, '/')}`) {
  (async () => {
    const analyzer = new FlowAnalyzer();

    if (process.argv.length < 3) {
      console.log('Usage: node src/flow-analyzer.js <cobol-file>');
      console.log('Example: node src/flow-analyzer.js cobol/NJ2BE067.cbl');
      console.log('');
      console.log('This generates a flow analysis document explaining HOW the COBOL program works.');
      process.exit(1);
    }

    const cobolPath = process.argv[2];

    if (!fs.existsSync(cobolPath)) {
      console.error(`Error: COBOL file not found: ${cobolPath}`);
      process.exit(1);
    }

    analyzer.analyze(cobolPath);
  })();
}
