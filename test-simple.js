import { IntegratedParser } from './src/integrated-parser.js';

console.log('Creating parser...');
const parser = new IntegratedParser();

console.log('Parsing test content...');
const testContent = `       01  TEST-FIELD PIC X(10).`;

try {
  const result = await parser.parseContent(testContent, 'test.cbl');
  console.log('SUCCESS!');
  console.log('Fields found:', result.cobolStructure.fields.length);
} catch (error) {
  console.error('ERROR:', error);
}
