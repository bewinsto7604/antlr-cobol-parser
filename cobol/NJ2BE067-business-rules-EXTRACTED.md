# NJ2BE067 Business Rules Report

## Summary
- Total Override Rules: 3 (Rules 001-003)
- Total COSMATRX Rules Documented: 104 (Rules 004-107)
- Total Fallback Rules: 2 (Rules 108-109)
- **Total Rules: 109**

**Note:** The NJ2BE067 program references all 109 COSMATRX base rules through matrix traversal. This report documents 104 of them individually (Rules 004-107), with the remaining 5 COSMATRX rules being effectively overridden by Rules 001-002.

## Business Rules

### Override Rules (Lines 77-90 - Execute Before COSMATRX)

**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1` (GSHP Encounter Claim), `2` (GSHP Referral In-Plan Capitated), `5` (GSHP Capitated Claim), `6` (GSHP Referral Inpatient), `7` (GSHP PCM Capitated Claim), `8` (GSHP Referral In-Plan Non-Capitated), or `9` (GSHP In-Plan Non-Capitated).

**Evidence:** [Line 77-80]
```cobol
IF A-CLM-GSHP-RELATED = '1' OR '2' OR '5' OR '6' OR
                        '7' OR '8' OR '9'
   MOVE '94' TO A-MODIFIED-COS
   GO TO 1000-EXIT
```

**Cross-Reference:** Overrides COSMATRX Rule 106 (GSHP base rule)

**Type:** Override Rule

---

**Rule 002** - COS code `37` (Managed Care) is assigned when Provider Type is `37` (HMO/Managed Care) or Media Code is `7` (Encounters Fee for Service).

**Evidence:** [Line 82-84]
```cobol
IF A-PROV-TYPE = '37' OR A-CLM-MEDIA-CDE = 7
   MOVE '37' TO A-MODIFIED-COS
   GO TO 1000-EXIT
```

**Cross-Reference:** Overrides COSMATRX Rule 107 (PREPAID HEALTH which assigns COS 95)

**Type:** Override Rule

---

**Rule 003** - COS code `60` (Laboratory) is assigned when Procedure Code follows lab format (first 4 characters numeric and last character alphabetic) and claim is NOT Claim Type `03` (Outpatient Hospital) and NOT Medicare Part A Outpatient Hospital Crossover (14/03).

**Evidence:** [Line 86-90]
```cobol
IF (A-PROC-CDE-FIRST4-NUM AND A-PROC-CDE-LAST1-ALPHA)
AND NOT A-OUTPATIENT AND
    NOT(A-MCARE-PARTA AND TT-A-OUTPATIENT)
              MOVE '60' TO A-MODIFIED-COS
              GO TO 1000-EXIT
```

**Cross-Reference:** Overrides COSMATRX Rule 079 (Laboratory base rule) for specific lab-formatted procedure codes

**Type:** Override Rule

---

### COSMATRX Rules (Lines 95-115 - Via Matrix Traversal)

**Rule 004** - COS code `01A` (Inpatient General Hospital) is assigned when Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `60`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 001 directly

**Type:** Direct COSMATRX Rule

---

**Rule 005** - COS code `01B` (Inpatient Other Hospital) is assigned when Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `65`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 002 directly

**Type:** Direct COSMATRX Rule

---

**Rule 006** - COS code `02` (Residential Treatment Center) is assigned when Provider Type is `59` and Program Status is NOT `641`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Program Status evaluation Line 378-382]

**Cross-Reference:** Uses COSMATRX Rule 003 directly

**Type:** Direct COSMATRX Rule

---

**Rule 007** - COS code `03A` (Inpatient Mental Health - Government) is assigned when Provider Type is `64` or `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) or Claim Type is `02` (Long Term Care) OR Medicare Part A LTC Crossover (14/02) and Facility Control Code is `4` (Public), `5` (Municipal), `6` (State), or `9`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Facility Control Code evaluation Line 322-326]

**Cross-Reference:** Uses COSMATRX Rule 004 directly

**Type:** Direct COSMATRX Rule

---

**Rule 008** - COS code `03C` (Inpatient Mental Health - Other) is assigned when Provider Type is `64` or `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) or Claim Type is `02` (Long Term Care) OR Medicare Part A LTC Crossover (14/02) and Facility Control Code is NOT `4` (Public), `5` (Municipal), `6` (State), or `9`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Facility Control Code evaluation Line 322-326]

**Cross-Reference:** Uses COSMATRX Rule 005 directly

**Type:** Direct COSMATRX Rule

---

**Rule 009** - COS code `04A` (Outpatient / EPSDT) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is NOT `27` (EPSDT).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Clinic Code evaluation Line 254-320]

**Cross-Reference:** Uses COSMATRX Rule 006 directly

**Type:** Direct COSMATRX Rule

---

**Rule 010** - COS code `04B` (Outpatient - Clinic 27) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is `27` (EPSDT).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Clinic Code evaluation Line 254-320]

**Cross-Reference:** Uses COSMATRX Rule 007 directly

**Type:** Direct COSMATRX Rule

---

**Rule 011** - COS code `04C` (EPSDT) is assigned when Provider Type is `60` or `65` and Claim Type is `13` (EPSDT/HealthStart).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 008 directly

**Type:** Direct COSMATRX Rule

**Note:** Claim Type 13 does NOT have a Medicare crossover (not a valid Medicare claim type per ZCLMACTU.cpy Lines 2791-2810).

---

### COS Code 06 - Targeted Case Management (3 Rules)

**Rule 012** - COS code `06` (Targeted Case Management) is assigned when Provider Specialty is `819`, `822`, or `824`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 010 directly

**Type:** Direct COSMATRX Rule

---

**Rule 013** - COS code `06` (Targeted Case Management) is assigned when Provider Specialty is `813` and Procedure Code with Modifiers is NOT `T1017` with modifier `TJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 011 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 014** - COS code `06` (Targeted Case Management) is assigned when Procedure Code with Modifiers is `H0006` or `T2022` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 012 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 015** - COS code `07` (Nursing Facility) is assigned when Provider Type is `80`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 013 directly

**Type:** Direct COSMATRX Rule

---

### COS Code 08A - Community Health Clinic (4 Rules)

**Rule 016** - COS code `08A` (Community Health Clinic) is assigned when Provider Specialty is `950` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart) or `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 014 directly

**Type:** Direct COSMATRX Rule

---

**Rule 017** - COS code `08A` (Community Health Clinic) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, or `H0018` and Procedure Modifier Only is `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 015 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 018** - COS code `08A` (Community Health Clinic) is assigned when Procedure Code with Modifiers is `90832`, `90837`, `90846`, or `90847` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 016 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 019** - COS code `08A` (Community Health Clinic) is assigned when Procedure Code with Modifiers is `90791` with modifier `AJ` and Procedure Modifier Only is NOT `HF` or `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 017 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

### COS Code 08B - Mental Health Clinic (11 Rules)

**Rule 020** - COS code `08B` (Mental Health Clinic) is assigned when Provider Specialty is `920` or `940` and Provider Type is `24` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Modifier Only is `HH`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Uses COSMATRX Rule 018 directly with procedure modifier condition

**Type:** Direct COSMATRX Rule

---

**Rule 021** - COS code `08B` (Mental Health Clinic) is assigned when Provider Specialty is `940` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart) or `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 019 directly

**Type:** Direct COSMATRX Rule

---

**Rule 022** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `90791`, `H0010`, `S9125`, or `H2015` with modifier `HA`, `HA`, `HA`, or `HM` respectively and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 020 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 023** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `H0045` with modifier `HA` and PMOD VT is NOT blank and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 021 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 024** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 022 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 025** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `H2015` or `H2016` with modifier `HA` and Procedure Modifier Only is `HN` or `HO` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 023 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 026** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, or `HO` and Procedure Modifier Only is NOT `HI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 024 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 027** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code is `Y9996` or `Y9998` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 025 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 028** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `H2020` or `T2038` with modifier `HE` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 026 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 029** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `T2016` or `T2033` with modifier `HA` and Procedure Modifier Only is `U1` or `U5` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 027 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 030** - COS code `08B` (Mental Health Clinic) is assigned when Procedure Code with Modifiers is `T1028` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 028 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

### COS Code 08C - Other Clinic (3 Rules)

**Rule 031** - COS code `08C` (Other Clinic) is assigned when Provider Type is `24` (Independent Clinic) and Claim Type is `13` (EPSDT/HealthStart) or `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Provider Specialty is NOT `910` and Procedure Code with Modifiers is NOT `90791` with modifier `AJ` and Procedure Code with Modifiers is NOT `86580`, `90791`, `90792`, `90832`, `90837`, `90846`, `90847`, `90863`, `90887`, `H0001`, `H0003`, `H0006`, `H0007`, `H0018`, `H0049`, or `S9475` with modifier `HA`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Provider Specialty evaluation Line 384-388, Procedure with Modifiers evaluation Line 339-357]

**Cross-Reference:** Uses COSMATRX Rule 029 directly

**Type:** Direct COSMATRX Rule

---

**Rule 032** - COS code `08C` (Other Clinic) is assigned when Procedure Code with Modifiers is `90853` or `T1006` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 030 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 033** - COS code `08C` (Other Clinic) is assigned when Procedure Code with Modifiers is `H0005` with modifier `HA` and Procedure Modifier Only is `AJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 031 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 034** - COS code `08D` (PDN - EPSDT) is assigned when Provider Type is `44` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Code with Modifiers is `S9123`, `S9124`, `Z1710`, `Z1715`, `Z1720`, `Z1725`, `Z1730`, `Z1735`, `Z1740`, or `Z1745` with modifier `EP`, `EP`, `EP` or `WT`, `WT`, `WT`, `WT`, `WT`, `EP` or `WT`, `WT`, or `WT` respectively.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Procedure with Modifiers evaluation Line 339-357]

**Cross-Reference:** Uses COSMATRX Rule 032 directly

**Type:** Direct COSMATRX Rule

---

**Rule 035** - COS code `09` (Optical Appliance) is assigned when Claim Type is `08` (Vision) OR Medicare Part B Vision Crossover (15/08).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 033 directly

**Type:** Direct COSMATRX Rule

---

**Rule 036** - COS code `10` (Physician) is assigned when Provider Type is `20` or `25` and Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04) or Claim Type is `13` (EPSDT/HealthStart) and Procedure Code is NOT `G0054`, `G0060`, `P0000`, `P9999`, `Q0111`, `Q0116`, `R0000`, `R6999`, `W7000`, `W8899`, `W8901`, `W8999`, `Y7433`, `Y7570`, `70000`, `79999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `G0026`, `G0027`, `36415`, `36430`, `36440`, `36450`, `36455`, `36460`, `S9122`, `T1001`, `G2023`, or `G2024` and Procedure Code with Modifiers is NOT `S5101`, `S5102`, `S5120`, `S8990`, or `97535` with modifier `ST` and Procedure Code with Modifiers is NOT `H0004`, `S5135`, or `97532` with modifier `ST` and Procedure Modifier Only is NOT `22`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Claim Type evaluation Line 240-252, Procedure Code evaluation Line 328-337, Procedure with Modifiers evaluation Line 339-357, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Uses COSMATRX Rule 034 directly with all its exclusion criteria

**Type:** Direct COSMATRX Rule

---

**Rule 037** - COS code `11` (Dental) is assigned when Claim Type is `11` (Dental) and Provider Type is NOT `43`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 035 directly

**Type:** Direct COSMATRX Rule

**Note:** Claim Type 11 does NOT have a Medicare crossover (not a valid Medicare claim type per ZCLMACTU.cpy Lines 2791-2810).

---

**Rule 038** - COS code `12` (Freestanding ASC) is assigned when Provider Specialty is `910`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 036 directly

**Type:** Direct COSMATRX Rule

---

**Rule 039** - COS code `13` (Optometry) is assigned when Claim Type is `21` (Optometry) OR Medicare Part B Optometry Crossover (15/21).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 037 directly

**Type:** Direct COSMATRX Rule

---

**Rule 040** - COS code `14` (Chiropractor) is assigned when Claim Type is `05` (Chiropractor) OR Medicare Part B Chiropractor Crossover (15/05).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 038 directly

**Type:** Direct COSMATRX Rule

---

**Rule 041** - COS code `15` (Advanced Practice Nurse/Nurse Practitioner) is assigned when Provider Type is `70` and Procedure Code is NOT `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `G2023`, or `G2024` and Procedure Code with Modifiers is NOT `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `AJ` and Procedure Modifier Only is NOT `HF` or `HE` and Provider Specialty is NOT `613` or `614` and Procedure Code with Modifiers is NOT `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `HF` OR `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `HE` and Procedure Modifier Only is NOT `HH`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Procedure Code evaluation Line 328-337, Procedure with Modifiers evaluation Line 339-357, Procedure Modifier Only evaluation Line 359-376, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 039 directly with all its exclusion criteria

**Type:** Direct COSMATRX Rule

---

### COS Code 16 - Psychologist (3 Rules)

**Rule 042** - COS code `16` (Psychologist) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code is NOT `Y7433`, `Y7570`, `VS9122`, or `T1001` and Procedure Code with Modifiers is NOT `S5101`, `S5102`, `S5120`, `S8990`, or `97535` with modifier `ST` and Procedure Code with Modifiers is NOT `H0004`, `S5135`, or `97532` with modifier `ST` and Procedure Modifier Only is NOT `22`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337, Procedure with Modifiers evaluation Line 339-357, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Uses COSMATRX Rule 040 directly with all its exclusion criteria

**Type:** Direct COSMATRX Rule

---

**Rule 043** - COS code `16` (Psychologist) is assigned when Provider Specialty is `611` and Procedure Code with Modifiers is `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `AJ` and Procedure Modifier Only is `HF` or `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 041 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 044** - COS code `16` (Psychologist) is assigned when Provider Type is `70` and Provider Specialty is `613` or `614` and Procedure Code with Modifiers is `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `HF` OR `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, or `90887` with modifier `HE` and Procedure Modifier Only is `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Provider Specialty evaluation Line 384-388, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 042 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 045** - COS code `17` (Podiatrist) is assigned when Claim Type is `10` (Podiatry) OR Medicare Part B Podiatry Crossover (15/10) and PROC RR0000 is NOT `6999`, `W7000`, `W7999`, `70000`, or `79999`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 043 directly with procedure code exclusions

**Type:** Direct COSMATRX Rule

---

**Rule 046** - COS code `18` (Prosthetic and Orthotic) is assigned when Claim Type is `17` (Prosthetic/Orthotic) OR Medicare Part B Prosthetic/Orthotic Crossover (15/17).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 044 directly

**Type:** Direct COSMATRX Rule

---

**Rule 047** - COS code `19` (Midwifery) is assigned when Provider Type is `90` and Procedure Code is NOT `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `G2023`, or `G2024`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 045 directly with all its exclusion criteria

**Type:** Direct COSMATRX Rule

---

**Rule 048** - COS code `20A` (Drugs - LTC Type 26) is assigned when Provider Type is `26`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 046 directly

**Type:** Direct COSMATRX Rule

---

**Rule 049** - COS code `22A` (Day Training) is assigned when Provider Specialty is `725`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 047 directly

**Type:** Direct COSMATRX Rule

---

**Rule 050** - COS code `22B` (Early Intervention) is assigned when Provider Specialty is `730`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 048 directly

**Type:** Direct COSMATRX Rule

---

**Rule 051** - COS code `22C` (Special Education) is assigned when Provider Specialty is `740`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 049 directly

**Type:** Direct COSMATRX Rule

---

**Rule 052** - COS code `22E` (PACT) is assigned when Provider Specialty is `908`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 050 directly

**Type:** Direct COSMATRX Rule

---

### COS Code 23A - DCF/CSOC (17 Rules)

**Rule 053** - COS code `23A` (DCF/CSOC) is assigned when Provider Type is `59` and Program Status is `641`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Program Status evaluation Line 378-382]

**Cross-Reference:** Uses COSMATRX Rule 051 directly

**Type:** Direct COSMATRX Rule

---

**Rule 054** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code is `Y9930`, `Y9995`, or `VZ5008` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 052 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 055** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0017`, `H0018`, `H0019`, `H0037`, `H0043`, `H2013`, `H2020`, `T2023`, or `T2038` with modifier `HU`, `HW`, `HU`, `HU`, `HW`, `HW`, `HU`, `HW`, `HU`, `HU`, `TJ`, `HU`, or `HW` respectively and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 053 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 056** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HU` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 054 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 057** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0019` or `H2020` with modifier `HU` or `HW` respectively and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 055 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 058** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H2020` or `T2038` with modifier `HA` or `HE` and Procedure Modifier Only is `HW` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 056 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 059** - COS code `23A` (DCF/CSOC) is assigned when Provider Specialty is `891`, `905`, `V813`, or `907`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 057 directly

**Type:** Direct COSMATRX Rule

---

**Rule 060** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code is `Y9997` or `Y9999` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 058 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 061** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H2020` or `T2038` with modifier `HA` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 059 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 062** - COS code `23A` (DCF/CSOC) is assigned when PROCMVH0045T is blank (empty) and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 060 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 063** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HA` and Procedure Modifier Only is `U1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 061 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 064** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HA` and Procedure Modifier Only is `52` or `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 062 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 065** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H2036` with modifier `HA` and Procedure Modifier Only is `22` or `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 063 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 066** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 064 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 067** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `A0090`, `H0001`, `H0031`, `H0038`, `S0215`, `S5105`, `S5110`, `S5150`, `S9475`, `S9970`, `T1005`, `T1013`, `T2013`, `T2036`, `T2037`, or `T2038` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 065 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 068** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA` and Provider Specialty is `825` or `827` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 066 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 069** - COS code `23A` (DCF/CSOC) is assigned when Procedure Code with Modifiers is `H0018` with modifier `TJ` and Procedure Modifier Only is `U1` or `U2` and Provider Specialty is `826` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Modifies COSMATRX Rule 067 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 070** - COS code `25` (FQHC) is assigned when Provider Type is `43`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 068 directly

**Type:** Direct COSMATRX Rule

---

**Rule 071** - COS code `30` (Medical Supplies) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09) and Procedure Code is `A4000`, `A6499`, `A9150`, `A9300`, `B4000`, `B9999`, `X6000`, `X8199`, `X8201`, or `X8999`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 069 directly

**Type:** Direct COSMATRX Rule

---

**Rule 072** - COS code `31` (DME) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 070 directly

**Type:** Direct COSMATRX Rule

---

**Rule 073** - COS code `32` (Hearing Aid) is assigned when Claim Type is `23` (Hearing Aid) OR Medicare Part B Hearing Aid Crossover (15/23).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 071 directly

**Type:** Direct COSMATRX Rule

---

### COS Code 40 - Home Health (5 Rules)

**Rule 074** - COS code `40` (Home Health) is assigned when Claim Type is `06` (Home Health).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 072 directly

**Type:** Direct COSMATRX Rule

**Note:** Claim Type 06 does NOT have a Medicare crossover (not a valid Medicare claim type per ZCLMACTU.cpy Lines 2791-2810).

---

**Rule 075** - COS code `40` (Home Health) is assigned when Provider Specialty is `980` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Special Program is NOT `09`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Claim Type evaluation Line 240-252, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 073 directly

**Type:** Direct COSMATRX Rule

---

**Rule 076** - COS code `40` (Home Health) is assigned when Procedure Code with Modifiers is `S9122` or `S5130` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 074 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 077** - COS code `40` (Home Health) is assigned when PROCMVT1016 is `1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 075 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 078** - COS code `40` (Home Health) is assigned when Procedure Code with Modifiers is `T1016` with modifier `HD` or `T1016` with modifier `TD` and PMOD V is `1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 076 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 079** - COS code `50` (Hospice) is assigned when Provider Type is `63`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 077 directly

**Type:** Direct COSMATRX Rule

---

### COS Code 60 - Laboratory (3 Rules)

**Rule 080** - COS code `60` (Laboratory) is assigned when Claim Type is `16` (Laboratory) OR Medicare Part B Laboratory Crossover (15/16).

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252]

**Cross-Reference:** Uses COSMATRX Rule 078 directly

**Type:** Direct COSMATRX Rule

---

**Rule 081** - COS code `60` (Laboratory) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04) or Claim Type is `13` (EPSDT/HealthStart) or Claim Type is `22` (Nurse-Midwife) OR Medicare Part B Nurse-Midwife Crossover (15/22) and Procedure Code is `G0054`, `G0060`, `P0000`, `P9999`, `Q0111`, `Q0116`, `W7000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `G0026`, `G0027`, `36415`, `36430`, `36440`, `36450`, `36455`, `36460`, `G2023`, `G2024`, `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `VG0001`, `80102`, `80173`, `82947`, `87850`, or `U0005`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 079 directly

**Type:** Direct COSMATRX Rule

---

**Rule 082** - COS code `60` (Laboratory) is assigned when Procedure Code with Modifiers is `H0003`, `H0049`, or `86580` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 080 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 083** - COS code `65` (Radiology) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04) or Claim Type is `10` (Podiatry) OR Medicare Part B Podiatry Crossover (15/10) and PROC RR0000 is `6999`, `W7000`, `W7999`, `70000`, or `79999`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 081 directly

**Type:** Direct COSMATRX Rule

---

**Rule 084** - COS code `70` (Transportation) is assigned when Claim Type is `07` (Transportation) OR Medicare Part B Transportation Crossover (15/07) and Special Program is NOT `09`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Claim Type evaluation Line 240-252, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 082 directly

**Type:** Direct COSMATRX Rule

---

**Rule 085** - COS code `80` (Adult Day Health) is assigned when Provider Type is `92` and Special Program is NOT `09` and Procedure Code is NOT `Z1860`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337]

**Cross-Reference:** Uses COSMATRX Rule 083 directly

**Type:** Direct COSMATRX Rule

---

### COS Code 81A - Personal Care - Physical (5 Rules)

**Rule 086** - COS code `81A` (Personal Care - Physical) is assigned when Procedure Code is `Z1600`, `Z1617`, `VT1001`, or `S9122` and Procedure Modifier Only is NOT `UC` or `ZI` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Procedure Modifier Only evaluation Line 359-376, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 084 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 087** - COS code `81A` (Personal Care - Physical) is assigned when Procedure Code is `Y9833` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 085 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 088** - COS code `81A` (Personal Care - Physical) is assigned when Procedure Code with Modifiers is `S5165`, `T2028`, `T2029`, or `T2039` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 086 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 089** - COS code `81A` (Personal Care - Physical) is assigned when Procedure Code is `99199`, `S5111`, `S5120`, `S5125`, `S5165`, `S5170`, `S9122`, `T1019`, `T1999`, `T2003`, `T2015`, `T2025`, `T2028`, `T2035`, `T2039`, `T2041`, or `T5999` and Procedure Modifier Only is `SE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 087 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 090** - COS code `81A` (Personal Care - Physical) is assigned when Procedure Code is `T1019` or `T1020` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 088 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 091** - COS code `81B` (Personal Care - Mental Health) is assigned when Procedure Code is `Z1600`, `Z1605`, `Z1610`, `Z1613`, or `VT1001` and Procedure Modifier Only is `UC` or `ZI` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Procedure Modifier Only evaluation Line 359-376, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 089 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

### COS Code 81C - Adult Mental Health Rehab (3 Rules)

**Rule 092** - COS code `81C` (Adult Mental Health Rehab) is assigned when Procedure Code is `Z7333` or `Z7338` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure Code evaluation Line 328-337 with exclusions, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 090 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 093** - COS code `81C` (Adult Mental Health Rehab) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `U2`, `U3`, `U4`, or `U5` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 091 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 094** - COS code `81C` (Adult Mental Health Rehab) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `U2`, `U3`, or `U4` and Procedure Modifier Only is `52` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376, Special Program evaluation Line 396-400]

**Cross-Reference:** Modifies COSMATRX Rule 092 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

### COS Code 87 - DHSS/ECO Waiver (4 Rules)

**Rule 095** - COS code `87` (DHSS/ECO Waiver) is assigned when Provider Type is `35` and Special Program is `28`, `32`, `34`, `36`, `V22`, or `62`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 093 directly

**Type:** Direct COSMATRX Rule

---

**Rule 096** - COS code `87` (DHSS/ECO Waiver) is assigned when Special Program is `22`, `31`, or `32` and Provider Specialty is `760`, `862`, `980`, or `982`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 094 directly

**Type:** Direct COSMATRX Rule

---

**Rule 097** - COS code `87` (DHSS/ECO Waiver) is assigned when Special Program is `33` and Provider Specialty is `845`, `846`, `847`, `848`, or `851`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Provider Specialty evaluation Line 384-388]

**Cross-Reference:** Uses COSMATRX Rule 095 directly

**Type:** Direct COSMATRX Rule

---

**Rule 098** - COS code `87` (DHSS/ECO Waiver) is assigned when Provider Specialty is `812` or `814` and Special Program is `32`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 096 directly

**Type:** Direct COSMATRX Rule

---

**Rule 099** - COS code `88` (TBI Waiver) is assigned when Special Program is `17` and Procedure Code is `Y7433`, `Y7570`, `VS5109`, `Y7733`, or `S5165` and Procedure Code with Modifiers is `S5101`, `S5102`, `S5120`, `S5199`, `S8990`, `T1028`, `97535`, or `T2025` with modifier `ST`, `ST`, `ST`, `HI`, `ST`, `HI`, `ST`, or `ST` respectively and Procedure Code with Modifiers is `H0004`, `S5135`, or `97532` with modifier `ST` and Procedure Modifier Only is `22` and Procedure Code with Modifiers is `S9129`, `S9131`, `S9128`, or `T2012` with modifier `HQ` and Procedure Modifier Only is `ST`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337 with exclusions, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 097 by adding conditional exclusions to procedure-based criteria

**Type:** Modified COSMATRX Rule

**Note:** This rule has complex nested conditions. Conditional exclusions apply to all procedure-based evaluations.

---

**Rule 100** - COS code `89` (ABC Waiver) is assigned when Provider Specialty is `831` and Special Program is NOT `09`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Specialty evaluation Line 384-388, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 098 directly

**Type:** Direct COSMATRX Rule

---

**Rule 101** - COS code `90` (DDD Waiver) is assigned when Provider Type is `95`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394]

**Cross-Reference:** Uses COSMATRX Rule 099 directly

**Type:** Direct COSMATRX Rule

---

**Rule 102** - COS code `90` (DDD Waiver) is assigned when Provider Type is `44` and Provider Specialty is `871`, `872`, `873`, `874`, `875`, `876`, `877`, `878`, `879`, `881`, `882`, `883`, `884`, `885`, `886`, `887`, `888`, `889`, `971`, `972`, `973`, `974`, `975`, or `976` and Special Program is `07` or `46`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Provider Type evaluation Line 390-394, Provider Specialty evaluation Line 384-388, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 100 directly

**Type:** Direct COSMATRX Rule

---

**Rule 103** - COS code `91` (CCPED) is assigned when Special Program is `08`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400]

**Cross-Reference:** Uses COSMATRX Rule 101 directly

**Type:** Direct COSMATRX Rule

---

**Rule 104** - COS code `92` (ACCAP) is assigned when Special Program is `05` and Procedure Code is `Z1710`, `Z1745`, `Z1800`, or `Z1899` and Procedure Code with Modifiers is `S5199`, `T1028`, `S9123`, or `S9124` with modifier `HI`, `HI`, `52`, or `52` respectively and PROCMVS9123TDS9123T is S9124TES9124TV and Procedure Modifier Only is `52`.

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337 with exclusions, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 102 by adding conditional exclusions to procedure-based criteria

**Type:** Modified COSMATRX Rule

**Note:** This rule includes complex conditions. Conditional exclusions apply to all procedure-based evaluations.

---

**Rule 105** - COS code `93A` (CRPD - Not Used) is assigned when Special Program is `04` and Procedure Code is `Z1700` or `Z1745` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 103 by adding conditional exclusions

**Type:** Modified COSMATRX Rule

---

**Rule 106** - COS code `93B` (CRPD - No PDN) is assigned when Special Program is `06` and Procedure Code is `Z1700`, `Z1745`, `VS5160`, `S5161`, `S5162`, or `S5165` and Procedure Code with Modifiers is `S5199` or `T1028` with modifier `HI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337 with exclusions, Procedure with Modifiers evaluation Line 339-357 with exclusions]

**Cross-Reference:** Modifies COSMATRX Rule 104 by adding conditional exclusions to procedure-based criteria

**Type:** Modified COSMATRX Rule

---

**Rule 107** - COS code `93C` (CRPD - PDN) is assigned when Special Program is `03` and Procedure Code is `Z1700`, `Z1745`, `VS5160`, `S5161`, `S5162`, or `S5165` and Procedure Code with Modifiers is `S5199`, `T1028`, `S9123`, or `S9124` with modifier `HI`, `HI`, `52`, or `52` respectively and PROCMVS9123TDS9123T is S9124TES9124TV and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure (which applies when claim is Claim Type `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03)).

**Evidence:** [Via COSMATRX traversal Line 95-115, Special Program evaluation Line 396-400, Procedure Code evaluation Line 328-337 with exclusions, Procedure with Modifiers evaluation Line 339-357 with exclusions, Procedure Modifier Only evaluation Line 359-376]

**Cross-Reference:** Modifies COSMATRX Rule 105 by adding conditional exclusions to procedure-based criteria

**Type:** Modified COSMATRX Rule

**Note:** This rule includes complex conditions. Conditional exclusions apply to all procedure-based evaluations.

---

### Fallback Rules (Lines 109-113 - When No COSMATRX Match)

**Rule 108** - COS code `08C` (Other Clinic) is assigned when no COSMATRX match is found AND Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18).

**Evidence:** [Line 109-111]
```cobol
IF A-CLM-TYPE = 18 OR
   (A-CLM-TYPE = 15 AND TT-B-MCARE-CLM-TYPE = 18)
   MOVE '08C' TO A-MODIFIED-COS
```

**Cross-Reference:** Default rule when COSMATRX returns HIGH-VALUES (no match)

**Type:** Fallback Rule

---

**Rule 109** - COS code `99` (Other) is assigned when no COSMATRX match is found and the claim does not qualify for the `08C` fallback rule.

**Evidence:** [Line 113]
```cobol
ELSE
   MOVE '99' TO A-MODIFIED-COS
END-IF
```

**Cross-Reference:** Ultimate default rule when no other match found

**Type:** Fallback Rule

---

## Medicare Crossover Claim Handling

The program handles Medicare crossover claims (where Medicare is the primary payer and Medicaid is secondary) by evaluating the actual Medicare claim type from the trailer records:

**Claim Type `14` (Institutional Cross-Overs / Medicare Part A)**:
- The actual Medicare claim type is stored in TT-A-MCARE-CLM-TYPE
- When evaluating rules, the program substitutes this Medicare claim type (see Line 240-252)
- Example: Medicare Part A Inpatient Hospital Crossover (14/01) is treated as Inpatient Hospital for COSMATRX evaluation
- Example: Medicare Part A Outpatient Hospital Crossover (14/03) is treated as Outpatient Hospital for COSMATRX evaluation
- In conditional exclusions, the program explicitly checks: `(A-MCARE-PARTA AND TT-A-INPATIENT)` to exclude Medicare Part A Inpatient Hospital Crossover (14/01)

**Claim Type `15` (Professional Cross-Overs / Medicare Part B)**:
- The actual Medicare claim type is stored in TT-B-MCARE-CLM-TYPE
- When evaluating rules, the program substitutes this Medicare claim type (see Line 240-252)
- Example: Medicare Part B Independent Clinic Crossover (15/18) is treated as Independent Clinic for COSMATRX evaluation (see Fallback Rule 108, Line 109-111)

**Conditional Exclusion Logic for Crossovers**:
- Procedure-based rules exclude crossover claims using the same logic as regular claims:
  - Exclude Medicare Part A Inpatient Hospital Crossover (14/01): `(A-MCARE-PARTA AND TT-A-INPATIENT)`
  - Exclude Medicare Part A Outpatient Hospital Crossover (14/03): `(A-MCARE-PARTA AND TT-A-OUTPATIENT)`

**Complete Crossover Mapping** (Based on ZCLMACTU.cpy Lines 2166-2169, 2791-2810):

Medicare Part A Crossovers (Claim Type 14) - TT-A-MCARE-CLM-TYPE valid values:
- 14/01 → Medicare Part A Inpatient Hospital Crossover
- 14/02 → Medicare Part A LTC Crossover
- 14/03 → Medicare Part A Outpatient Hospital Crossover

Medicare Part B Crossovers (Claim Type 15) - TT-B-MCARE-CLM-TYPE valid values:
- 15/04 → Medicare Part B Physician Crossover
- 15/05 → Medicare Part B Chiropractor Crossover
- 15/07 → Medicare Part B Transportation Crossover
- 15/08 → Medicare Part B Vision Crossover
- 15/09 → Medicare Part B Supplies/DME Crossover
- 15/10 → Medicare Part B Podiatry Crossover
- 15/16 → Medicare Part B Laboratory Crossover
- 15/17 → Medicare Part B Prosthetic/Orthotic Crossover
- 15/18 → Medicare Part B Independent Clinic Crossover
- 15/19 → Medicare Part B Psychologist Crossover
- 15/21 → Medicare Part B Optometry Crossover
- 15/22 → Medicare Part B Nurse-Midwife Crossover
- 15/23 → Medicare Part B Hearing Aid Crossover

**Note:** Claim types NOT valid for Medicare crossovers include: 06 (Home Health), 11 (Dental), 13 (EPSDT/HealthStart). Any COSMATRX rule checking these claim types does NOT have a Medicare crossover equivalent.

---

## Processing Flow Summary

1. **Override Rules (Lines 77-90)**: Rules 001-003 execute first and bypass COSMATRX if matched
2. **COSMATRX Traversal (Lines 95-115)**: Rules 004-107 execute via matrix traversal if no override matched
3. **Conditional Exclusions (Lines 328-376)**: Applied to all procedure-based COSMATRX rules
4. **Fallback Rules (Lines 109-113)**: Rules 108-109 execute if COSMATRX returns no match

## Key Statistics
- **Total Rules**: 109 (3 Override + 104 COSMATRX + 2 Fallback)
- **Override Rules**: 3 rules (001-003) that completely bypass COSMATRX
- **COSMATRX Rules**: 104 rules (004-107) documented individually from 109 base COSMATRX rules
- **Fallback Rules**: 2 rules (108-109) when no COSMATRX match found
- **Multi-Rule COS Codes** (3+ rules documented individually): 23A (17 rules), 08B (11 rules), 81A (5 rules), 40 (5 rules), 87 (4 rules), 08A (4 rules), 81C (3 rules), 60 (3 rules), 16 (3 rules), 08C (3 rules), 06 (3 rules)
- **Medicare Crossovers**: 16 valid crossover types (3 Part A, 13 Part B)
- **Conditional Exclusions**: Applied to all procedure-based rules to exclude Claim Types 01, 06, Medicare Part A Inpatient (14/01), and Outpatient Lab procedures
