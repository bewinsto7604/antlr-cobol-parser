/**
 * NJ2BE067 Business Rule Extractor
 * Extracts enhanced business rules from COBOL programs that apply logic on top of COSMATRX
 * Uses LLM with groundtruth citations to prevent hallucination
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

class ProgramRuleExtractor {

  constructor() {
    this.cobolContent = null;
    this.baseRulesReport = null;
    this.dedData = null;
    this.pdfData = null;
  }

  /**
   * Load all required context files
   */
  async loadContext(cobolPath, baseRulesReportPath, dedPath, pdfPath) {
    console.log('📖 Loading context files...');

    // Load COBOL program
    this.cobolContent = fs.readFileSync(cobolPath, 'utf-8');
    console.log(`✅ Loaded COBOL program: ${path.basename(cobolPath)} (${this.cobolContent.split('\n').length} lines)`);

    // Load base rules report (e.g., COSMATRX-integrated-report.md)
    // This is the parsed copybook rules that the program references
    const baseRulesReport = fs.readFileSync(baseRulesReportPath, 'utf-8');
    this.baseRulesReport = baseRulesReport;
    const baseRulesLineCount = baseRulesReport.split('\n').length;
    const baseRulesRuleCount = (baseRulesReport.match(/\*\*Rule \d{3}\*\*/g) || []).length;
    console.log(`✅ Loaded base rules report: ${path.basename(baseRulesReportPath)} (${baseRulesRuleCount} rules)`);

    // Load DED (txt extracted from docx) if available
    if (dedPath && fs.existsSync(dedPath)) {
      this.dedData = fs.readFileSync(dedPath, 'utf-8');
      console.log(`✅ Loaded DED data: ${path.basename(dedPath)}`);
    } else {
      console.log(`⚠️  DED data not found at: ${dedPath}`);
    }

    // Load PDF if available
    if (pdfPath && fs.existsSync(pdfPath)) {
      console.log(`✅ PDF reference available: ${path.basename(pdfPath)}`);
      console.log(`   (Note: PDF content provided separately in context)`);
    } else {
      console.log(`⚠️  PDF reference not found at: ${pdfPath}`);
    }

    return {
      cobolLines: this.cobolContent.split('\n').length,
      baseRulesLineCount: baseRulesLineCount,
      baseRulesRuleCount: baseRulesRuleCount
    };
  }

  /**
   * Analyze COBOL program structure to identify rule sections
   */
  analyzeStructure() {
    const lines = this.cobolContent.split('\n');
    const structure = {
      overrideRules: [],
      conditionalLogic: [],
      dataElements: []
    };

    // Find override rules (before COSMATRX processing)
    // Pattern: IF ... MOVE '##' TO A-MODIFIED-COS
    const overridePattern = /MOVE\s+'(\d{2}[A-Z]?)'\s+TO\s+A-MODIFIED-COS/i;

    lines.forEach((line, index) => {
      const match = line.match(overridePattern);
      if (match) {
        structure.overrideRules.push({
          lineNumber: index + 1,
          cosCode: match[1],
          line: line.trim()
        });
      }
    });

    // Find conditional exclusions (NOT INPATIENT, NOT OUTPATIENT-LAB-PROC, etc.)
    const conditionalPattern = /(NOT\s+\(.*?(INPATIENT|OUTPATIENT|LAB-PROC|HOME-HEALTH).*?\))/i;

    lines.forEach((line, index) => {
      const match = line.match(conditionalPattern);
      if (match) {
        structure.conditionalLogic.push({
          lineNumber: index + 1,
          condition: match[1].trim(),
          line: line.trim()
        });
      }
    });

    // Find data element checks (CLAIM-TYPE, PROCEDURE-CODE, etc.)
    const dataElementPattern = /WHEN\s+([\w-]+)\s+\(NDX2\)/i;

    lines.forEach((line, index) => {
      const match = line.match(dataElementPattern);
      if (match) {
        structure.dataElements.push({
          lineNumber: index + 1,
          element: match[1],
          line: line.trim()
        });
      }
    });

    return structure;
  }

  /**
   * Generate LLM prompt with all context and groundtruth requirements
   */
  generateLLMPrompt(structure, cobolPath, baseRulesReportPath, dedPath, pdfPath) {
    const cobolFileName = path.basename(cobolPath);
    const prompt = `# Task: Extract Healthcare Business Rules from COBOL Program ${cobolFileName}

## Your Role
You are an expert in healthcare Medicaid systems and COBOL programming. Your task is to extract and explain business rules from the ${cobolFileName} COBOL program, which determines Category of Service (COS) codes for medical claims.

## CRITICAL GROUNDTRUTH REQUIREMENTS
You MUST follow these rules to prevent hallucination:

1. **ALWAYS cite line numbers** from NJ2BE067.cbl for every statement
   - Format: [Line 77-80] or [Line 242]

2. **ALWAYS quote actual COBOL code** as evidence
   - Use code blocks with actual lines from the program

3. **Cross-reference COSMATRX rules** when program modifies base rules
   - Format: "This modifies COSMATRX Rule 106 (GSHP)"

4. **INLINE descriptions for ALL code values** - CRITICAL REQUIREMENT
   - Look up descriptions in reference materials for EVERY code value
   - Check: ZCLMACTU.cpy (88-level conditions), DED.txt, Quick Reference PDF
   - Embed descriptions INLINE in the rule text, NOT in separate sections
   - Format: \`code\` (description) - NO source attribution
   - Examples:
     * CORRECT: "COS code \`94\` (Garden State Health Plan - GSHP)"
     * CORRECT: "\`1\` (GSHP Encounter Claim)"
     * WRONG: "\`1\` (GSHP Encounter Claim per ZCLMACTU)"
     * WRONG: "COS code \`94\` (GSHP)" then later "Code Description: Garden State Health Plan"
   - Apply to ALL values: COS codes, Provider Types, Claim Types, Procedure Codes, etc.
   - If description not found, omit parentheses: just \`code\` with no description

5. **Never infer logic** that isn't explicitly in the code
   - If unclear, state: "Logic unclear - needs manual review"

6. **Distinguish between**:
   - Override rules (bypass COSMATRX entirely)
   - Conditional modifications (add conditions to COSMATRX rules)
   - Default/fallback rules (when no COSMATRX match)

7. **Medicare Crossover Claims** - CRITICAL REQUIREMENT
   - Use concise format: "Medicare Part A Outpatient Hospital Crossover (14/03)"
   - Check ZCLMACTU.cpy Lines 2166-2169 for valid Part A claim types: 01, 02, 03
   - Check ZCLMACTU.cpy Lines 2791-2810 for valid Part B claim types: 04, 05, 07-10, 16-19, 21-23
   - ONLY create crossovers for these valid claim types
   - Examples:
     * CORRECT: "Claim Type \`01\` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01)"
     * CORRECT: "Claim Type \`18\` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18)"
     * WRONG: "Claim Type \`13\` (EPSDT/HealthStart) OR Medicare crossover" (13 is NOT valid for Medicare)
   - Include crossovers in conditional exclusions too: "NOT Medicare Part A Inpatient Hospital Crossover (14/01)"

8. **Document Multi-Rule COS Codes Individually** - CRITICAL REQUIREMENT
   - Any COS code with 3 or more COSMATRX rules MUST be documented as individual rules
   - Do NOT summarize multi-rule categories in bulk sections
   - Examples in current program: 23A (17 rules), 08B (11 rules), 81A (5 rules), 40 (5 rules), 87 (4 rules), 81C (3 rules), 60 (3 rules), 16 (3 rules)
   - This applies to ALL COS codes meeting this criteria, not just the examples listed
   - Check the base rules report (COSMATRX-integrated-report.md) to identify which codes have 3+ rules

9. **List ALL Codes Explicitly** - CRITICAL REQUIREMENT
   - NEVER summarize or generalize code lists with vague phrases like:
     * "with exclusion criteria for specific procedure codes"
     * "includes specific mental health codes"
     * "meets complex procedure code criteria"
     * "with various combinations"
     * "specific procedure codes and modifiers"
   - ALWAYS list EVERY procedure code, modifier value, specialty code, and condition explicitly
   - Check the COSMATRX base rules report for the complete list of codes for each rule
   - If a code list is long (10+ codes, 20+ codes, even 50+ codes), list them ALL anyway - completeness is CRITICAL
   - Examples:
     * CORRECT: "Procedure Code is NOT \`G0054\`, \`G0060\`, \`P0000\`, \`P9999\`, \`Q0111\`, \`Q0116\`, \`R0000\`, \`R6999\`, \`W7000\`, \`W8899\`, \`W8901\`, \`W8999\`, \`Y7433\`, \`Y7570\`, \`70000\`, \`79999\`, \`80000\`, \`89999\`, \`U0001\`, \`U0005\`, \`VG0001\`, \`G0026\`, \`G0027\`, \`36415\`, \`36430\`, \`36440\`, \`36450\`, \`36455\`, \`36460\`, \`S9122\`, \`T1001\`, \`G2023\`, or \`G2024\`"
     * WRONG: "Procedure Code with exclusions"
     * WRONG: "with exclusion criteria for specific procedure codes"
     * CORRECT: "Procedure Code with Modifiers is \`90832\`, \`90834\`, \`90837\`, \`90846\`, \`90847\`, \`90791\`, \`90853\`, or \`90887\` with modifier \`AJ\`"
     * WRONG: "specific mental health codes with modifier \`AJ\`"
     * WRONG: "includes specific mental health codes"
     * CORRECT: "Provider Specialty is \`871\`, \`872\`, \`873\`, \`874\`, \`875\`, \`876\`, \`877\`, \`878\`, \`879\`, \`881\`, \`882\`, \`883\`, \`884\`, \`885\`, \`886\`, \`887\`, \`888\`, \`889\`, \`971\`, \`972\`, \`973\`, \`974\`, \`975\`, or \`976\`"
     * WRONG: "various provider specialties"
   - This is non-negotiable - every code value must be explicitly documented

## Context Provided

### 1. Structure Analysis Hints

**NOTE:** These hints are navigation aids to help you locate interesting sections quickly. However, you MUST review the complete COBOL program to extract all business rules - do not rely solely on these hints.

**Override Rules Found:**
${structure.overrideRules.map(r => `- Line ${r.lineNumber}: COS '${r.cosCode}' - ${r.line}`).join('\n') || '(None detected - review full program)'}

**Conditional Logic Found:**
${structure.conditionalLogic.map(c => `- Line ${c.lineNumber}: ${c.condition}`).join('\n') || '(None detected - review full program)'}

**Data Elements Processed:**
${structure.dataElements.map(d => `- Line ${d.lineNumber}: ${d.element}`).join('\n') || '(None detected - review full program)'}

### 2. COBOL Program Source (File Access)

**IMPORTANT:** You have direct file access. Use the Read tool to access the COBOL program:
- **File Path:** ${cobolPath}
- **Lines:** ${this.cobolContent.split('\\n').length} lines of COBOL code
- **Action:** Read this file directly to analyze the business logic

DO NOT request the code to be embedded. You can read it yourself.

### 3. Base Rules Report (File Access)

**IMPORTANT:** You have direct file access. Use the Read tool to access the base rules report:
- **File Path:** ${baseRulesReportPath}
- **Contains:** ${(this.baseRulesReport.match(/\\*\\*Rule \\d{3}\\*\\*/g) || []).length} parsed copybook rules
- **Action:** Read this file to cross-reference base COSMATRX rules

DO NOT request this to be embedded. You can read it yourself.

### 4. Data Element Dictionary (File Access)

**IMPORTANT:** You have direct file access. Use the Read tool if needed:
- **File Path:** ${dedPath || 'Not provided'}
- **Contains:** Data element value descriptions (CLINIC CODE, FACILITY CONTROL CODE, etc.)
- **Action:** Read this file if you need clinic code or facility control code descriptions

### 5. ZCLMACTU Copybook (File Access)

**IMPORTANT:** You have direct file access. Use the Read tool to access 88-level condition names:
- **File Path:** copybook/ZCLMACTU.cpy
- **Contains:** Data element definitions with 88-level condition names (e.g., A-CLM-GSHP-RELATED values)
- **Action:** Read this file and search for 88-level conditions to find data element value descriptions

Example: To find GSHP-RELATED descriptions, search for "A-CLM-GSHP-RELATED" and look at the 88-level lines below it.

### 6. Quick Reference Guide (File Access)

**IMPORTANT:** You have direct file access. Use the Read tool if needed:
- **File Path:** ${pdfPath || 'Not provided'}
- **Contains:** COS codes, Claim Types, Provider Types, Program Status Codes
- **Action:** Read this file if you need general code descriptions

## Output Format

Generate a markdown report with this EXACT structure (matching COSMATRX-integrated-report.md format):

# NJ2BE067 Business Rules Report

## Summary
- Total Override Rules: [count]
- Total Modified COSMATRX Rules: [count]
- Total Default/Fallback Rules: [count]

## Business Rules

Number rules sequentially starting from 001. Use this EXACT format for each rule:

**Rule XXX** - COS code YY (Description) is assigned when [natural language conditions].

**Evidence:** [Line AA-BB]
\`\`\`cobol
[actual COBOL code from the program]
\`\`\`

**Cross-Reference:** [One of the following:]
- Overrides COSMATRX Rule NNN (base COS rule)
- Modifies COSMATRX Rule NNN by adding condition: [condition]
- Default rule when no COSMATRX match found
- Uses COSMATRX Rule NNN directly

**Type:** [Override Rule / Modified Rule / Default Rule / Direct COSMATRX Rule]

---

### Format Example (with INLINE descriptions):

**Rule 001** - COS code \`XX\` (Full Description of COS Code) is assigned when [natural language condition with inline descriptions for all code values].

**Evidence:** [Line AA-BB]
\`\`\`cobol
[actual COBOL code from the program showing the logic]
\`\`\`

**Cross-Reference:** [One of: Overrides COSMATRX Rule NNN | Modifies COSMATRX Rule NNN by adding condition | Default rule when no COSMATRX match found | Uses COSMATRX Rule NNN directly]

**Type:** [Override Rule | Modified Rule | Default Rule | Direct COSMATRX Rule]

---

## Important Guidelines:

1. **Sequential numbering**: Rules are numbered 001, 002, 003, etc.
2. **Natural language**: Write conditions as flowing sentences with "and", "or"
3. **Code values in backticks with INLINE descriptions**: Use \`value\` (description) for ALL codes
   - NEVER create separate "Code Description:" sections
   - Descriptions must be embedded directly in the rule text
4. **Evidence with line numbers**: Always cite [Line XX] or [Line XX-YY]
5. **Actual COBOL code**: Quote the real code from the program
6. **Cross-reference**: Always link to COSMATRX rules when applicable
7. **Type classification**: Identify if Override, Modified, Default, or Direct COSMATRX
8. **Look up EVERY code** in the reference materials (DED.docx and 2025QuickGuide-v2.pdf)
9. **Medicare crossovers**: Use format "Medicare Part A/B [Type] Crossover (XX/YY)" - check ZCLMACTU.cpy for valid values
10. **Document multi-rule COS codes individually**: Any COS code with 3+ rules gets individual documentation (not bulk summary)
11. **List ALL codes explicitly**: NEVER generalize with phrases like "specific procedure codes" or "with exclusions" - list EVERY code value explicitly, even if 50+ codes

## BEGIN EXTRACTION
`;

    return prompt;
  }


  /**
   * Main extraction method
   */
  async extract(cobolPath, baseRulesReportPath, dedPath, pdfPath) {
    console.log('🚀 COBOL Program Business Rule Extractor');
    console.log('='.repeat(60));

    // Load context
    const stats = await this.loadContext(cobolPath, baseRulesReportPath, dedPath, pdfPath);

    console.log('\n📊 Context Summary:');
    console.log(`   COBOL Program: ${stats.cobolLines} lines`);
    console.log(`   Base Rules Report: ${stats.baseRulesRuleCount} rules (${stats.baseRulesLineCount} lines)`);

    // Analyze structure
    console.log('\n🔍 Analyzing program structure...');
    const structure = this.analyzeStructure();

    console.log(`   Override Rules: ${structure.overrideRules.length}`);
    console.log(`   Conditional Logic Blocks: ${structure.conditionalLogic.length}`);
    console.log(`   Data Elements: ${structure.dataElements.length}`);

    // Generate LLM prompt
    console.log('\n📝 Generating LLM prompt with groundtruth requirements...');
    const prompt = this.generateLLMPrompt(structure, cobolPath, baseRulesReportPath, dedPath, pdfPath);

    console.log(`   Prompt length: ${prompt.length} characters`);

    // Save prompt for review/manual LLM use
    const promptPath = cobolPath.replace(/\.(cbl|cob)$/i, '-llm-prompt.txt');
    fs.writeFileSync(promptPath, prompt);
    console.log(`\n✅ LLM prompt saved to: ${promptPath}`);

    console.log('\n📋 Next Steps:');
    console.log('   1. Review the generated prompt');
    console.log('   2. Send to LLM with FILE ACCESS (Claude Code, API with tools, etc.)');
    console.log('   3. LLM will read files directly and generate report with citations');
    console.log('   4. Review output for accuracy and groundtruth compliance');
    console.log('');
    console.log('   Note: This prompt is designed for LLMs with file system access.');
    console.log('   For web chat (claude.ai), use an embedded code approach instead.');

    return {
      structure,
      promptPath,
      stats
    };
  }
}

export { ProgramRuleExtractor };

// CLI
const __filename = fileURLToPath(import.meta.url);
const isMainModule = process.argv[1] && (
  fileURLToPath(import.meta.url) === path.resolve(process.argv[1]).replace(/\\/g, '/') ||
  __filename === path.resolve(process.argv[1])
);

if (isMainModule) {
  (async () => {
    const extractor = new ProgramRuleExtractor();

    if (process.argv.length < 4) {
      console.log('Usage: node src/program-rule-extractor.js <cobol-file> <base-rules-report>');
      console.log('Example: node src/program-rule-extractor.js cobol/NJ2BE067.cbl copybook/COSMATRX-integrated-report.md');
      console.log('');
      console.log('This tool extracts enhanced business rules from a COBOL program');
      console.log('by analyzing how it uses/modifies base copybook rules.');
      console.log('');
      console.log('Parameters:');
      console.log('  <cobol-file>        - COBOL program to analyze (e.g., NJ2BE067.cbl)');
      console.log('  <base-rules-report> - Parsed copybook rules report (e.g., COSMATRX-integrated-report.md)');
      process.exit(1);
    }

    const cobolPath = process.argv[2];
    const baseRulesReportPath = process.argv[3];
    const dedPath = 'docs/DED.txt'; // Optional - text extracted from DED.docx
    const pdfPath = 'docs/2025QuickGuide-v2.pdf'; // Optional

    if (!fs.existsSync(cobolPath)) {
      console.error(`Error: COBOL file not found: ${cobolPath}`);
      process.exit(1);
    }

    if (!fs.existsSync(baseRulesReportPath)) {
      console.error(`Error: Base rules report not found: ${baseRulesReportPath}`);
      process.exit(1);
    }

    await extractor.extract(cobolPath, baseRulesReportPath, dedPath, pdfPath);
  })();
}
