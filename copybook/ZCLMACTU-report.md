# COBOL Copybook Analysis Report

## Summary

- Total Fields: 156
- Business Rules: 17
- Conditions (88-levels): 17
- Validations: 17
- Includes (COPY): 0
- Redefines: 0

## Business Rules Extracted

### RULE-1: A-SUBM-SEMI-SPEC-ED

- **Type**: VALIDATION
- **Field**: 05
- **Description**: A-SUBM-SEMI-SPEC-ED: When value equals A111111
- **Line Number**: 90
- **COBOL Code**:
```cobol
88 A-SUBM-SEMI-SPEC-ED      VALUE 'A111111'.
```

### RULE-2: NOT-GUARANTEE

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: NOT-GUARANTEE: When value equals N
- **Line Number**: 2033
- **COBOL Code**:
```cobol
88  NOT-GUARANTEE       VALUE 'N'.
```

### RULE-3: GUARANTEE

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: GUARANTEE: When value equals Y
- **Line Number**: 2034
- **COBOL Code**:
```cobol
88  GUARANTEE           VALUE 'Y'.
```

### RULE-4: IN-PLAN

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: IN-PLAN: When value equals Y
- **Line Number**: 2070
- **COBOL Code**:
```cobol
88  IN-PLAN                 VALUE 'Y'.
```

### RULE-5: OUT-OF-PLAN

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: OUT-OF-PLAN: When value equals N
- **Line Number**: 2071
- **COBOL Code**:
```cobol
88  OUT-OF-PLAN             VALUE 'N'.
```

### RULE-6: UNABLE-TO-DETERMINE

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: UNABLE-TO-DETERMINE: When value equals U
- **Line Number**: 2072
- **COBOL Code**:
```cobol
88  UNABLE-TO-DETERMINE     VALUE 'U'.
```

### RULE-7: HMO-FAMILY-PLAN

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: HMO-FAMILY-PLAN: When value equals Y
- **Line Number**: 2074
- **COBOL Code**:
```cobol
88  HMO-FAMILY-PLAN             VALUE 'Y'.
```

### RULE-8: NOT-HMO-FAMILY-PLAN

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: NOT-HMO-FAMILY-PLAN: When value equals   N
- **Line Number**: 2075
- **COBOL Code**:
```cobol
88  NOT-HMO-FAMILY-PLAN         VALUE ' ' 'N'.
```

### RULE-9: CSOCI-ENROLLED

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: CSOCI-ENROLLED: When value equals Y
- **Line Number**: 2083
- **COBOL Code**:
```cobol
88  CSOCI-ENROLLED              VALUE 'Y'.           10752000
```

### RULE-10: NOT-CSOCI-ENROLLED

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: NOT-CSOCI-ENROLLED: When value equals N
- **Line Number**: 2084
- **COBOL Code**:
```cobol
88  NOT-CSOCI-ENROLLED          VALUE 'N'.           10753000
```

### RULE-11: CSOCI-ENROLLED-NFM

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: CSOCI-ENROLLED-NFM: When value equals C
- **Line Number**: 2085
- **COBOL Code**:
```cobol
88  CSOCI-ENROLLED-NFM          VALUE 'C'.
```

### RULE-12: CSOCI-COVERED-MENTAL-HEALTH

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: CSOCI-COVERED-MENTAL-HEALTH: When value equals M
- **Line Number**: 2089
- **COBOL Code**:
```cobol
88  CSOCI-COVERED-MENTAL-HEALTH VALUE 'M'.           10755000
```

### RULE-13: NOT-CSOCI-COVERED

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: NOT-CSOCI-COVERED: When value equals N
- **Line Number**: 2092
- **COBOL Code**:
```cobol
88  NOT-CSOCI-COVERED           VALUE 'N'.           10756000
```

### RULE-14: CSOCI-UNKNOWN

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: CSOCI-UNKNOWN: When value equals U
- **Line Number**: 2093
- **COBOL Code**:
```cobol
88  CSOCI-UNKNOWN               VALUE 'U'.           12190001
```

### RULE-15: BYPASS-ON

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: BYPASS-ON: When value equals O
- **Line Number**: 2095
- **COBOL Code**:
```cobol
88  BYPASS-ON                   VALUE 'O'.           10755000
```

### RULE-16: BYPASS-USED

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: BYPASS-USED: When value equals U
- **Line Number**: 2096
- **COBOL Code**:
```cobol
88  BYPASS-USED                 VALUE 'U'.           10755100
```

### RULE-17: NO-BYPASS

- **Type**: VALIDATION
- **Field**: FILLER
- **Description**: NO-BYPASS: When value equals  
- **Line Number**: 2097
- **COBOL Code**:
```cobol
88  NO-BYPASS                   VALUE ' '.           10756000
```

## Data Structure

| Level | Field Name | Type | Picture | Default Value | Line |
|-------|------------|------|---------|---------------|------|
| 88 | CHARITY-CARE | GROUP | - | - | 9 |
| 21 | THRU | GROUP | - | - | 32 |
| 04 | 05 | GROUP | - | - | 35 |
| 88 | A-SUBM-SEMI-SPEC-ED | GROUP | - | 'A111111' | 90 |
| 10 | FILLER | GROUP | - | - | 124 |
| 20 | FILLER | ALPHANUMERIC | X(03) | - | 128 |
| 15 | FILLER | GROUP | - | - | 129 |
| 15 | FILLER | GROUP | - | - | 160 |
| 10 | FILLER | GROUP | - | - | 172 |
| 20 | FILLER | ALPHANUMERIC | X(03) | - | 176 |
| 10 | FILLER | GROUP | - | - | 178 |
| 15 | FILLER | ALPHANUMERIC | X(09) | - | 180 |
| 15 | FILLER | ALPHANUMERIC | X(2) | - | 214 |
| 15 | FILLER | ALPHANUMERIC | X(4) | - | 1127 |
| 10 | FILLER | GROUP | - | - | 1135 |
| 10 | FILLER | GROUP | - | - | 1141 |
| 15 | FILLER | ALPHANUMERIC | X(1) | - | 1302 |
| 10 | FILL-A-FIS-FFP-IND | ALPHANUMERIC | X(1) | - | 1327 |
| 10 | FILL-A-ORIG-FIS-FFP-IND | ALPHANUMERIC | X(1) | - | 1352 |
| 20 | FILLER | ALPHANUMERIC | X(3) | - | 1358 |
| 28 | THRU | GROUP | - | - | 1439 |
| 34 | THRU | GROUP | - | - | 1440 |
| 13 | 18 | GROUP | - | - | 1441 |
| 15 | FILLER | ALPHANUMERIC | X(17) | - | 1506 |
| 15 | FILL-A-CARRIER-CDE | ALPHANUMERIC | X(6) | - | 1555 |
| 15 | FILL-A-CARR-APPROVED-AMOUNT | NUMERIC | 9(2) | - | 1557 |
| 15 | FILL-A-CARR-PAID-AMOUNT | NUMERIC | 9(2) | - | 1559 |
| 15 | FILL-A-CARR-PARTA-EXHAUST-CHGS | NUMERIC | 9(4) | - | 1561 |
| 15 | FILLER | ALPHANUMERIC | X(36) | - | 1566 |
| 15 | FILLER | ALPHANUMERIC | X(11) | - | 1652 |
| 10 | FILLER | GROUP | - | - | 1653 |
| 15 | FILLER | ALPHANUMERIC | X(16) | - | 1654 |
| 15 | FILLER | GROUP | - | - | 1663 |
| 25 | FILLER | ALPHANUMERIC | X(4) | - | 1992 |
| 25 | FILLER | ALPHANUMERIC | X(3) | - | 2000 |
| 25 | FILLER | ALPHANUMERIC | X(2) | - | 2008 |
| 88 | A-CLM-MC-PLAN-CODE-GHI | GROUP | - | - | 2029 |
| 88 | NOT-GUARANTEE | GROUP | - | 'N' | 2033 |
| 88 | GUARANTEE | GROUP | - | 'Y' | 2034 |
| 20 | FILLER | ALPHANUMERIC | X(02) | - | 2065 |
| 88 | IN-PLAN | GROUP | - | 'Y' | 2070 |
| 88 | OUT-OF-PLAN | GROUP | - | 'N' | 2071 |
| 88 | UNABLE-TO-DETERMINE | GROUP | - | 'U' | 2072 |
| 88 | HMO-FAMILY-PLAN | GROUP | - | 'Y' | 2074 |
| 88 | NOT-HMO-FAMILY-PLAN | GROUP | - | ' | 2075 |
| 88 | CSOCI-ENROLLED | GROUP | - | 'Y' | 2083 |
| 88 | NOT-CSOCI-ENROLLED | GROUP | - | 'N' | 2084 |
| 88 | CSOCI-ENROLLED-NFM | GROUP | - | 'C' | 2085 |
| 88 | CSOCI-COVERED-MENTAL-HEALTH | GROUP | - | 'M' | 2089 |
| 88 | CSOCI-COVERED-SUBSTANCE-ABUSE | GROUP | - | - | 2090 |

*... and 106 more fields*

