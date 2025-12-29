/**
 * Convert ANTLR-generated ES6 modules to CommonJS
 */

const fs = require('fs');
const path = require('path');

const generatedDir = path.join(__dirname, 'src', 'generated');
const files = fs.readdirSync(generatedDir).filter(f => f.endsWith('.js'));

files.forEach(file => {
  const filePath = path.join(generatedDir, file);
  let content = fs.readFileSync(filePath, 'utf-8');

  console.log(`Converting ${file}...`);

  // Convert import statements
  content = content.replace(
    /import\s+(\w+)\s+from\s+['"](.+?)['"]/g,
    'const $1 = require(\'$2\')'
  );

  // Convert import { ... } from statements
  content = content.replace(
    /import\s+\{([^}]+)\}\s+from\s+['"](.+?)['"]/g,
    'const { $1 } = require(\'$2\')'
  );

  // Convert export default class
  content = content.replace(
    /export\s+default\s+class\s+(\w+)/g,
    'class $1'
  );

  // Add module.exports at the end for default exports
  const classMatch = content.match(/class\s+(\w+)\s+extends/);
  if (classMatch) {
    const className = classMatch[1];
    if (!content.includes(`module.exports = ${className}`)) {
      content += `\n\nmodule.exports = { ${className} };\n`;
    }
  }

  // Fix antlr4 require path (it should be just 'antlr4' not './antlr4')
  content = content.replace(
    /require\(['"]\.\/antlr4['"]\)/g,
    'require(\'antlr4\')'
  );

  fs.writeFileSync(filePath, content, 'utf-8');
  console.log(`✅ Converted ${file}`);
});

console.log('\n✅ All files converted to CommonJS');
