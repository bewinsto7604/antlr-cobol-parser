/**
 * Regex-based COBOL Copybook Parser (Fallback)
 * Extracts business rules from COBOL copybooks
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

/**
 * Parse a COBOL copybook and extract business rules
 */
class CobolCopybookParser {

  /**
   * Parse copybook file
   * @param {string} filePath - Path to COBOL copybook file
   * @returns {Object} Parsed structure with business rules
   */
  parseCopybook(filePath) {
    const content = fs.readFileSync(filePath, 'utf-8');
    return this.parseContent(content);
  }

  /**
   * Parse copybook content
   * @param {string} content - COBOL copybook content
   * @returns {Object} Parsed structure
   */
  parseContent(content) {
    const lines = content.split('\n');

    const result = {
      fields: [],
      conditions: [],
      validations: [],
      includes: [],
      redefines: [],
      businessRules: []
    };

    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      const lineNumber = i + 1;

      // Extract data fields (01-49 level)
      const fieldMatch = line.match(/^\s*(\d{2})\s+([A-Z0-9-]+)(?:\s+PIC\s+([^\s.]+))?(?:\s+VALUE\s+([^\s.]+))?/i);
      if (fieldMatch) {
        const field = {
          level: fieldMatch[1],
          name: fieldMatch[2],
          picture: fieldMatch[3] || null,
          value: fieldMatch[4] || null,
          lineNumber: lineNumber,
          type: this.determinePicType(fieldMatch[3])
        };
        result.fields.push(field);

        // If has VALUE clause, it's a validation rule
        if (fieldMatch[4]) {
          result.validations.push({
            field: fieldMatch[2],
            rule: `Default value: ${fieldMatch[4]}`,
            lineNumber: lineNumber,
            cobolCode: line.trim()
          });
        }
      }

      // Extract 88-level conditions (business rules!)
      const conditionMatch = line.match(/^\s*88\s+([A-Z0-9-]+)\s+VALUE[S]?\s+(.+?)\./i);
      if (conditionMatch) {
        const condition = {
          name: conditionMatch[1],
          values: conditionMatch[2].trim(),
          lineNumber: lineNumber,
          cobolCode: line.trim()
        };
        result.conditions.push(condition);

        // Parse as business rule
        const parentField = this.findParentField(result.fields, lineNumber);
        result.businessRules.push({
          ruleId: `RULE-${result.businessRules.length + 1}`,
          type: 'VALIDATION',
          field: parentField ? parentField.name : 'UNKNOWN',
          conditionName: conditionMatch[1],
          description: this.generateConditionDescription(conditionMatch[1], conditionMatch[2]),
          lineNumber: lineNumber,
          cobolCode: line.trim()
        });
      }

      // Extract COPY statements (includes)
      const copyMatch = line.match(/COPY\s+([A-Z0-9-]+)/i);
      if (copyMatch) {
        result.includes.push({
          copybook: copyMatch[1],
          lineNumber: lineNumber
        });
      }

      // Extract REDEFINES
      const redefinesMatch = line.match(/^\s*(\d{2})\s+([A-Z0-9-]+)\s+REDEFINES\s+([A-Z0-9-]+)/i);
      if (redefinesMatch) {
        result.redefines.push({
          level: redefinesMatch[1],
          name: redefinesMatch[2],
          redefines: redefinesMatch[3],
          lineNumber: lineNumber,
          cobolCode: line.trim()
        });

        result.businessRules.push({
          ruleId: `RULE-${result.businessRules.length + 1}`,
          type: 'DATA_DEFINITION',
          field: redefinesMatch[2],
          description: `${redefinesMatch[2]} provides alternate view of ${redefinesMatch[3]}`,
          lineNumber: lineNumber,
          cobolCode: line.trim()
        });
      }
    }

    return result;
  }

  /**
   * Determine PIC data type
   */
  determinePicType(picture) {
    if (!picture) return 'GROUP';
    if (picture.includes('X')) return 'ALPHANUMERIC';
    if (picture.includes('9')) return 'NUMERIC';
    if (picture.includes('A')) return 'ALPHABETIC';
    if (picture.includes('S')) return 'SIGNED_NUMERIC';
    return 'UNKNOWN';
  }

  /**
   * Find parent field for 88-level condition
   */
  findParentField(fields, lineNumber) {
    // Look backwards from current line to find the field this 88-level belongs to
    for (let i = fields.length - 1; i >= 0; i--) {
      if (fields[i].lineNumber < lineNumber && fields[i].level !== '88') {
        return fields[i];
      }
    }
    return null;
  }

  /**
   * Generate human-readable description from condition
   */
  generateConditionDescription(conditionName, values) {
    // Parse value ranges
    if (values.includes('THRU') || values.includes('THROUGH')) {
      const parts = values.split(/THRU|THROUGH/i);
      return `${conditionName}: When value is between ${parts[0].trim()} and ${parts[1].trim()}`;
    }

    // Multiple values
    if (values.includes('OR')) {
      const valueList = values.split(/\s+OR\s+/i).map(v => v.trim().replace(/['"]/g, ''));
      return `${conditionName}: When value is one of: ${valueList.join(', ')}`;
    }

    // Single value
    const cleanValue = values.trim().replace(/['"]/g, '');
    return `${conditionName}: When value equals ${cleanValue}`;
  }

  /**
   * Generate markdown report
   */
  generateReport(parsedData) {
    let report = '# COBOL Copybook Analysis Report\n\n';

    // Summary
    report += '## Summary\n\n';
    report += `- Total Fields: ${parsedData.fields.length}\n`;
    report += `- Business Rules: ${parsedData.businessRules.length}\n`;
    report += `- Conditions (88-levels): ${parsedData.conditions.length}\n`;
    report += `- Validations: ${parsedData.validations.length}\n`;
    report += `- Includes (COPY): ${parsedData.includes.length}\n`;
    report += `- Redefines: ${parsedData.redefines.length}\n\n`;

    // Business Rules
    if (parsedData.businessRules.length > 0) {
      report += '## Business Rules Extracted\n\n';
      parsedData.businessRules.forEach(rule => {
        report += `### ${rule.ruleId}: ${rule.conditionName || rule.field}\n\n`;
        report += `- **Type**: ${rule.type}\n`;
        report += `- **Field**: ${rule.field}\n`;
        report += `- **Description**: ${rule.description}\n`;
        report += `- **Line Number**: ${rule.lineNumber}\n`;
        report += `- **COBOL Code**:\n\`\`\`cobol\n${rule.cobolCode}\n\`\`\`\n\n`;
      });
    }

    // Data Structure
    if (parsedData.fields.length > 0) {
      report += '## Data Structure\n\n';
      report += '| Level | Field Name | Type | Picture | Default Value | Line |\n';
      report += '|-------|------------|------|---------|---------------|------|\n';
      parsedData.fields.slice(0, 50).forEach(field => {
        report += `| ${field.level} | ${field.name} | ${field.type} | ${field.picture || '-'} | ${field.value || '-'} | ${field.lineNumber} |\n`;
      });
      if (parsedData.fields.length > 50) {
        report += `\n*... and ${parsedData.fields.length - 50} more fields*\n`;
      }
      report += '\n';
    }

    // Includes
    if (parsedData.includes.length > 0) {
      report += '## Included Copybooks\n\n';
      parsedData.includes.forEach(inc => {
        report += `- **${inc.copybook}** (line ${inc.lineNumber})\n`;
      });
      report += '\n';
    }

    return report;
  }
}

export { CobolCopybookParser };

// CLI Usage
const __filename = fileURLToPath(import.meta.url);
if (__filename === process.argv[1]) {
  const parser = new CobolCopybookParser();

  if (process.argv.length < 3) {
    console.log('Usage: node src/index.js <copybook-file>');
    console.log('Example: node src/index.js examples/sample.cbl');
    process.exit(1);
  }

  const filePath = process.argv[2];

  if (!fs.existsSync(filePath)) {
    console.error(`Error: File not found: ${filePath}`);
    process.exit(1);
  }

  console.log('Parsing COBOL copybook:', filePath);
  console.log('='.repeat(60));

  const result = parser.parseCopybook(filePath);

  console.log('\n📊 PARSING RESULTS:\n');
  console.log(JSON.stringify(result, null, 2));

  console.log('\n📝 MARKDOWN REPORT:\n');
  const report = parser.generateReport(result);
  console.log(report);

  // Save report
  const reportPath = filePath.replace(/\.(cbl|cob|cpy)$/i, '-report.md');
  fs.writeFileSync(reportPath, report);
  console.log(`\n✅ Report saved to: ${reportPath}`);
}
