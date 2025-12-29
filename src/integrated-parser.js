/**
 * Integrated COBOL + COS Matrix Parser
 * Combines ANTLR/Regex parsing with COS matrix decoding
 */

import fs from 'fs';
import { fileURLToPath } from 'url';
import { CobolCopybookParser } from './index.js';
import { AntlrCobolParser } from './antlr-parser.js';
import { CosMatrixParser } from './cos-matrix-parser.js';

class IntegratedParser {

  async parseFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf-8');
    return await this.parseContent(content, filePath);
  }

  async parseContent(content, filePath = 'unknown') {
    console.log('🔍 Step 1: Parsing COBOL structure...');
    console.log('='.repeat(60));

    // Check if ANTLR parser is available
    let antlrAvailable = false;
    let cobolParser;

    try {
      await import('./generated/Cobol85Lexer.js');
      antlrAvailable = true;
      console.log('✅ ANTLR Parser: AVAILABLE (using generated parser)');
      cobolParser = new AntlrCobolParser();  // USE ANTLR
    } catch (e) {
      console.log('⚠️  ANTLR Parser: NOT AVAILABLE (falling back to regex)');
      console.log('   To use ANTLR: npm run generate (requires Java)\n');
      cobolParser = new CobolCopybookParser();  // USE REGEX
    }

    // Phase 1: Extract COBOL structure (using ANTLR or Regex)
    const cobolStructure = await cobolParser.parseContent(content);

    console.log(`✅ Found ${cobolStructure.fields.length} fields`);
    console.log(`✅ Found ${cobolStructure.conditions.length} 88-level conditions`);
    console.log(`✅ Found ${cobolStructure.redefines.length} REDEFINES`);
    console.log(`✅ Found ${cobolStructure.validations.length} VALUE clauses\n`);

    // Phase 2: Check if this is a COS matrix copybook
    const isCosMatrix = this.detectCosMatrix(cobolStructure, filePath);

    let cosRules = null;
    if (isCosMatrix) {
      console.log('🎯 Detected COS Matrix copybook!');
      console.log('🔍 Step 2: Decoding COS assignment rules...');
      console.log('='.repeat(60));

      // Try to load ZCLMACTU.cpy for field structure definitions
      let zclmactuStructure = null;
      const zclmactuPath = filePath.replace(/[^\/\\]+$/, 'ZCLMACTU.cpy');

      try {
        if (fs.existsSync(zclmactuPath)) {
          console.log('📖 Loading ZCLMACTU.cpy for field definitions...');
          const zclmactuContent = fs.readFileSync(zclmactuPath, 'utf-8');
          const zclmactuParser = new AntlrCobolParser();
          zclmactuStructure = await zclmactuParser.parseContent(zclmactuContent);
          console.log(`✅ Loaded ${zclmactuStructure.fields.length} field definitions from ZCLMACTU.cpy`);
        }
      } catch (e) {
        console.log('⚠️  Could not load ZCLMACTU.cpy, using basic decoding');
      }

      const cosParser = new CosMatrixParser();
      cosRules = cosParser.parseContent(content, zclmactuStructure);

      console.log(`✅ Found ${cosRules.summary.totalCosCategories} COS categories`);
      console.log(`✅ Found ${cosRules.summary.totalRules} assignment rules\n`);
    } else {
      console.log('ℹ️  Not a COS Matrix copybook - standard copybook');
    }

    // Combine results
    return {
      type: isCosMatrix ? 'COS_MATRIX' : 'STANDARD_COPYBOOK',
      cobolStructure: cobolStructure,
      cosRules: cosRules,
      filePath: filePath
    };
  }

  detectCosMatrix(cobolStructure, filePath) {
    // Check if this looks like a COS matrix
    // COS matrix has lots of FILLER fields with encoded VALUE strings
    const fillerCount = cobolStructure.fields.filter(f => f.name === 'FILLER').length;
    const valueCount = cobolStructure.validations.length;

    // Check filename for COS indicators
    const fileName = filePath.toUpperCase();
    const hasCosinName = fileName.includes('COS') || fileName.includes('MATRIX');

    // If lots of FILLERs and VALUES, definitely a COS matrix
    if (fillerCount > 10 && valueCount > 10) {
      return true;
    }

    // If lots of FILLERs (even without VALUES) and filename suggests COS
    if (fillerCount > 10 && hasCosinName) {
      return true;
    }

    // If we have many FILLERs (common in COS matrix), try COS parsing anyway
    // ANTLR may not extract VALUES correctly but COS parser works on raw text
    if (fillerCount > 50) {
      return true;
    }

    return false;
  }

  generateReport(parsedData) {
    let report = '';

    if (parsedData.type === 'COS_MATRIX') {
      // Only COS Business Rules
      const cosParser = new CosMatrixParser();
      report += cosParser.generateReport(parsedData.cosRules);

    } else {
      // Standard copybook
      report += '# COBOL Copybook Analysis Report\n\n';
      const cobolParser = new CobolCopybookParser();
      report += cobolParser.generateReport(parsedData.cobolStructure);
    }

    return report;
  }

  generateCobolSummary(cobolStructure) {
    let summary = '';

    summary += '### Summary\n\n';
    summary += `- **Total Fields**: ${cobolStructure.fields.length}\n`;
    summary += `- **88-Level Conditions**: ${cobolStructure.conditions.length}\n`;
    summary += `- **VALUE Clauses**: ${cobolStructure.validations.length}\n`;
    summary += `- **REDEFINES**: ${cobolStructure.redefines.length}\n`;
    summary += `- **COPY Statements**: ${cobolStructure.includes.length}\n\n`;

    // Show 88-level conditions if any
    if (cobolStructure.conditions.length > 0) {
      summary += '### 88-Level Conditions Found\n\n';
      cobolStructure.conditions.forEach(cond => {
        summary += `- **${cond.name}**: ${cond.values} (line ${cond.lineNumber})\n`;
      });
      summary += '\n';
    }

    // Show REDEFINES if any
    if (cobolStructure.redefines.length > 0) {
      summary += '### REDEFINES Found\n\n';
      cobolStructure.redefines.forEach(red => {
        summary += `- **${red.name}** redefines **${red.redefines}** (line ${red.lineNumber})\n`;
      });
      summary += '\n';
    }

    return summary;
  }

  generateJSON(parsedData) {
    return JSON.stringify(parsedData, null, 2);
  }
}

export { IntegratedParser };

// CLI
const __filename = fileURLToPath(import.meta.url);
if (__filename === process.argv[1]) {
  (async () => {
    const parser = new IntegratedParser();

    if (process.argv.length < 3) {
      console.log('Usage: node src/integrated-parser.js <copybook-file>');
      console.log('Example: node src/integrated-parser.js copybook/COSMATRX.cpy');
      console.log('\nThis parser combines:');
      console.log('  1. ANTLR/Regex COBOL structure parsing');
      console.log('  2. COS matrix business rule extraction\n');
      process.exit(1);
    }

    const filePath = process.argv[2];

    if (!fs.existsSync(filePath)) {
      console.error(`Error: File not found: ${filePath}`);
      process.exit(1);
    }

    console.log('🚀 Integrated COBOL + COS Matrix Parser');
    console.log('='.repeat(60));
    console.log(`File: ${filePath}\n`);

    const result = await parser.parseFile(filePath);

    console.log('='.repeat(60));
    console.log('📊 PARSING COMPLETE');
    console.log('='.repeat(60));
    console.log(`Type: ${result.type}\n`);

    // Generate and save report
    console.log('📝 Generating markdown report...');
    const report = parser.generateReport(result);

    const reportPath = filePath.replace(/\.(cbl|cob|cpy)$/i, '-integrated-report.md');
    fs.writeFileSync(reportPath, report);
    console.log(`✅ Report saved to: ${reportPath}\n`);

    // Save JSON
    const jsonPath = filePath.replace(/\.(cbl|cob|cpy)$/i, '-integrated.json');
    fs.writeFileSync(jsonPath, parser.generateJSON(result));
    console.log(`✅ JSON saved to: ${jsonPath}\n`);

    console.log('='.repeat(60));
    console.log('📖 REPORT PREVIEW');
    console.log('='.repeat(60));
    console.log(report);
  })();
}
