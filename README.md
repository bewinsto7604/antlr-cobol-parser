# ANTLR COBOL Copybook Parser

A Node.js parser for COBOL copybooks that extracts business rules, data structures, and validations.

## Features

- ✅ Parse COBOL copybook structure
- ✅ Extract 88-level conditions (business rules)
- ✅ Identify data fields with PIC clauses
- ✅ Detect REDEFINES clauses
- ✅ Find COPY statements (includes)
- ✅ Extract VALUE clauses (default values)
- ✅ Generate markdown reports
- ✅ Output JSON structure

## Installation

```bash
cd antlr-cobol-parser
npm install
```

## Usage

### Parse a copybook file:

```bash
npm run parse examples/sample-copybook.cbl
```

### Use as a library:

```javascript
import { CobolCopybookParser } from './src/index.js';

const parser = new CobolCopybookParser();
const result = parser.parseCopybook('path/to/copybook.cbl');

console.log(result.businessRules);
console.log(result.fields);
console.log(result.conditions);
```

## Output Structure

```json
{
  "fields": [
    {
      "level": "05",
      "name": "ELIGIBILITY-STATUS",
      "picture": "X(1)",
      "value": null,
      "lineNumber": 8,
      "type": "ALPHANUMERIC"
    }
  ],
  "conditions": [
    {
      "name": "ELIGIBLE",
      "values": "'E'",
      "lineNumber": 9,
      "cobolCode": "88  ELIGIBLE              VALUE 'E'."
    }
  ],
  "businessRules": [
    {
      "ruleId": "RULE-1",
      "type": "VALIDATION",
      "field": "ELIGIBILITY-STATUS",
      "conditionName": "ELIGIBLE",
      "description": "ELIGIBLE: When value equals E",
      "lineNumber": 9,
      "cobolCode": "88  ELIGIBLE              VALUE 'E'."
    }
  ],
  "includes": [],
  "redefines": [],
  "validations": []
}
```

## Extracted Business Rules

The parser automatically generates human-readable descriptions:

- **88-level conditions** → Validation rules
- **VALUE clauses** → Default value rules
- **REDEFINES** → Alternate data view rules
- **PIC clauses** → Data type constraints

## Example Output

```
📊 PARSING RESULTS:

Total Fields: 18
Business Rules: 12
Conditions (88-levels): 12
Validations: 0
Includes (COPY): 0
Redefines: 1

📝 Business Rules Extracted:

RULE-1: ELIGIBLE
- Type: VALIDATION
- Field: ELIGIBILITY-STATUS
- Description: ELIGIBLE: When value equals E
- Line Number: 9
- COBOL Code: 88  ELIGIBLE              VALUE 'E'.
```

## Supported COBOL Features

| Feature | Supported | Notes |
|---------|-----------|-------|
| Data fields (01-49) | ✅ | Full support |
| 88-level conditions | ✅ | Full support |
| PIC clauses | ✅ | X, 9, A, S types |
| VALUE clauses | ✅ | Default values |
| REDEFINES | ✅ | Alternate views |
| COPY statements | ✅ | Include detection |
| OCCURS | ⚠️ | Basic support |
| COMPUTE | ❌ | Not yet |
| IF/EVALUATE | ❌ | Procedure division only |

## Next Steps

To enhance with full ANTLR grammar:

1. Install COBOL ANTLR grammar
2. Generate parser from grammar
3. Walk the parse tree
4. Extract semantic information

## License

MIT
