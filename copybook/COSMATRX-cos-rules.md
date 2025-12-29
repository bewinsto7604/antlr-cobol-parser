# COS Matrix Analysis Report

## Summary

- **Total COS Categories**: 19
- **Total Assignment Rules**: 232

## COS Assignment Rules

### COS 01A: INPAT GENL HOSP

- **Priority**: 00
- **Line Number**: 2
- **Assignment Rules**: 2 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 01
   - **Line**: 4
   - **COBOL**: `                    01ICTYPEV01                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 60
   - **Line**: 6
   - **COBOL**: `                    02IPTYPEV60                          `

#### Business Rule:

Category **01A** (INPAT GENL HOSP) is assigned when:

**Claim Type** is `01`

AND **Provider Type** is `60`



---

### COS 01B: INPAT OTHER HOSP

- **Priority**: 00
- **Line Number**: 8
- **Assignment Rules**: 7 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 01
   - **Line**: 10
   - **COBOL**: `                    01ICTYPEV01                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 65
   - **Line**: 12
   - **COBOL**: `                    02IPTYPEV65                          `

3. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 59
   - **Line**: 16
   - **COBOL**: `                    01IPTYPEV59                          `

4. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Program Status (PSTAT)
   - **Type**: VALUE
   - **Values**: 641
   - **Line**: 18
   - **COBOL**: `                    02EPSTATV641                         `

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 64, 69
   - **Line**: 22
   - **COBOL**: `                    01IPTYPEV64     69                   `

6. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 01, 02
   - **Line**: 24
   - **COBOL**: `                    02ICTYPEV01     02                   `

7. ✅ **INCLUDE** - Level 3
   - **Data Element**: Facility Control Code (FACCC)
   - **Type**: VALUE
   - **Values**: 4, 5, 6, 9
   - **Line**: 26
   - **COBOL**: `                    03IFACCCV4      5      6      9      `

#### Business Rule:

Category **01B** (INPAT OTHER HOSP) is assigned when:

**Claim Type** is `01` AND **Provider Type** is `59` AND **Provider Type** is `64`, `69`

AND **Provider Type** is `65` AND **Program Status** is NOT `641` AND **Claim Type** is `01`, `02`

AND **Facility Control Code** is `4`, `5`, `6`, `9`



---

### COS 03C: INPAT MH - OTHER

- **Priority**: 00
- **Line Number**: 28
- **Assignment Rules**: 3 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 64, 69
   - **Line**: 30
   - **COBOL**: `                    01IPTYPEV64     69                   `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 01, 02
   - **Line**: 32
   - **COBOL**: `                    02ICTYPEV01     02                   `

3. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Facility Control Code (FACCC)
   - **Type**: VALUE
   - **Values**: 4, 5, 6, 9
   - **Line**: 34
   - **COBOL**: `                    03EFACCCV4      5      6      9      `

#### Business Rule:

Category **03C** (INPAT MH - OTHER) is assigned when:

**Provider Type** is `64`, `69`

AND **Claim Type** is `01`, `02`

AND **Facility Control Code** is NOT `4`, `5`, `6`, `9`



---

### COS 04A: OUTPAT / EPSDT

- **Priority**: 00
- **Line Number**: 36
- **Assignment Rules**: 4 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 03
   - **Line**: 38
   - **COBOL**: `                    01ICTYPEV03                          `

2. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Clinic Code (CLINC)
   - **Type**: VALUE
   - **Values**: 27
   - **Line**: 40
   - **COBOL**: `                    02ECLINCV27                          `

3. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 03
   - **Line**: 44
   - **COBOL**: `                    01ICTYPEV03                          `

4. ✅ **INCLUDE** - Level 2
   - **Data Element**: Clinic Code (CLINC)
   - **Type**: VALUE
   - **Values**: 27
   - **Line**: 46
   - **COBOL**: `                    02ICLINCV27                          `

#### Business Rule:

Category **04A** (OUTPAT / EPSDT) is assigned when:

**Claim Type** is `03` AND **Claim Type** is `03`

AND **Clinic Code** is NOT `27` AND **Clinic Code** is `27`



---

### COS 04C: EPSDT

- **Priority**: 00
- **Line Number**: 48
- **Assignment Rules**: 9 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 60, 65
   - **Line**: 50
   - **COBOL**: `                    01IPTYPEV60     65                   `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 13
   - **Line**: 52
   - **COBOL**: `                    02ICTYPEV13                          `

3. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 88
   - **Line**: 56
   - **COBOL**: `                    01IPTYPEV88                          `

4. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 819, 822, 824
   - **Line**: 60
   - **COBOL**: `                    01IPSPECV819    822    824           `

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 813
   - **Line**: 62
   - **COBOL**: `                    01IPSPECV813                         `

6. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: T1017TJ
   - **Line**: 64
   - **COBOL**: `                    02EPROCMVT1017TJ                     `

7. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0006HAT2022HA
   - **Line**: 66
   - **COBOL**: `                    01IPROCMVH0006HAT2022HA              `

8. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 68
   - **COBOL**: `                    02EPMOD V22                          `

9. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 80
   - **Line**: 72
   - **COBOL**: `                    01IPTYPEV80                          `

#### Business Rule:

Category **04C** (EPSDT) is assigned when:

**Provider Type** is `60`, `65` AND **Provider Type** is `88` AND **Provider Specialty** is `819`, `822`, `824` AND **Provider Specialty** is `813` AND **Procedure Code with Modifiers** is `H0006HAT2022HA` AND **Provider Type** is `80`

AND **Claim Type** is `13` AND **Procedure Code with Modifiers** is NOT `T1017TJ` AND **Procedure Modifier Only** is NOT `22`



---

### COS 08A: COMM HLTH CLINIC

- **Priority**: 00
- **Line Number**: 74
- **Assignment Rules**: 9 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 950
   - **Line**: 76
   - **COBOL**: `                    01IPSPECV950                         `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 24
   - **Line**: 78
   - **COBOL**: `                    02IPTYPEV24                          `

3. ✅ **INCLUDE** - Level 3
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 13, 18
   - **Line**: 80
   - **COBOL**: `                    03ICTYPEV13     18                   `

4. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: 90792, 90863, 90887, 96152
   - **Line**: 82
   - **COBOL**: `                    01IPROC V90792  90863  90887  96152  `

5. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HA
   - **Line**: 88
   - **COBOL**: `                    02IPMOD VHA                          `

6. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832HA90837HA90846HA90847HA
   - **Line**: 90
   - **COBOL**: `                    01IPROCMV90832HA90837HA90846HA90847HA`

7. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 92
   - **COBOL**: `                    02IPMOD V22                          `

8. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90791AJ
   - **Line**: 94
   - **COBOL**: `                    01IPROCMV90791AJ                     `

9. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HF, HE
   - **Line**: 96
   - **COBOL**: `                    02EPMOD VHF     HE                   `

#### Business Rule:

Category **08A** (COMM HLTH CLINIC) is assigned when:

**Provider Specialty** is `950` AND **Procedure Code** is `90792`, `90863`, `90887`, `96152` AND **Procedure Code with Modifiers** is `90832HA90837HA90846HA90847HA` AND **Procedure Code with Modifiers** is `90791AJ`

AND **Provider Type** is `24` AND **Procedure Modifier Only** is `HA` AND **Procedure Modifier Only** is `22` AND **Procedure Modifier Only** is NOT `HF`, `HE`

AND **Claim Type** is `13`, `18`



---

### COS 08B: MNTL HLTH CLINIC

- **Priority**: 00
- **Line Number**: 98
- **Assignment Rules**: 26 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 920, 940
   - **Line**: 100
   - **COBOL**: `                    01IPSPECV920    940                  `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 24
   - **Line**: 102
   - **COBOL**: `                    02IPTYPEV24                          `

3. ✅ **INCLUDE** - Level 3
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 18
   - **Line**: 104
   - **COBOL**: `                    03ICTYPEV18                          `

4. ✅ **INCLUDE** - Level 4
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HH
   - **Line**: 106
   - **COBOL**: `                    04IPMOD VHH                          `

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 940
   - **Line**: 108
   - **COBOL**: `                    01IPSPECV940                         `

6. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 24
   - **Line**: 110
   - **COBOL**: `                    02IPTYPEV24                          `

7. ✅ **INCLUDE** - Level 3
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 13, 18
   - **Line**: 112
   - **COBOL**: `                    03ICTYPEV13     18                   `

8. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90791HAH0010HAS9125HAH2015HM
   - **Line**: 114
   - **COBOL**: `                    01IPROCMV90791HAH0010HAS9125HAH2015HM`

9. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0045HA
   - **Line**: 116
   - **COBOL**: `                    01IPROCMVH0045HA                     `

10. ❌ **EXCLUDE** - Level 2
   - **Data Element**: PMOD VT (PMOD VT)
   - **Type**: VALUE
   - **Values**: 
   - **Line**: 118
   - **COBOL**: `                    02EPMOD VTV                          `

11. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832HA
   - **Line**: 120
   - **COBOL**: `                    01IPROCMV90832HA                     `

12. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 122
   - **COBOL**: `                    02EPMOD V22                          `

13. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2015HAH2016HA
   - **Line**: 124
   - **COBOL**: `                    01IPROCMVH2015HAH2016HA              `

14. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HN, HO
   - **Line**: 126
   - **COBOL**: `                    02IPMOD VHN     HO                   `

15. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: T2021
   - **Line**: 128
   - **COBOL**: `                    01IPROC VT2021                       `

16. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22, 52, HN, HO
   - **Line**: 130
   - **COBOL**: `                    02IPMOD V22     52     HN     HO     `

17. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HI
   - **Line**: 132
   - **COBOL**: `                    03EPMOD VHI                          `

18. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: Y9996, Y9998
   - **Line**: 134
   - **COBOL**: `                    01IPROC VY9996  Y9998                `

19. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 825
   - **Line**: 136
   - **COBOL**: `                    02IPSPECV825                         `

20. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2020HET2038HE
   - **Line**: 138
   - **COBOL**: `                    01IPROCMVH2020HET2038HE            `

21. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HU
   - **Line**: 140
   - **COBOL**: `                    02IPMOD VHU                          `

22. ✅ **INCLUDE** - Level 3
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 825
   - **Line**: 142
   - **COBOL**: `                    03IPSPECV825                         `

23. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: T2016HAT2033HA
   - **Line**: 144
   - **COBOL**: `                    01IPROCMVT2016HAT2033HA              `

24. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: RANGE
   - **Values**: U1, U5
   - **Line**: 146
   - **COBOL**: `                    02IPMOD RU1     U5                   `

25. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: T1028HA
   - **Line**: 148
   - **COBOL**: `                    01IPROCMVT1028HA                     `

26. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 150
   - **COBOL**: `                    02IPMOD V22                          `

#### Business Rule:

Category **08B** (MNTL HLTH CLINIC) is assigned when:

**Provider Specialty** is `920`, `940` AND **Provider Specialty** is `940` AND **Procedure Code with Modifiers** is `90791HAH0010HAS9125HAH2015HM` AND **Procedure Code with Modifiers** is `H0045HA` AND **Procedure Code with Modifiers** is `90832HA` AND **Procedure Code with Modifiers** is `H2015HAH2016HA` AND **Procedure Code** is `T2021` AND **Procedure Code** is `Y9996`, `Y9998` AND **Procedure Code with Modifiers** is `H2020HET2038HE` AND **Procedure Code with Modifiers** is `T2016HAT2033HA` AND **Procedure Code with Modifiers** is `T1028HA`

AND **Provider Type** is `24` AND **Provider Type** is `24` AND **PMOD VT** is NOT  AND **Procedure Modifier Only** is NOT `22` AND **Procedure Modifier Only** is `HN`, `HO` AND **Procedure Modifier Only** is `22`, `52`, `HN`, `HO` AND **Provider Specialty** is `825` AND **Procedure Modifier Only** is `HU` AND **Procedure Modifier Only** is `U1`, `U5` AND **Procedure Modifier Only** is `22`

AND **Claim Type** is `18` AND **Claim Type** is `13`, `18` AND **Procedure Modifier Only** is NOT `HI` AND **Provider Specialty** is `825`

AND **Procedure Modifier Only** is `HH`



---

### COS 08C: OTHER CLINIC

- **Priority**: 00
- **Line Number**: 152
- **Assignment Rules**: 8 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 24
   - **Line**: 154
   - **COBOL**: `                    01IPTYPEV24                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 13, 18
   - **Line**: 156
   - **COBOL**: `                    02ICTYPEV13     18                   `

3. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 910
   - **Line**: 158
   - **COBOL**: `                    03EPSPECV910                         `

4. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90791AJ
   - **Line**: 160
   - **COBOL**: `                    03EPROCMV90791AJ                     `

5. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 86580HA90791HA90792HA90832HA
   - **Line**: 162
   - **COBOL**: `                    03EPROCMV86580HA90791HA90792HA90832HA`

6. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90853HAT1006HA
   - **Line**: 170
   - **COBOL**: `                    01IPROCMV90853HAT1006HA              `

7. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0005HA
   - **Line**: 172
   - **COBOL**: `                    01IPROCMVH0005HA                     `

8. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: AJ
   - **Line**: 174
   - **COBOL**: `                    02IPMOD VAJ                          `

#### Business Rule:

Category **08C** (OTHER CLINIC) is assigned when:

**Provider Type** is `24` AND **Procedure Code with Modifiers** is `90853HAT1006HA` AND **Procedure Code with Modifiers** is `H0005HA`

AND **Claim Type** is `13`, `18` AND **Procedure Modifier Only** is `AJ`

AND **Provider Specialty** is NOT `910` AND **Procedure Code with Modifiers** is NOT `90791AJ` AND **Procedure Code with Modifiers** is NOT `86580HA90791HA90792HA90832HA`



---

### COS 08D: PDN - EPSDT

- **Priority**: 00
- **Line Number**: 176
- **Assignment Rules**: 40 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 44
   - **Line**: 178
   - **COBOL**: `                    01IPTYPEV44                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 18
   - **Line**: 180
   - **COBOL**: `                    02ICTYPEV18                          `

3. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S9123EPS9124EPZ1710EPZ1710WT
   - **Line**: 182
   - **COBOL**: `                    03IPROCMVS9123EPS9124EPZ1710EPZ1710WT`

4. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 08
   - **Line**: 190
   - **COBOL**: `                    01ICTYPEV08                          `

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 20, 25
   - **Line**: 194
   - **COBOL**: `                    01IPTYPEV20     25                   `

6. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 04, 13
   - **Line**: 196
   - **COBOL**: `                    02ICTYPEV04     13                   `

7. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: G0054, G0060, P0000, P9999
   - **Line**: 198
   - **COBOL**: `                    03EPROC RG0054  G0060  P0000  P9999  `

8. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5101STS5102STS5120STS8990ST
   - **Line**: 216
   - **COBOL**: `                    03EPROCMVS5101STS5102STS5120STS8990ST`

9. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0004STS5135ST97532ST
   - **Line**: 220
   - **COBOL**: `                    03EPROCMVH0004STS5135ST97532ST       `

10. ❌ **EXCLUDE** - Level 4
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 222
   - **COBOL**: `                    04EPMOD V22                          `

11. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 11
   - **Line**: 226
   - **COBOL**: `                    01ICTYPEV11                          `

12. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 43
   - **Line**: 228
   - **COBOL**: `                    02EPTYPEV43                          `

13. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 910
   - **Line**: 232
   - **COBOL**: `                    01IPSPECV910                         `

14. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 21
   - **Line**: 236
   - **COBOL**: `                    01ICTYPEV21                          `

15. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 05
   - **Line**: 240
   - **COBOL**: `                    01ICTYPEV05                          `

16. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 70
   - **Line**: 244
   - **COBOL**: `                    01IPTYPEV70                          `

17. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: P0000, P9999, Q0111, Q0116
   - **Line**: 246
   - **COBOL**: `                    02EPROC RP0000  P9999  Q0111  Q0116  `

18. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832AJ90834AJ90837AJ90846AJ
   - **Line**: 256
   - **COBOL**: `                    02EPROCMV90832AJ90834AJ90837AJ90846AJ`

19. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HF, HE
   - **Line**: 260
   - **COBOL**: `                    03EPMOD VHF     HE                   `

20. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 613, 614
   - **Line**: 262
   - **COBOL**: `                    02EPSPECV613    614                  `

21. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832HF90834HF90837HF90846HF
   - **Line**: 264
   - **COBOL**: `                    03EPROCMV90832HF90834HF90837HF90846HF`

22. ❌ **EXCLUDE** - Level 4
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HH
   - **Line**: 272
   - **COBOL**: `                    04EPMOD VHH                          `

23. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 19
   - **Line**: 276
   - **COBOL**: `                    01ICTYPEV19                          `

24. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 17
   - **Line**: 278
   - **COBOL**: `                    02ESPROGV17                          `

25. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Y7433, Y7570
   - **Line**: 280
   - **COBOL**: `                    03EPROC RY7433  Y7570                `

26. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5101STS5102STS5120STS8990ST
   - **Line**: 284
   - **COBOL**: `                    03EPROCMVS5101STS5102STS5120STS8990ST`

27. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0004STS5135ST97532ST
   - **Line**: 288
   - **COBOL**: `                    03EPROCMVH0004STS5135ST97532ST       `

28. ❌ **EXCLUDE** - Level 4
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 290
   - **COBOL**: `                    04EPMOD V22                          `

29. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 611
   - **Line**: 292
   - **COBOL**: `                    01IPSPECV611                         `

30. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832AJ90834AJ90837AJ90846AJ
   - **Line**: 294
   - **COBOL**: `                    02IPROCMV90832AJ90834AJ90837AJ90846AJ`

31. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HF, HE
   - **Line**: 298
   - **COBOL**: `                    03IPMOD VHF     HE                   `

32. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 70
   - **Line**: 300
   - **COBOL**: `                    01IPTYPEV70                       `

33. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 613, 614
   - **Line**: 302
   - **COBOL**: `                    02IPSPECV613    614                  `

34. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: 90832HF90834HF90837HF90846HF
   - **Line**: 304
   - **COBOL**: `                    03IPROCMV90832HF90834HF90837HF90846HF`

35. ✅ **INCLUDE** - Level 4
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HH
   - **Line**: 312
   - **COBOL**: `                    04IPMOD VHH                          `

36. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 10
   - **Line**: 316
   - **COBOL**: `                    01ICTYPEV10                          `

37. ❌ **EXCLUDE** - Level 2
   - **Data Element**: PROC RR0000 (PROC RR0000)
   - **Type**: RANGE
   - **Values**: 6999, W7000, W7999
   - **Line**: 318
   - **COBOL**: `                    02EPROC RR0000  R6999  W7000  W7999  `

38. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 17
   - **Line**: 324
   - **COBOL**: `                    01ICTYPEV17                          `

39. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 90
   - **Line**: 328
   - **COBOL**: `                    01IPTYPEV90                          `

40. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: P0000, P9999, Q0111, Q0116
   - **Line**: 330
   - **COBOL**: `                    02EPROC RP0000  P9999  Q0111  Q0116  `

#### Business Rule:

Category **08D** (PDN - EPSDT) is assigned when:

**Provider Type** is `44` AND **Claim Type** is `08` AND **Provider Type** is `20`, `25` AND **Claim Type** is `11` AND **Provider Specialty** is `910` AND **Claim Type** is `21` AND **Claim Type** is `05` AND **Provider Type** is `70` AND **Claim Type** is `19` AND **Provider Specialty** is `611` AND **Provider Type** is `70` AND **Claim Type** is `10` AND **Claim Type** is `17` AND **Provider Type** is `90`

AND **Claim Type** is `18` AND **Claim Type** is `04`, `13` AND **Provider Type** is NOT `43` AND **Procedure Code** is NOT `P0000`, `P9999`, `Q0111`, `Q0116` AND **Procedure Code with Modifiers** is NOT `90832AJ90834AJ90837AJ90846AJ` AND **Provider Specialty** is NOT `613`, `614` AND **Special Program** is NOT `17` AND **Procedure Code with Modifiers** is `90832AJ90834AJ90837AJ90846AJ` AND **Provider Specialty** is `613`, `614` AND **PROC RR0000** is NOT `6999`, `W7000`, `W7999` AND **Procedure Code** is NOT `P0000`, `P9999`, `Q0111`, `Q0116`

AND **Procedure Code with Modifiers** is `S9123EPS9124EPZ1710EPZ1710WT` AND **Procedure Code** is NOT `G0054`, `G0060`, `P0000`, `P9999` AND **Procedure Code with Modifiers** is NOT `S5101STS5102STS5120STS8990ST` AND **Procedure Code with Modifiers** is NOT `H0004STS5135ST97532ST` AND **Procedure Modifier Only** is NOT `HF`, `HE` AND **Procedure Code with Modifiers** is NOT `90832HF90834HF90837HF90846HF` AND **Procedure Code** is NOT `Y7433`, `Y7570` AND **Procedure Code with Modifiers** is NOT `S5101STS5102STS5120STS8990ST` AND **Procedure Code with Modifiers** is NOT `H0004STS5135ST97532ST` AND **Procedure Modifier Only** is `HF`, `HE` AND **Procedure Code with Modifiers** is `90832HF90834HF90837HF90846HF`

AND **Procedure Modifier Only** is NOT `22` AND **Procedure Modifier Only** is NOT `HH` AND **Procedure Modifier Only** is NOT `22` AND **Procedure Modifier Only** is `HH`



---

### COS 20A: DRUGS-LTC

- **Priority**: 00
- **Line Number**: 340
- **Assignment Rules**: 1 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 26
   - **Line**: 342
   - **COBOL**: `                    01IPTYPEV26                          `

#### Business Rule:

Category **20A** (DRUGS-LTC) is assigned when:

**Provider Type** is `26`



---

### COS 22A: DAY TRAINING

- **Priority**: 00
- **Line Number**: 344
- **Assignment Rules**: 1 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 725
   - **Line**: 346
   - **COBOL**: `                    01IPSPECV725                         `

#### Business Rule:

Category **22A** (DAY TRAINING) is assigned when:

**Provider Specialty** is `725`



---

### COS 22B: EARLY INTERVENTN

- **Priority**: 00
- **Line Number**: 348
- **Assignment Rules**: 2 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 730
   - **Line**: 350
   - **COBOL**: `                    01IPSPECV730                         `

2. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 740
   - **Line**: 354
   - **COBOL**: `                    01IPSPECV740                         `

#### Business Rule:

Category **22B** (EARLY INTERVENTN) is assigned when:

**Provider Specialty** is `730` AND **Provider Specialty** is `740`



---

### COS 22E: PACT

- **Priority**: 00
- **Line Number**: 356
- **Assignment Rules**: 1 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 908
   - **Line**: 358
   - **COBOL**: `                    01IPSPECV908                         `

#### Business Rule:

Category **22E** (PACT) is assigned when:

**Provider Specialty** is `908`



---

### COS 23A: CSOCI

- **Priority**: 00
- **Line Number**: 360
- **Assignment Rules**: 66 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 59
   - **Line**: 362
   - **COBOL**: `                    01IPTYPEV59                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Program Status (PSTAT)
   - **Type**: VALUE
   - **Values**: 641
   - **Line**: 364
   - **COBOL**: `                    02IPSTATV641                         `

3. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Y9930, Y9995
   - **Line**: 366
   - **COBOL**: `                    01IPROC RY9930  Y9995                `

4. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0017HUH0017HWH0018HUH0019HU
   - **Line**: 370
   - **COBOL**: `                    01IPROCMVH0017HUH0017HWH0018HUH0019HU`

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0043HU
   - **Line**: 378
   - **COBOL**: `                    01IPROCMVH0043HU                     `

6. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 380
   - **COBOL**: `                    02IPMOD V22                          `

7. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0019HUH2020HW
   - **Line**: 382
   - **COBOL**: `                    01IPROCMVH0019HUH2020HW              `

8. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 52
   - **Line**: 384
   - **COBOL**: `                    02IPMOD V52                          `

9. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2020HAH2020HET2038HAT2038HE
   - **Line**: 386
   - **COBOL**: `                    01IPROCMVH2020HAH2020HET2038HAT2038HE`

10. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HW
   - **Line**: 388
   - **COBOL**: `                    02IPMOD VHW                          `

11. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: RANGE
   - **Values**: 891, 905
   - **Line**: 390
   - **COBOL**: `                    01IPSPECR891    905                  `

12. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: Y9997, Y9999
   - **Line**: 394
   - **COBOL**: `                    01IPROC VY9997  Y9999                `

13. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 825
   - **Line**: 396
   - **COBOL**: `                    02IPSPECV825                         `

14. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2020HAT2038HA
   - **Line**: 398
   - **COBOL**: `                    01IPROCMVH2020HAT2038HA              `

15. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: HU
   - **Line**: 400
   - **COBOL**: `                    02IPMOD VHU                          `

16. ✅ **INCLUDE** - Level 3
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 825
   - **Line**: 402
   - **COBOL**: `                    03IPSPECV825                         `

17. ✅ **INCLUDE** - Level 1
   - **Data Element**: PROCMVH0045T (PROCMVH0045T)
   - **Type**: VALUE
   - **Values**: 
   - **Line**: 404
   - **COBOL**: `                    01IPROCMVH0045TV                     `

18. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0043HA
   - **Line**: 406
   - **COBOL**: `                    01IPROCMVH0043HA                     `

19. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: U1
   - **Line**: 408
   - **COBOL**: `                    02IPMOD VU1                          `

20. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0019HA
   - **Line**: 410
   - **COBOL**: `                    01IPROCMVH0019HA                     `

21. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 52, HA
   - **Line**: 412
   - **COBOL**: `                    02IPMOD V52     HA                   `

22. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2036HA
   - **Line**: 414
   - **COBOL**: `                    01IPROCMVH2036HA                     `

23. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22, HA
   - **Line**: 416
   - **COBOL**: `                    02IPMOD V22     HA                   `

24. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0006HA
   - **Line**: 418
   - **COBOL**: `                    01IPROCMVH0006HA                     `

25. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 420
   - **COBOL**: `                    02IPMOD V22                          `

26. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: A0090HAH0001HAH0031HAH0038HA
   - **Line**: 422
   - **COBOL**: `                    01IPROCMVA0090HAH0001HAH0031HAH0038HA`

27. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H2020HA
   - **Line**: 430
   - **COBOL**: `                    01IPROCMVH2020HA                     `

28. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 825, 827
   - **Line**: 432
   - **COBOL**: `                    02IPSPECV825    827                  `

29. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0018TJ
   - **Line**: 434
   - **COBOL**: `                    01IPROCMVH0018TJ                     `

30. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: RANGE
   - **Values**: U1, U2
   - **Line**: 436
   - **COBOL**: `                    02IPMOD RU1     U2                   `

31. ✅ **INCLUDE** - Level 3
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 826
   - **Line**: 438
   - **COBOL**: `                    03IPSPECV826                         `

32. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 43
   - **Line**: 442
   - **COBOL**: `                    01IPTYPEV43                          `

33. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 446
   - **COBOL**: `                    01ICTYPEV09                          `

34. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: A4000, A6499, A9150, A9300
   - **Line**: 448
   - **COBOL**: `                    02IPROC RA4000  A6499  A9150  A9300  `

35. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 456
   - **COBOL**: `                    01ICTYPEV09                          `

36. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 23
   - **Line**: 460
   - **COBOL**: `                    01ICTYPEV23                          `

37. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 06
   - **Line**: 464
   - **COBOL**: `                    01ICTYPEV06                          `

38. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 980
   - **Line**: 466
   - **COBOL**: `                    01IPSPECV980                         `

39. ✅ **INCLUDE** - Level 2
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 18
   - **Line**: 468
   - **COBOL**: `                    02ICTYPEV18                          `

40. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 470
   - **COBOL**: `                    03ESPROGV09                          `

41. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S9122HAS5130HA
   - **Line**: 472
   - **COBOL**: `                    01IPROCMVS9122HAS5130HA              `

42. ✅ **INCLUDE** - Level 1
   - **Data Element**: PROCMVT1016 (PROCMVT1016)
   - **Type**: VALUE
   - **Values**: 1
   - **Line**: 474
   - **COBOL**: `                    01IPROCMVT1016V1                     `

43. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: T1016HDT1016TD
   - **Line**: 476
   - **COBOL**: `                    01IPROCMVT1016HDT1016TD              `

44. ✅ **INCLUDE** - Level 2
   - **Data Element**: PMOD V (PMOD V)
   - **Type**: VALUE
   - **Values**: 1
   - **Line**: 478
   - **COBOL**: `                    02IPMOD VV1                          `

45. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 63
   - **Line**: 482
   - **COBOL**: `                    01IPTYPEV63                          `

46. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 16
   - **Line**: 486
   - **COBOL**: `                    01ICTYPEV16                          `

47. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 04, 13, 22
   - **Line**: 488
   - **COBOL**: `                    01ICTYPEV04     13     22            `

48. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: G0054, G0060, P0000, P9999
   - **Line**: 490
   - **COBOL**: `                    02IPROC RG0054  G0060  P0000  P9999  `

49. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: P0000, P9999, Q0111, Q0116
   - **Line**: 504
   - **COBOL**: `                    02IPROC RP0000  P9999  Q0111  Q0116  `

50. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0003HAH0049HA86580HA
   - **Line**: 514
   - **COBOL**: `                    01IPROCMVH0003HAH0049HA86580HA       `

51. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 04, 10
   - **Line**: 518
   - **COBOL**: `                    01ICTYPEV04     10                   `

52. ✅ **INCLUDE** - Level 2
   - **Data Element**: PROC RR0000 (PROC RR0000)
   - **Type**: RANGE
   - **Values**: 6999, W7000, W7999
   - **Line**: 520
   - **COBOL**: `                    02IPROC RR0000  R6999  W7000  W7999  `

53. ✅ **INCLUDE** - Level 1
   - **Data Element**: Claim Type (CTYPE)
   - **Type**: VALUE
   - **Values**: 07
   - **Line**: 526
   - **COBOL**: `                    01ICTYPEV07                          `

54. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 528
   - **COBOL**: `                    02ESPROGV09                          `

55. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 92
   - **Line**: 532
   - **COBOL**: `                    01IPTYPEV92                          `

56. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 534
   - **COBOL**: `                    02ESPROGV09                          `

57. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: Z1860
   - **Line**: 536
   - **COBOL**: `                    02EPROC VZ1860                       `

58. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1600, Z1617
   - **Line**: 540
   - **COBOL**: `                    01IPROC RZ1600  Z1617                `

59. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: UC, ZI
   - **Line**: 544
   - **COBOL**: `                    02EPMOD VUC     ZI                   `

60. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 546
   - **COBOL**: `                    02ESPROGV09                          `

61. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: Y9833
   - **Line**: 548
   - **COBOL**: `                    01IPROC VY9833                       `

62. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 550
   - **COBOL**: `                    02ESPROGV09                          `

63. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5165HAT2028HAT2029HAT2039HA
   - **Line**: 552
   - **COBOL**: `                    01IPROCMVS5165HAT2028HAT2029HAT2039HA`

64. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: 99199, S5111, S5120, S5125
   - **Line**: 554
   - **COBOL**: `                    01IPROC V99199  S5111  S5120  S5125  `

65. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: SE
   - **Line**: 564
   - **COBOL**: `                    02IPMOD VSE                          `

66. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: T1019, T1020
   - **Line**: 566
   - **COBOL**: `                    01IPROC VT1019  T1020                `

#### Business Rule:

Category **23A** (CSOCI) is assigned when:

**Provider Type** is `59` AND **Procedure Code** is `Y9930`, `Y9995` AND **Procedure Code with Modifiers** is `H0017HUH0017HWH0018HUH0019HU` AND **Procedure Code with Modifiers** is `H0043HU` AND **Procedure Code with Modifiers** is `H0019HUH2020HW` AND **Procedure Code with Modifiers** is `H2020HAH2020HET2038HAT2038HE` AND **Provider Specialty** is `891`, `905` AND **Procedure Code** is `Y9997`, `Y9999` AND **Procedure Code with Modifiers** is `H2020HAT2038HA` AND **PROCMVH0045T** is  AND **Procedure Code with Modifiers** is `H0043HA` AND **Procedure Code with Modifiers** is `H0019HA` AND **Procedure Code with Modifiers** is `H2036HA` AND **Procedure Code with Modifiers** is `H0006HA` AND **Procedure Code with Modifiers** is `A0090HAH0001HAH0031HAH0038HA` AND **Procedure Code with Modifiers** is `H2020HA` AND **Procedure Code with Modifiers** is `H0018TJ` AND **Provider Type** is `43` AND **Claim Type** is `09` AND **Claim Type** is `09` AND **Claim Type** is `23` AND **Claim Type** is `06` AND **Provider Specialty** is `980` AND **Procedure Code with Modifiers** is `S9122HAS5130HA` AND **PROCMVT1016** is `1` AND **Procedure Code with Modifiers** is `T1016HDT1016TD` AND **Provider Type** is `63` AND **Claim Type** is `16` AND **Claim Type** is `04`, `13`, `22` AND **Procedure Code with Modifiers** is `H0003HAH0049HA86580HA` AND **Claim Type** is `04`, `10` AND **Claim Type** is `07` AND **Provider Type** is `92` AND **Procedure Code** is `Z1600`, `Z1617` AND **Procedure Code** is `Y9833` AND **Procedure Code with Modifiers** is `S5165HAT2028HAT2029HAT2039HA` AND **Procedure Code** is `99199`, `S5111`, `S5120`, `S5125` AND **Procedure Code** is `T1019`, `T1020`

AND **Program Status** is `641` AND **Procedure Modifier Only** is `22` AND **Procedure Modifier Only** is `52` AND **Procedure Modifier Only** is `HW` AND **Provider Specialty** is `825` AND **Procedure Modifier Only** is `HU` AND **Procedure Modifier Only** is `U1` AND **Procedure Modifier Only** is `52`, `HA` AND **Procedure Modifier Only** is `22`, `HA` AND **Procedure Modifier Only** is `22` AND **Provider Specialty** is `825`, `827` AND **Procedure Modifier Only** is `U1`, `U2` AND **Procedure Code** is `A4000`, `A6499`, `A9150`, `A9300` AND **Claim Type** is `18` AND **PMOD V** is `1` AND **Procedure Code** is `G0054`, `G0060`, `P0000`, `P9999` AND **Procedure Code** is `P0000`, `P9999`, `Q0111`, `Q0116` AND **PROC RR0000** is `6999`, `W7000`, `W7999` AND **Special Program** is NOT `09` AND **Special Program** is NOT `09` AND **Procedure Code** is NOT `Z1860` AND **Procedure Modifier Only** is NOT `UC`, `ZI` AND **Special Program** is NOT `09` AND **Special Program** is NOT `09` AND **Procedure Modifier Only** is `SE`

AND **Provider Specialty** is `825` AND **Provider Specialty** is `826` AND **Special Program** is NOT `09`



---

### COS 81B: PRSNL CARE - MH

- **Priority**: 00
- **Line Number**: 568
- **Assignment Rules**: 3 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1600, Z1605, Z1610, Z1613
   - **Line**: 570
   - **COBOL**: `                    01IPROC RZ1600  Z1605  Z1610  Z1613  `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: UC, ZI
   - **Line**: 574
   - **COBOL**: `                    02IPMOD VUC     ZI                   `

3. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 576
   - **COBOL**: `                    03ESPROGV09                          `

#### Business Rule:

Category **81B** (PRSNL CARE - MH) is assigned when:

**Procedure Code** is `Z1600`, `Z1605`, `Z1610`, `Z1613`

AND **Procedure Modifier Only** is `UC`, `ZI`

AND **Special Program** is NOT `09`



---

### COS 81C: ADULT MH REHAB

- **Priority**: 00
- **Line Number**: 578
- **Assignment Rules**: 34 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z7333, Z7338
   - **Line**: 580
   - **COBOL**: `                    01IPROC RZ7333  Z7338                `

2. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 582
   - **COBOL**: `                    02ESPROGV09                          `

3. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0019U1H0019U2H0019U3H0019U4
   - **Line**: 584
   - **COBOL**: `                    01IPROCMVH0019U1H0019U2H0019U3H0019U4`

4. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 588
   - **COBOL**: `                    02ESPROGV09                          `

5. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0019U1H0019U2H0019U3H0019U4
   - **Line**: 590
   - **COBOL**: `                    01IPROCMVH0019U1H0019U2H0019U3H0019U4`

6. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 52
   - **Line**: 592
   - **COBOL**: `                    02IPMOD V52                          `

7. ❌ **EXCLUDE** - Level 3
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 594
   - **COBOL**: `                    03ESPROGV09                          `

8. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 35
   - **Line**: 598
   - **COBOL**: `                    01IPTYPEV35                          `

9. ✅ **INCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: RANGE
   - **Values**: 28, 32, 34, 36
   - **Line**: 600
   - **COBOL**: `                    02ISPROGR28     32     34     36     `

10. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 22, 31, 32
   - **Line**: 604
   - **COBOL**: `                    01ISPROGV22     31     32            `

11. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 760, 862, 980, 982
   - **Line**: 606
   - **COBOL**: `                    02IPSPECV760    862    980    982    `

12. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 33
   - **Line**: 608
   - **COBOL**: `                    01ISPROGV33                          `

13. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 845, 846, 847, 848
   - **Line**: 610
   - **COBOL**: `                    02IPSPECV845    846    847    848    `

14. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 812, 814
   - **Line**: 614
   - **COBOL**: `                    01IPSPECV812    814                  `

15. ✅ **INCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 32
   - **Line**: 616
   - **COBOL**: `                    02ISPROGV32                          `

16. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 17
   - **Line**: 620
   - **COBOL**: `                    01ISPROGV17                          `

17. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Y7433, Y7570
   - **Line**: 622
   - **COBOL**: `                    02IPROC RY7433  Y7570                `

18. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5101STS5102STS5120STS5199HI
   - **Line**: 626
   - **COBOL**: `                    02IPROCMVS5101STS5102STS5120STS5199HI`

19. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: H0004STS5135ST97532ST
   - **Line**: 630
   - **COBOL**: `                    02IPROCMVH0004STS5135ST97532ST       `

20. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 22
   - **Line**: 632
   - **COBOL**: `                    03IPMOD V22                          `

21. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S9129HQS9131HQS9128HQT2012HQ
   - **Line**: 634
   - **COBOL**: `                    02IPROCMVS9129HQS9131HQS9128HQT2012HQ`

22. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: ST
   - **Line**: 636
   - **COBOL**: `                    03IPMOD VST                          `

23. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 831
   - **Line**: 640
   - **COBOL**: `                    01IPSPECV831                         `

24. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 642
   - **COBOL**: `                    02ESPROGV09                          `

25. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 95
   - **Line**: 646
   - **COBOL**: `                    01IPTYPEV95                          `

26. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 44
   - **Line**: 648
   - **COBOL**: `                    01IPTYPEV44                          `

27. ✅ **INCLUDE** - Level 2
   - **Data Element**: Provider Specialty (PSPEC)
   - **Type**: VALUE
   - **Values**: 871, 872, 873, 874
   - **Line**: 650
   - **COBOL**: `                    02IPSPECV871    872    873    874    `

28. ✅ **INCLUDE** - Level 3
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 07, 46
   - **Line**: 662
   - **COBOL**: `                    03ISPROGV07     46                   `

29. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 08
   - **Line**: 666
   - **COBOL**: `                    01ISPROGV08                          `

30. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 05
   - **Line**: 670
   - **COBOL**: `                    01ISPROGV05                          `

31. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1710, Z1745, Z1800, Z1899
   - **Line**: 672
   - **COBOL**: `                    02IPROC RZ1710  Z1745  Z1800  Z1899  `

32. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5199HIT1028HIS912352S912452
   - **Line**: 674
   - **COBOL**: `                    02IPROCMVS5199HIT1028HIS912352S912452`

33. ✅ **INCLUDE** - Level 2
   - **Data Element**: PROCMVS9123TDS9123T (PROCMVS9123TDS9123T)
   - **Type**: VALUE
   - **Values**: S9124TES9124TV
   - **Line**: 676
   - **COBOL**: `                    02IPROCMVS9123TDS9123TVS9124TES9124TV`

34. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 52
   - **Line**: 678
   - **COBOL**: `                    03IPMOD V52                          `

#### Business Rule:

Category **81C** (ADULT MH REHAB) is assigned when:

**Procedure Code** is `Z7333`, `Z7338` AND **Procedure Code with Modifiers** is `H0019U1H0019U2H0019U3H0019U4` AND **Procedure Code with Modifiers** is `H0019U1H0019U2H0019U3H0019U4` AND **Provider Type** is `35` AND **Special Program** is `22`, `31`, `32` AND **Special Program** is `33` AND **Provider Specialty** is `812`, `814` AND **Special Program** is `17` AND **Provider Specialty** is `831` AND **Provider Type** is `95` AND **Provider Type** is `44` AND **Special Program** is `08` AND **Special Program** is `05`

AND **Special Program** is NOT `09` AND **Special Program** is NOT `09` AND **Procedure Modifier Only** is `52` AND **Special Program** is `28`, `32`, `34`, `36` AND **Provider Specialty** is `760`, `862`, `980`, `982` AND **Provider Specialty** is `845`, `846`, `847`, `848` AND **Special Program** is `32` AND **Procedure Code** is `Y7433`, `Y7570` AND **Procedure Code with Modifiers** is `S5101STS5102STS5120STS5199HI` AND **Procedure Code with Modifiers** is `H0004STS5135ST97532ST` AND **Procedure Code with Modifiers** is `S9129HQS9131HQS9128HQT2012HQ` AND **Special Program** is NOT `09` AND **Provider Specialty** is `871`, `872`, `873`, `874` AND **Procedure Code** is `Z1710`, `Z1745`, `Z1800`, `Z1899` AND **Procedure Code with Modifiers** is `S5199HIT1028HIS912352S912452` AND **PROCMVS9123TDS9123T** is `S9124TES9124TV`

AND **Special Program** is NOT `09` AND **Procedure Modifier Only** is `22` AND **Procedure Modifier Only** is `ST` AND **Special Program** is `07`, `46` AND **Procedure Modifier Only** is `52`



---

### COS 93A: CRPD - NOT USED

- **Priority**: 00
- **Line Number**: 680
- **Assignment Rules**: 2 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 04
   - **Line**: 682
   - **COBOL**: `                    01ISPROGV04                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1700, Z1745
   - **Line**: 684
   - **COBOL**: `                    02IPROC RZ1700  Z1745                `

#### Business Rule:

Category **93A** (CRPD - NOT USED) is assigned when:

**Special Program** is `04`

AND **Procedure Code** is `Z1700`, `Z1745`



---

### COS 93B: CRPD - NO PDN

- **Priority**: 00
- **Line Number**: 686
- **Assignment Rules**: 3 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 06
   - **Line**: 688
   - **COBOL**: `                    01ISPROGV06                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1700, Z1745
   - **Line**: 690
   - **COBOL**: `                    02IPROC RZ1700  Z1745                `

3. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5199HIT1028HI
   - **Line**: 694
   - **COBOL**: `                    02IPROCMVS5199HIT1028HI              `

#### Business Rule:

Category **93B** (CRPD - NO PDN) is assigned when:

**Special Program** is `06`

AND **Procedure Code** is `Z1700`, `Z1745` AND **Procedure Code with Modifiers** is `S5199HIT1028HI`



---

### COS 93C: CRPD - PDN

- **Priority**: 00
- **Line Number**: 696
- **Assignment Rules**: 11 rule(s)

#### Rules:

1. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 03
   - **Line**: 698
   - **COBOL**: `                    01ISPROGV03                          `

2. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code (PROC)
   - **Type**: RANGE
   - **Values**: Z1700, Z1745
   - **Line**: 700
   - **COBOL**: `                    02IPROC RZ1700  Z1745                `

3. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Code with Modifiers (PROCM)
   - **Type**: VALUE
   - **Values**: S5199HIT1028HIS912352S912452
   - **Line**: 704
   - **COBOL**: `                    02IPROCMVS5199HIT1028HIS912352S912452`

4. ✅ **INCLUDE** - Level 2
   - **Data Element**: PROCMVS9123TDS9123T (PROCMVS9123TDS9123T)
   - **Type**: VALUE
   - **Values**: S9124TES9124TV
   - **Line**: 706
   - **COBOL**: `                    02IPROCMVS9123TDS9123TVS9124TES9124TV`

5. ✅ **INCLUDE** - Level 3
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: 52
   - **Line**: 708
   - **COBOL**: `                    03IPMOD V52                          `

6. ✅ **INCLUDE** - Level 1
   - **Data Element**: GSHP (GSHP)
   - **Type**: RANGE
   - **Values**: 5, 9
   - **Line**: 712
   - **COBOL**: `                    01IGSHP R5      9                    `

7. ✅ **INCLUDE** - Level 1
   - **Data Element**: Provider Type (PTYPE)
   - **Type**: VALUE
   - **Values**: 37
   - **Line**: 718
   - **COBOL**: `                    01IPTYPEV37                          `

8. ✅ **INCLUDE** - Level 1
   - **Data Element**: Special Program (SPROG)
   - **Type**: VALUE
   - **Values**: 09
   - **Line**: 722
   - **COBOL**: `                    01ISPROGV09                          `

9. ✅ **INCLUDE** - Level 1
   - **Data Element**: Procedure Code (PROC)
   - **Type**: VALUE
   - **Values**: T1027, S9482
   - **Line**: 726
   - **COBOL**: `                    01IPROC VT1027  S9482                `

10. ✅ **INCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: VALUE
   - **Values**: UN, UP
   - **Line**: 728
   - **COBOL**: `                    02IPMOD VUN     UP                   `

11. ❌ **EXCLUDE** - Level 2
   - **Data Element**: Procedure Modifier Only (PMOD)
   - **Type**: RANGE
   - **Values**: AA, 99
   - **Line**: 730
   - **COBOL**: `                    02EPMOD RAA     99                   `

#### Business Rule:

Category **93C** (CRPD - PDN) is assigned when:

**Special Program** is `03` AND **GSHP** is `5`, `9` AND **Provider Type** is `37` AND **Special Program** is `09` AND **Procedure Code** is `T1027`, `S9482`

AND **Procedure Code** is `Z1700`, `Z1745` AND **Procedure Code with Modifiers** is `S5199HIT1028HIS912352S912452` AND **PROCMVS9123TDS9123T** is `S9124TES9124TV` AND **Procedure Modifier Only** is `UN`, `UP` AND **Procedure Modifier Only** is NOT `AA`, `99`

AND **Procedure Modifier Only** is `52`



---

