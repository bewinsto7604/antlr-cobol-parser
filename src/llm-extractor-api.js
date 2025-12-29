/**
 * LLM-based Business Rule Extractor using Claude API with File Access
 * Uses Claude API's tool use feature to read files directly instead of embedding
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

class LLMExtractorAPI {

  constructor(apiKey) {
    this.apiKey = apiKey || process.env.ANTHROPIC_API_KEY;
    if (!this.apiKey) {
      throw new Error('ANTHROPIC_API_KEY environment variable not set');
    }
  }

  /**
   * Generate a prompt that references files (not embeds them)
   */
  generatePromptWithFileRefs(cobolPath, baseRulesReportPath) {
    const prompt = `# Task: Extract Healthcare Business Rules from COBOL Program

## Your Role
You are an expert in healthcare Medicaid systems and COBOL programming.

## Files Available to You

Use the \`read_file\` tool to access these files:

1. **COBOL Program:** ${cobolPath}
   - Main source code to analyze
   - Contains override rules, conditional logic, and COSMATRX traversal

2. **Base Rules Report:** ${baseRulesReportPath}
   - Parsed copybook business rules (markdown format)
   - Use as reference for cross-referencing

## CRITICAL GROUNDTRUTH REQUIREMENTS

1. **ALWAYS cite line numbers** from the COBOL program
   - Format: [Line 77-80] or [Line 242]

2. **ALWAYS quote actual COBOL code** as evidence
   - Use code blocks with actual lines

3. **Cross-reference base rules** when program modifies them
   - Format: "Modifies Rule XXX (COS code YYY)"

4. **Never infer logic** not explicitly in the code
   - If unclear, state: "Logic unclear - needs manual review"

## Workflow

1. Use \`read_file\` to read: ${cobolPath}
2. Use \`read_file\` to read: ${baseRulesReportPath}
3. Analyze the COBOL program systematically:
   - Identify override rules (bypass base rules)
   - Identify conditional modifications (add conditions to base rules)
   - Identify default/fallback rules
4. Cross-reference base rules from the report
5. Generate output in the specified format

## Output Format

**Rule XXX** - COS code YY (Description) is assigned when [conditions].

**Evidence:** [Line AA-BB]
\`\`\`cobol
[actual COBOL code]
\`\`\`

**Cross-Reference:** [Overrides/Modifies/Uses] Rule NNN (base rule)

**Type:** [Override Rule / Modified Rule / Default Rule]

---

## Instructions

1. Read both files using the \`read_file\` tool
2. Extract and document all business rules
3. Number rules sequentially (001, 002, 003...)
4. Include evidence and cross-references for each rule

Begin extraction now.
`;

    return prompt;
  }

  /**
   * Call Claude API with file reading tools
   */
  async extractRules(cobolPath, baseRulesReportPath) {
    console.log('🚀 LLM-based Rule Extraction (API with File Tools)');
    console.log('='.repeat(60));

    // Generate prompt that references files
    const prompt = this.generatePromptWithFileRefs(cobolPath, baseRulesReportPath);

    console.log('📝 Prompt generated (references files, not embeds)');
    console.log('📂 Files to be read by LLM:');
    console.log(`   - ${cobolPath}`);
    console.log(`   - ${baseRulesReportPath}`);

    // Define file reading tool for Claude
    const tools = [{
      name: 'read_file',
      description: 'Read contents of a file from the filesystem',
      input_schema: {
        type: 'object',
        properties: {
          file_path: {
            type: 'string',
            description: 'Absolute or relative path to the file'
          }
        },
        required: ['file_path']
      }
    }];

    console.log('\n⚠️  API Integration Not Yet Implemented');
    console.log('This would require:');
    console.log('1. npm install @anthropic-ai/sdk');
    console.log('2. Set ANTHROPIC_API_KEY environment variable');
    console.log('3. Implement API call with tool use');
    console.log('4. Handle tool execution (file reading)');
    console.log('5. Stream and collect response');

    // Save prompt for manual use
    const promptPath = cobolPath.replace(/\.(cbl|cob)$/i, '-api-prompt.txt');
    fs.writeFileSync(promptPath, prompt);
    console.log(`\n✅ API-style prompt saved to: ${promptPath}`);

    console.log('\n💡 Alternative: Use the embedded prompt for web chat');
    console.log('   node src/program-rule-extractor.js cobol/NJ2BE067.cbl copybook/COSMATRX-integrated-report.md');

    return {
      promptPath,
      cobolPath,
      baseRulesReportPath
    };
  }
}

export { LLMExtractorAPI };

// CLI
const __filename = fileURLToPath(import.meta.url);
const isMainModule = process.argv[1] && (
  fileURLToPath(import.meta.url) === path.resolve(process.argv[1]).replace(/\\/g, '/') ||
  __filename === path.resolve(process.argv[1])
);

if (isMainModule) {
  (async () => {
    if (process.argv.length < 4) {
      console.log('Usage: node src/llm-extractor-api.js <cobol-file> <base-rules-report>');
      console.log('Example: node src/llm-extractor-api.js cobol/NJ2BE067.cbl copybook/COSMATRX-integrated-report.md');
      console.log('');
      console.log('This generates a prompt that REFERENCES files (for API use)');
      console.log('instead of embedding full content (for web chat use).');
      process.exit(1);
    }

    const extractor = new LLMExtractorAPI();
    await extractor.extractRules(process.argv[2], process.argv[3]);
  })();
}
