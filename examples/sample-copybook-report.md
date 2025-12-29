# COBOL Copybook Analysis Report

## Summary

- Total Fields: 35
- Business Rules: 14
- Conditions (88-levels): 13
- Validations: 13
- Includes (COPY): 0
- Redefines: 1

## Business Rules Extracted

### RULE-1: ELIGIBLE

- **Type**: VALIDATION
- **Field**: ELIGIBILITY-STATUS
- **Description**: ELIGIBLE: When value equals E
- **Line Number**: 9
- **COBOL Code**:
```cobol
88  ELIGIBLE              VALUE 'E'.
```

### RULE-2: INELIGIBLE

- **Type**: VALIDATION
- **Field**: ELIGIBILITY-STATUS
- **Description**: INELIGIBLE: When value equals I
- **Line Number**: 10
- **COBOL Code**:
```cobol
88  INELIGIBLE            VALUE 'I'.
```

### RULE-3: PENDING

- **Type**: VALIDATION
- **Field**: ELIGIBILITY-STATUS
- **Description**: PENDING: When value equals P
- **Line Number**: 11
- **COBOL Code**:
```cobol
88  PENDING               VALUE 'P'.
```

### RULE-4: EARNED-INCOME

- **Type**: VALIDATION
- **Field**: INCOME-TYPE
- **Description**: EARNED-INCOME: When value equals 01
- **Line Number**: 14
- **COBOL Code**:
```cobol
88  EARNED-INCOME         VALUE 01.
```

### RULE-5: UNEARNED-INCOME

- **Type**: VALIDATION
- **Field**: INCOME-TYPE
- **Description**: UNEARNED-INCOME: When value equals 02
- **Line Number**: 15
- **COBOL Code**:
```cobol
88  UNEARNED-INCOME       VALUE 02.
```

### RULE-6: SSI-INCOME

- **Type**: VALIDATION
- **Field**: INCOME-TYPE
- **Description**: SSI-INCOME: When value equals 03
- **Line Number**: 16
- **COBOL Code**:
```cobol
88  SSI-INCOME            VALUE 03.
```

### RULE-7: PENSION-INCOME

- **Type**: VALIDATION
- **Field**: INCOME-TYPE
- **Description**: PENSION-INCOME: When value equals 04
- **Line Number**: 17
- **COBOL Code**:
```cobol
88  PENSION-INCOME        VALUE 04.
```

### RULE-8: BELOW-100-PERCENT

- **Type**: VALIDATION
- **Field**: POVERTY-LEVEL-PERCENT
- **Description**: BELOW-100-PERCENT: When value is between 000 and 100
- **Line Number**: 20
- **COBOL Code**:
```cobol
88  BELOW-100-PERCENT     VALUE 000 THRU 100.
```

### RULE-9: BETWEEN-100-150

- **Type**: VALIDATION
- **Field**: POVERTY-LEVEL-PERCENT
- **Description**: BETWEEN-100-150: When value is between 101 and 150
- **Line Number**: 21
- **COBOL Code**:
```cobol
88  BETWEEN-100-150       VALUE 101 THRU 150.
```

### RULE-10: ABOVE-150-PERCENT

- **Type**: VALIDATION
- **Field**: POVERTY-LEVEL-PERCENT
- **Description**: ABOVE-150-PERCENT: When value is between 151 and 999
- **Line Number**: 22
- **COBOL Code**:
```cobol
88  ABOVE-150-PERCENT     VALUE 151 THRU 999.
```

### RULE-11: US-CITIZEN

- **Type**: VALIDATION
- **Field**: CITIZENSHIP-CODE
- **Description**: US-CITIZEN: When value equals C
- **Line Number**: 24
- **COBOL Code**:
```cobol
88  US-CITIZEN            VALUE 'C'.
```

### RULE-12: PERMANENT-RESIDENT

- **Type**: VALIDATION
- **Field**: CITIZENSHIP-CODE
- **Description**: PERMANENT-RESIDENT: When value equals P
- **Line Number**: 25
- **COBOL Code**:
```cobol
88  PERMANENT-RESIDENT    VALUE 'P'.
```

### RULE-13: NON-CITIZEN

- **Type**: VALIDATION
- **Field**: CITIZENSHIP-CODE
- **Description**: NON-CITIZEN: When value equals N
- **Line Number**: 26
- **COBOL Code**:
```cobol
88  NON-CITIZEN           VALUE 'N'.
```

### RULE-14: ADDRESS-INFO

- **Type**: DATA_DEFINITION
- **Field**: ADDRESS-INFO
- **Description**: ADDRESS-INFO provides alternate view of PATIENT-RECORD
- **Line Number**: 33
- **COBOL Code**:
```cobol
01  ADDRESS-INFO REDEFINES PATIENT-RECORD.
```

## Data Structure

| Level | Field Name | Type | Picture | Default Value | Line |
|-------|------------|------|---------|---------------|------|
| 01 | PATIENT-RECORD | GROUP | - | - | 2 |
| 05 | PATIENT-ID | NUMERIC | 9(10) | - | 3 |
| 05 | PATIENT-NAME | GROUP | - | - | 4 |
| 10 | FIRST-NAME | ALPHANUMERIC | X(20) | - | 5 |
| 10 | LAST-NAME | ALPHANUMERIC | X(30) | - | 6 |
| 05 | DATE-OF-BIRTH | NUMERIC | 9(8) | - | 7 |
| 05 | ELIGIBILITY-STATUS | ALPHANUMERIC | X(1) | - | 8 |
| 88 | ELIGIBLE | GROUP | - | 'E' | 9 |
| 88 | INELIGIBLE | GROUP | - | 'I' | 10 |
| 88 | PENDING | GROUP | - | 'P' | 11 |
| 05 | INCOME-AMOUNT | NUMERIC | 9(7)V99 | - | 12 |
| 05 | INCOME-TYPE | NUMERIC | 9(2) | - | 13 |
| 88 | EARNED-INCOME | GROUP | - | 01 | 14 |
| 88 | UNEARNED-INCOME | GROUP | - | 02 | 15 |
| 88 | SSI-INCOME | GROUP | - | 03 | 16 |
| 88 | PENSION-INCOME | GROUP | - | 04 | 17 |
| 05 | HOUSEHOLD-SIZE | NUMERIC | 9(2) | - | 18 |
| 05 | POVERTY-LEVEL-PERCENT | NUMERIC | 9(3) | - | 19 |
| 88 | BELOW-100-PERCENT | GROUP | - | 000 | 20 |
| 88 | BETWEEN-100-150 | GROUP | - | 101 | 21 |
| 88 | ABOVE-150-PERCENT | GROUP | - | 151 | 22 |
| 05 | CITIZENSHIP-CODE | ALPHANUMERIC | X(1) | - | 23 |
| 88 | US-CITIZEN | GROUP | - | 'C' | 24 |
| 88 | PERMANENT-RESIDENT | GROUP | - | 'P' | 25 |
| 88 | NON-CITIZEN | GROUP | - | 'N' | 26 |
| 05 | STATE-CODE | ALPHANUMERIC | X(2) | - | 27 |
| 05 | MEDICAID-ID | ALPHANUMERIC | X(15) | - | 28 |
| 05 | COVERAGE-START-DATE | NUMERIC | 9(8) | - | 29 |
| 05 | COVERAGE-END-DATE | NUMERIC | 9(8) | - | 30 |
| 01 | ADDRESS-INFO | GROUP | - | - | 33 |
| 05 | FILLER | ALPHANUMERIC | X(60) | - | 34 |
| 05 | ADDRESS-STREET | ALPHANUMERIC | X(50) | - | 35 |
| 05 | ADDRESS-CITY | ALPHANUMERIC | X(30) | - | 36 |
| 05 | ADDRESS-STATE | ALPHANUMERIC | X(2) | - | 37 |
| 05 | ADDRESS-ZIP | ALPHANUMERIC | X(10) | - | 38 |

