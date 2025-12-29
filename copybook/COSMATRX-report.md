# COBOL Copybook Analysis Report

## Summary

- Total Fields: 396
- Business Rules: 16
- Conditions (88-levels): 14
- Validations: 379
- Includes (COPY): 0
- Redefines: 2

## Business Rules Extracted

### RULE-1: FILLER

- **Type**: DATA_DEFINITION
- **Field**: FILLER
- **Description**: FILLER provides alternate view of COS-MATRIX
- **Line Number**: 734
- **COBOL Code**:
```cobol
01  FILLER REDEFINES COS-MATRIX.                                 03850047
```

### RULE-2: M-LEVEL-N

- **Type**: DATA_DEFINITION
- **Field**: M-LEVEL-N
- **Description**: M-LEVEL-N provides alternate view of M-LEVEL
- **Line Number**: 740
- **COBOL Code**:
```cobol
10  M-LEVEL-N REDEFINES M-LEVEL     PIC 9(02).           03910068
```

### RULE-3: INCLUDE

- **Type**: VALIDATION
- **Field**: M-INCL-EXCL
- **Description**: INCLUDE: When value equals I
- **Line Number**: 742
- **COBOL Code**:
```cobol
88  INCLUDE                 VALUE 'I'.               03930073
```

### RULE-4: EXCLUDE

- **Type**: VALIDATION
- **Field**: M-INCL-EXCL
- **Description**: EXCLUDE: When value equals E
- **Line Number**: 743
- **COBOL Code**:
```cobol
88  EXCLUDE                 VALUE 'E'.               03940073
```

### RULE-5: CLAIM-TYPE

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: CLAIM-TYPE: When value equals CTYPE
- **Line Number**: 745
- **COBOL Code**:
```cobol
88  CLAIM-TYPE              VALUE 'CTYPE'.           03960073
```

### RULE-6: CLINIC-CODE

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: CLINIC-CODE: When value equals CLINC
- **Line Number**: 746
- **COBOL Code**:
```cobol
88  CLINIC-CODE             VALUE 'CLINC'.           03961076
```

### RULE-7: FACILITY-CONTROL-CODE

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: FACILITY-CONTROL-CODE: When value equals FACCC
- **Line Number**: 747
- **COBOL Code**:
```cobol
88  FACILITY-CONTROL-CODE   VALUE 'FACCC'.           03970073
```

### RULE-8: PROCEDURE-CODE

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROCEDURE-CODE: When value equals PROC 
- **Line Number**: 748
- **COBOL Code**:
```cobol
88  PROCEDURE-CODE          VALUE 'PROC '.           03980073
```

### RULE-9: PROCEDURE-AND-MODS

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROCEDURE-AND-MODS: When value equals PROCM
- **Line Number**: 749
- **COBOL Code**:
```cobol
88  PROCEDURE-AND-MODS      VALUE 'PROCM'.           03990073
```

### RULE-10: PROCEDURE-MOD-ONLY

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROCEDURE-MOD-ONLY: When value equals PMOD 
- **Line Number**: 750
- **COBOL Code**:
```cobol
88  PROCEDURE-MOD-ONLY      VALUE 'PMOD '.           04000074
```

### RULE-11: PROGRAM-STATUS

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROGRAM-STATUS: When value equals PSTAT
- **Line Number**: 751
- **COBOL Code**:
```cobol
88  PROGRAM-STATUS          VALUE 'PSTAT'.           04010073
```

### RULE-12: PROVIDER-SPECIALTY

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROVIDER-SPECIALTY: When value equals PSPEC
- **Line Number**: 752
- **COBOL Code**:
```cobol
88  PROVIDER-SPECIALTY      VALUE 'PSPEC'.           04020073
```

### RULE-13: PROVIDER-TYPE

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: PROVIDER-TYPE: When value equals PTYPE
- **Line Number**: 753
- **COBOL Code**:
```cobol
88  PROVIDER-TYPE           VALUE 'PTYPE'.           04030073
```

### RULE-14: SPECIAL-PROGRAM

- **Type**: VALIDATION
- **Field**: M-DATA-ELEMENT
- **Description**: SPECIAL-PROGRAM: When value equals SPROG
- **Line Number**: 754
- **COBOL Code**:
```cobol
88  SPECIAL-PROGRAM         VALUE 'SPROG'.           04040073
```

### RULE-15: RANGE

- **Type**: VALIDATION
- **Field**: M-RANGE-OR-LIST
- **Description**: RANGE: When value equals R
- **Line Number**: 756
- **COBOL Code**:
```cobol
88  RANGE                   VALUE 'R'.               04060073
```

### RULE-16: LIST-OR-VALUE

- **Type**: VALIDATION
- **Field**: M-RANGE-OR-LIST
- **Description**: LIST-OR-VALUE: When value equals V
- **Line Number**: 757
- **COBOL Code**:
```cobol
88  LIST-OR-VALUE           VALUE 'V'.               04070073
```

## Data Structure

| Level | Field Name | Type | Picture | Default Value | Line |
|-------|------------|------|---------|---------------|------|
| 01 | COS-MATRIX | GROUP | - | - | 1 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00190054 | 2 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00210054 | 4 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00230054 | 6 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00250054 | 8 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00270054 | 10 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00290054 | 12 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00310053 | 14 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00330053 | 16 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00350053 | 18 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00370054 | 20 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00390054 | 22 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00410059 | 24 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00430054 | 26 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00450054 | 28 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00470054 | 30 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00490059 | 32 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00510054 | 34 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00530053 | 36 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00550054 | 38 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00570054 | 40 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00590054 | 42 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00610054 | 44 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00630054 | 46 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00650055 | 48 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00670055 | 50 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00690055 | 52 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00710054 | 54 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00730053 | 56 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00750045 | 58 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00770047 | 60 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00790053 | 62 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00770047 | 64 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00790053 | 66 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 01330062 | 68 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00790053 | 70 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00810053 | 72 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00830057 | 74 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00850060 | 76 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00870057 | 78 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00890060 | 80 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00910057 | 82 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00770047 | 84 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 01330062 | 86 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 01330062 | 88 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00770047 | 90 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 01330062 | 92 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00770047 | 94 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 01330062 | 96 |
| 05 | FILLER | ALPHANUMERIC | X(57) | 00910057 | 98 |

*... and 346 more fields*

