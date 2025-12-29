/**
 * Real ANTLR-based COBOL Parser
 * Uses generated ANTLR4 parser from Cobol85.g4 grammar
 */

import fs from 'fs';
import antlr4 from 'antlr4';
import { fileURLToPath } from 'url';

// These will be loaded dynamically
let Cobol85Lexer, Cobol85Parser, Cobol85Listener;
let ANTLR_AVAILABLE = false;
let ANTLR_LOADING_PROMISE = null;

// Load ANTLR modules asynchronously
async function loadAntlrModules() {
  if (ANTLR_LOADING_PROMISE) {
    return ANTLR_LOADING_PROMISE;
  }

  ANTLR_LOADING_PROMISE = (async () => {
    try {
      const lexerModule = await import('./generated/Cobol85Lexer.js');
      const parserModule = await import('./generated/Cobol85Parser.js');
      const listenerModule = await import('./generated/Cobol85Listener.js');
      Cobol85Lexer = lexerModule.default;
      Cobol85Parser = parserModule.default;
      Cobol85Listener = listenerModule.default;
      ANTLR_AVAILABLE = true;
    } catch (error) {
      // ANTLR not available - will use regex fallback
      ANTLR_AVAILABLE = false;
    }
  })();

  return ANTLR_LOADING_PROMISE;
}

// Listener class - created dynamically after ANTLR modules load
function createCobolBusinessRuleExtractor() {
  return class extends Cobol85Listener {
    constructor() {
      super();
      this.result = {
        fields: [],
        conditions: [],
        validations: [],
        includes: [],
        redefines: [],
        businessRules: []
      };
      this.currentField = null;
    }

    // Called when entering a data description entry
    enterDataDescriptionEntry(ctx) {
      const levelNumber = ctx.levelNumber()?.getText();
      const dataName = ctx.dataName()?.getText();

      if (!levelNumber || !dataName) return;

      const field = {
        level: levelNumber,
        name: this.extractUnqualifiedName(dataName),
        picture: ctx.pictureClause()?.pictureString()?.getText() || null,
        value: ctx.valueClause()?.valueSpec(0)?.getText() || null,
        redefines: this.extractUnqualifiedName(ctx.redefinesClause()?.qualifiedName()?.getText()),
        lineNumber: ctx.start.line,
        type: this.determinePicType(ctx.pictureClause()?.pictureString()?.getText())
      };

      this.result.fields.push(field);
      this.currentField = field;

      // Check for REDEFINES
      if (field.redefines) {
        this.result.redefines.push({
          level: field.level,
          name: field.name,
          redefines: field.redefines,
          lineNumber: field.lineNumber,
          cobolCode: ctx.getText()
        });

        this.result.businessRules.push({
          ruleId: `RULE-${this.result.businessRules.length + 1}`,
          type: 'DATA_DEFINITION',
          field: field.name,
          description: `${field.name} provides alternate view of ${field.redefines}`,
          lineNumber: field.lineNumber,
          cobolCode: ctx.getText()
        });
      }

      // Check for VALUE
      if (field.value) {
        this.result.validations.push({
          field: field.name,
          rule: `Default value: ${field.value}`,
          lineNumber: field.lineNumber,
          cobolCode: ctx.getText()
        });
      }
    }

    // Called when entering an 88-level condition
    enterConditionNameEntry(ctx) {
      const conditionName = ctx.conditionName()?.getText();
      const valueClause = ctx.valueClause();

      if (!conditionName || !valueClause) return;

      const values = valueClause.valueSpec().map(v => v.getText()).join(' OR ');

      const condition = {
        name: this.extractUnqualifiedName(conditionName),
        values: values,
        lineNumber: ctx.start.line,
        cobolCode: ctx.getText()
      };

      this.result.conditions.push(condition);

      // Find parent field
      const parentField = this.findParentField(condition.lineNumber);

      this.result.businessRules.push({
        ruleId: `RULE-${this.result.businessRules.length + 1}`,
        type: 'VALIDATION',
        field: parentField ? parentField.name : 'UNKNOWN',
        conditionName: conditionName,
        description: this.generateConditionDescription(conditionName, values),
        lineNumber: condition.lineNumber,
        cobolCode: ctx.getText()
      });
    }

    // Called when entering a COPY statement
    enterCopyStatement(ctx) {
      const copybook = ctx.copybook()?.getText();
      if (copybook) {
        this.result.includes.push({
          copybook: copybook,
          lineNumber: ctx.start.line
        });
      }
    }

    findParentField(lineNumber) {
      for (let i = this.result.fields.length - 1; i >= 0; i--) {
        if (this.result.fields[i].lineNumber < lineNumber && this.result.fields[i].level !== '88') {
          return this.result.fields[i];
        }
      }
      return null;
    }

    determinePicType(picture) {
      if (!picture) return 'GROUP';
      if (picture.includes('X')) return 'ALPHANUMERIC';
      if (picture.includes('9')) return 'NUMERIC';
      if (picture.includes('A')) return 'ALPHABETIC';
      if (picture.includes('S')) return 'SIGNED_NUMERIC';
      return 'UNKNOWN';
    }

    generateConditionDescription(conditionName, values) {
      if (values.includes('THRU') || values.includes('THROUGH')) {
        return `${conditionName}: When value is in range ${values}`;
      }
      if (values.includes('OR')) {
        return `${conditionName}: When value is one of: ${values}`;
      }
      return `${conditionName}: When value equals ${values}`;
    }

    // Extract unqualified identifier from qualified name
    // :CLM:A-PROC-CDE -> A-PROC-CDE
    extractUnqualifiedName(qualifiedName) {
      if (!qualifiedName) return null;
      // Check if it has qualifier format :XXX:NAME
      const match = qualifiedName.match(/:([^:]+):(.+)/);
      if (match) {
        return match[2]; // Return NAME part
      }
      return qualifiedName; // Already unqualified
    }
  };
}

class AntlrCobolParser {
  async parseFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf-8');
    return await this.parseContent(content);
  }

  async parseContent(content) {
    // Load ANTLR modules if not already loaded
    await loadAntlrModules();

    if (!ANTLR_AVAILABLE || !Cobol85Lexer || !Cobol85Parser || !Cobol85Listener) {
      console.log('📦 ANTLR parser not available, using regex fallback');
      return await this.regexFallback(content);
    }

    try {
      // Create ANTLR input stream
      const chars = new antlr4.InputStream(content);

      // Create lexer
      const lexer = new Cobol85Lexer(chars);

      // Create token stream
      const tokens = new antlr4.CommonTokenStream(lexer);

      // Create parser
      const parser = new Cobol85Parser(tokens);
      parser.buildParseTrees = true;

      // Parse
      const tree = parser.compilationUnit();

      // Walk the parse tree
      const CobolBusinessRuleExtractor = createCobolBusinessRuleExtractor();
      const extractor = new CobolBusinessRuleExtractor();
      antlr4.tree.ParseTreeWalker.DEFAULT.walk(extractor, tree);

      return extractor.result;
    } catch (error) {
      console.error('❌ ANTLR parsing failed:', error.message);
      console.log('   Falling back to regex parser...\n');
      return await this.regexFallback(content);
    }
  }

  async regexFallback(content) {
    // Fallback to regex parsing
    const { CobolCopybookParser } = await import('./index.js');
    const parser = new CobolCopybookParser();
    return parser.parseContent(content);
  }

  async generateReport(parsedData) {
    // Reuse report generation from index.js
    const { CobolCopybookParser } = await import('./index.js');
    const parser = new CobolCopybookParser();
    return parser.generateReport(parsedData);
  }
}

export { AntlrCobolParser };

// CLI
const __filename = fileURLToPath(import.meta.url);
if (__filename === process.argv[1]) {
  (async () => {
    const parser = new AntlrCobolParser();

    if (process.argv.length < 3) {
      console.log('Usage: node src/antlr-parser.js <copybook-file>');
      console.log('Example: node src/antlr-parser.js examples/sample-copybook.cbl');
      process.exit(1);
    }

    const filePath = process.argv[2];

    if (!fs.existsSync(filePath)) {
      console.error(`Error: File not found: ${filePath}`);
      process.exit(1);
    }

    console.log('🔍 Parsing COBOL copybook with ANTLR:', filePath);
    console.log('='.repeat(60));

    const result = await parser.parseFile(filePath);

    console.log('\n📊 PARSING RESULTS:\n');
    console.log(JSON.stringify(result, null, 2));

    console.log('\n📝 MARKDOWN REPORT:\n');
    const report = await parser.generateReport(result);
    console.log(report);

    const reportPath = filePath.replace(/\.(cbl|cob|cpy)$/i, '-antlr-report.md');
    fs.writeFileSync(reportPath, report);
    console.log(`\n✅ Report saved to: ${reportPath}`);
  })();
}
