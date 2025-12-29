/**
 * COS Matrix Parser
 * Specialized parser for Category of Service matrix copybooks
 * Extracts COS assignment rules from encoded string values
 */

import fs from 'fs';
import { fileURLToPath } from 'url';

class CosMatrixParser {

  constructor() {
    // Field structure definitions from ZCLMACTU.cpy
    this.fieldStructures = null;
  }

  parseFile(filePath, zclmactuStructure = null) {
    const content = fs.readFileSync(filePath, 'utf-8');
    return this.parseContent(content, zclmactuStructure);
  }

  parseContent(content, zclmactuStructure = null) {
    // Store ZCLMACTU structure for decoding
    if (zclmactuStructure) {
      this.fieldStructures = this.buildFieldStructureMap(zclmactuStructure);
    }
    const lines = content.split('\n');

    const result = {
      cosRules: [],
      summary: {
        totalCosCategories: 0,
        totalRules: 0
      }
    };

    let currentCos = null;
    let currentLevel = 0;

    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      const lineNumber = i + 1;

      // Check if this line has VALUE keyword (may be followed by string on same or next line)
      if (line.match(/VALUE/)) {
        // Try to extract string from same line
        let valueMatch = line.match(/VALUE\s*'([^']+)'/);
        let valueString = null;

        if (valueMatch) {
          valueString = valueMatch[1];
        } else if (i + 1 < lines.length) {
          // Check next line for string literal
          const nextLine = lines[i + 1];
          const nextLineMatch = nextLine.match(/^\s*'([^']+)'/);
          if (nextLineMatch) {
            valueString = nextLineMatch[1];
            i++; // Skip the next line since we processed it
          }
        }

        if (!valueString) continue;

        // Check if this is a COS header line (e.g., '01AINPAT GENL HOSP  00' or '02 RES TREATMNT CNTR00')
        const cosHeaderMatch = valueString.match(/^(\d{2}[A-Z ])([\w\s\/\-]+?)\s*(\d{2})\s*$/);
        if (cosHeaderMatch) {
          // Save previous COS if exists
          if (currentCos) {
            result.cosRules.push(currentCos);
          }

          // Start new COS rule
          currentCos = {
            cosCode: cosHeaderMatch[1].trim(),
            description: cosHeaderMatch[2].trim(),
            priority: cosHeaderMatch[3],
            lineNumber: lineNumber,
            rules: []
          };
          currentLevel = 0;
          result.summary.totalCosCategories++;
          continue;
        }

        // Check if this is a rule line (e.g., '01ICTYPEV01')
        const ruleMatch = valueString.match(/^\s*(\d{2})([IE])([\w\s]+)([VR])(.+?)\s*$/);
        if (ruleMatch && currentCos) {
          const level = ruleMatch[1];
          const includeExclude = ruleMatch[2] === 'I' ? 'INCLUDE' : 'EXCLUDE';
          const dataElementRaw = ruleMatch[3].trim();
          const valueOrRange = ruleMatch[4] === 'V' ? 'VALUE' : 'RANGE';
          const valuesRaw = ruleMatch[5].trim();

          // Parse data element
          const dataElement = this.parseDataElement(dataElementRaw);

          // Parse values based on field structure
          const values = this.parseValues(dataElementRaw, valuesRaw);

          const rule = {
            level: parseInt(level),
            action: includeExclude,
            dataElement: dataElement.name,
            dataElementFull: dataElement.full,
            type: valueOrRange,
            values: values.raw, // Raw values (backward compatible)
            decodedValues: values.decoded, // Decoded values with components
            lineNumber: lineNumber,
            cobolCode: valueString
          };

          currentCos.rules.push(rule);
          result.summary.totalRules++;
          currentLevel = parseInt(level);
          continue;
        }

        // Check if this is a continuation line (just values, no level/action/field prefix)
        // Continuation lines have many leading spaces and contain only values
        const continuationMatch = valueString.match(/^\s{20,}([A-Z0-9\s]+?)\s*$/);
        if (continuationMatch && currentCos && currentCos.rules.length > 0) {
          // Append values to the most recent rule
          const lastRule = currentCos.rules[currentCos.rules.length - 1];
          const continuationValues = continuationMatch[1].trim();

          // Parse the continuation values using the same field structure as the last rule
          const parsedValues = this.parseValues(lastRule.dataElement, continuationValues);

          // Append to existing values
          lastRule.values = lastRule.values.concat(parsedValues.raw);
          lastRule.decodedValues = lastRule.decodedValues.concat(parsedValues.decoded);
        }
      }
    }

    // Don't forget the last COS
    if (currentCos) {
      result.cosRules.push(currentCos);
    }

    return result;
  }

  parseDataElement(dataElement) {
    const elementMap = {
      'CTYPE': 'Claim Type',
      'CLINC': 'Clinic Code',
      'FACCC': 'Facility Control Code',
      'PROC': 'Procedure Code',
      'PROCM': 'Procedure Code with Modifiers',
      'PMOD': 'Procedure Modifier Only',
      'PSTAT': 'Program Status',
      'PSPEC': 'Provider Specialty',
      'PTYPE': 'Provider Type',
      'PTYP': 'Provider Type',
      'SPROG': 'Special Program'
    };

    return {
      name: dataElement,
      full: elementMap[dataElement] || dataElement
    };
  }

  parseValues(dataElement, valuesRaw) {
    // Get field structure if available
    const structure = this.fieldStructures ? this.fieldStructures[dataElement] : null;

    if (!structure || !structure.totalLength) {
      // No structure info, fall back to space-separated parsing
      const rawValues = valuesRaw.split(/\s+/).filter(v => v.length > 0);
      return {
        raw: rawValues,
        decoded: rawValues.map(v => ({ raw: v }))
      };
    }

    // Parse values based on field length
    const fieldLength = structure.totalLength;
    const rawValues = [];
    const decodedValues = [];
    let pos = 0;

    while (pos < valuesRaw.length) {
      // Extract value of specified length
      const value = valuesRaw.substr(pos, fieldLength);
      if (value.trim().length > 0) {
        rawValues.push(value);
        // Decode the value into components
        const decoded = this.decodeCompositeValue(dataElement, value);
        decodedValues.push(decoded);
      }
      pos += fieldLength;
    }

    return {
      raw: rawValues,
      decoded: decodedValues
    };
  }

  buildFieldStructureMap(cobolStructure) {
    if (!cobolStructure || !cobolStructure.fields) {
      return null;
    }

    const structures = {};

    // For PROCM (Procedure Code with Modifiers): A-PROC-CDE (5) + A-PROC-MOD (2) = 7
    const procCde = cobolStructure.fields.find(f => f.name === 'A-PROC-CDE');
    const procMod = cobolStructure.fields.find(f => f.name === 'A-PROC-MOD');

    if (procCde && procMod) {
      structures['PROCM'] = {
        fullName: 'Procedure Code with Modifiers',
        totalLength: 7,
        components: [
          {
            name: 'Procedure Code',
            field: 'A-PROC-CDE',
            length: this.extractPicLength(procCde.picture)
          },
          {
            name: 'Modifier',
            field: 'A-PROC-MOD',
            length: this.extractPicLength(procMod.picture)
          }
        ]
      };
    }

    // For PMOD (Procedure Modifier Only): Just A-PROC-MOD (2)
    // NOTE: Even though modifiers are 2 chars, they're stored in 7-char slots in COSMATRX
    if (procMod) {
      structures['PMOD'] = {
        fullName: 'Procedure Modifier Only',
        totalLength: 7, // All values in COSMATRX are 7-character slots
        components: [
          {
            name: 'Modifier',
            field: 'A-PROC-MOD',
            length: this.extractPicLength(procMod.picture)
          }
        ]
      };
    }

    // Simple fields (no decomposition needed)
    // All values in COSMATRX.cpy are stored in 7-character slots (M-VALUE-1 through M-VALUE-4 are PIC X(07))
    structures['CTYPE'] = { fullName: 'Claim Type', totalLength: 7, components: null };
    structures['PTYP'] = { fullName: 'Provider Type', totalLength: 7, components: null };
    structures['PTYPE'] = { fullName: 'Provider Type', totalLength: 7, components: null };
    structures['PSPEC'] = { fullName: 'Provider Specialty', totalLength: 7, components: null };
    structures['SPROG'] = { fullName: 'Special Program', totalLength: 7, components: null };
    structures['FACCC'] = { fullName: 'Facility Control Code', totalLength: 7, components: null };
    structures['CLINC'] = { fullName: 'Clinic Code', totalLength: 7, components: null };
    structures['PROC'] = { fullName: 'Procedure Code', totalLength: 7, components: null };

    return structures;
  }

  extractPicLength(pic) {
    if (!pic) return 0;

    // Match X(5) or X(05)
    const match = pic.match(/\((\d+)\)/);
    if (match) return parseInt(match[1]);

    // Match XXX (count X's)
    const xMatch = pic.match(/X+/);
    if (xMatch) return xMatch[0].length;

    // Match 9(5) or 9(05)
    const numMatch = pic.match(/9\((\d+)\)/);
    if (numMatch) return parseInt(numMatch[1]);

    return 0;
  }

  decodeCompositeValue(dataElement, value) {
    if (!this.fieldStructures || !this.fieldStructures[dataElement]) {
      // No structure info, return as-is
      return { raw: value };
    }

    const structure = this.fieldStructures[dataElement];

    // If no components, it's a simple field
    if (!structure.components) {
      return { raw: value.trim() };
    }

    // Decode composite value
    const decoded = {};
    let pos = 0;

    for (const component of structure.components) {
      const componentValue = value.substr(pos, component.length).trim();
      decoded[component.name] = componentValue;
      pos += component.length;
    }

    decoded.raw = value;
    return decoded;
  }

  generateReport(parsedData) {
    let report = '# COS Business Rules Report\n\n';

    let ruleNumber = 1;

    parsedData.cosRules.forEach((cos, index) => {
      if (cos.rules.length > 0) {
        // Group rules by level 1 (each level 1 is a separate rule)
        const level1Groups = [];
        let currentGroup = null;

        cos.rules.forEach(rule => {
          if (rule.level === 1) {
            // Start new rule group
            if (currentGroup) {
              level1Groups.push(currentGroup);
            }
            currentGroup = [rule];
          } else if (currentGroup) {
            // Add to current rule group
            currentGroup.push(rule);
          }
        });

        // Don't forget last group
        if (currentGroup) {
          level1Groups.push(currentGroup);
        }

        // Generate a rule for each level 1 group
        level1Groups.forEach(ruleGroup => {
          report += `**Rule ${String(ruleNumber).padStart(3, '0')}** - COS code ${cos.cosCode} (${cos.description}) is assigned when `;
          report += this.generateRuleDescriptionForGroup(ruleGroup);
          report += '.\n\n';
          ruleNumber++;
        });
      }
    });

    return report;
  }

  generateRuleDescriptionForGroup(ruleGroup) {
    let description = '';
    const allConditions = [];

    ruleGroup.forEach(rule => {
      const actionWord = rule.action === 'INCLUDE' ? 'is' : 'is NOT';

      // Use decoded values if available
      let valueList;
      if (rule.decodedValues && rule.decodedValues.length > 0 && rule.decodedValues[0]['Procedure Code']) {
        // Composite field - show codes and modifiers separately
        const procCodes = rule.decodedValues.map(d => d['Procedure Code']).filter(Boolean);
        const modifiers = rule.decodedValues.map(d => d['Modifier']).filter(Boolean);
        valueList = `\`${procCodes.join('`, `')}\` with modifier \`${modifiers.join('`, `')}\``;
      } else if (rule.decodedValues && rule.decodedValues.length > 0 && rule.decodedValues[0]['Modifier']) {
        // Modifier only
        const modifiers = rule.decodedValues.map(d => d['Modifier']).filter(Boolean);
        valueList = `\`${modifiers.join('`, `')}\``;
      } else {
        // Simple field or no decoding
        valueList = rule.values.map(v => `\`${v.trim()}\``).join(', ');
      }

      allConditions.push(`${rule.dataElementFull} ${actionWord} ${valueList}`);
    });

    description = allConditions.join(' and ');
    return description;
  }

  generateJSON(parsedData) {
    return JSON.stringify(parsedData, null, 2);
  }
}

export { CosMatrixParser };

// CLI
const __filename = fileURLToPath(import.meta.url);
if (__filename === process.argv[1]) {
  const parser = new CosMatrixParser();

  if (process.argv.length < 3) {
    console.log('Usage: node src/cos-matrix-parser.js <cos-matrix-file>');
    console.log('Example: node src/cos-matrix-parser.js copybook/COSMATRX.cpy');
    process.exit(1);
  }

  const filePath = process.argv[2];

  if (!fs.existsSync(filePath)) {
    console.error(`Error: File not found: ${filePath}`);
    process.exit(1);
  }

  console.log('🔍 Parsing COS Matrix:', filePath);
  console.log('='.repeat(60));

  const result = parser.parseFile(filePath);

  console.log('\n📊 COS MATRIX PARSING RESULTS:\n');
  console.log(parser.generateJSON(result));

  console.log('\n📝 COS ASSIGNMENT RULES REPORT:\n');
  const report = parser.generateReport(result);
  console.log(report);

  const reportPath = filePath.replace(/\.(cbl|cob|cpy)$/i, '-cos-rules.md');
  fs.writeFileSync(reportPath, report);
  console.log(`\n✅ Report saved to: ${reportPath}`);
}
