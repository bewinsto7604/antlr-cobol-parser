# NJ2BE067 + COSMATRX Consolidated Business Rules Report

**Rule 001** - Modified COS is assigned Garden State Health Plan - GSHP (`94`) when GSHP-RELATED flag is GSHP Encounter Claim (`1`), GSHP Referral In-Plan Capitated (`2`), GSHP Capitated Claim (`5`), GSHP Referral Inpatient (`6`), GSHP PCM Capitated Claim (`7`), GSHP Referral In-Plan Non-Capitated (`8`), or GSHP In-Plan Non-Capitated (`9`).

**Rule 002** - Modified COS is assigned Managed Care (`37`) when Provider Type is HMO/Managed Care (`37`) OR Media Code is Encounters Fee for Service (`7`).

**Rule 003** - Modified COS is assigned Laboratory (`60`) when Procedure Code first 4 characters are numeric (`0000` through `9999`) AND last character is alphabetic (U or M) AND claim is NOT Claim Type Outpatient Hospital (`03`) AND NOT Medicare Part A Outpatient Hospital Crossover (14/03).

**Rule 004** - Modified COS is assigned INPAT GENL HOSP (`01A`) when Claim Type is Inpatient Hospital (`01`) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `60`.

**Rule 005** - Modified COS is assigned INPAT OTHER HOSP (`01B`) when Claim Type is Inpatient Hospital (`01`) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `65`.

**Rule 006** - Modified COS is assigned RES TREATMNT CNTR (`02`) when Provider Type is `59` and Program Status is NOT `641`.

**Rule 007** - Modified COS is assigned INPAT MH - GVNMNT (`03A`) when Provider Type is `64`, `69` and Claim Type is Inpatient Hospital (`01`) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is `4`, `5`, `6`, `9`.

**Rule 008** - Modified COS is assigned INPAT MH - OTHER (`03C`) when Provider Type is `64`, `69` and Claim Type is Inpatient Hospital (`01`) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is NOT `4`, `5`, `6`, `9`.

**Rule 009** - Modified COS is assigned OUTPAT / EPSDT (`04A`) when Claim Type is Outpatient Hospital (`03`) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is NOT `27`.

**Rule 010** - Modified COS is assigned OUTPAT - CLINC 27 (`04B`) when Claim Type is Outpatient Hospital (`03`) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is `27`.

**Rule 011** - Modified COS is assigned EPSDT (`04C`) when Provider Type is `60`, `65` and Claim Type is EPSDT/HealthStart (`13`).

**Rule 012** - Modified COS is assigned ICF-MR (`05`) when Provider Type is `88`.

**Rule 013** - Modified COS is assigned TARGTD CASE MGMT (`06`) when Provider Specialty is `819`, `822`, `824`.

**Rule 014** - Modified COS is assigned TARGTD CASE MGMT (`06`) when Provider Specialty is `813` and Procedure Code with Modifiers is NOT `T1017` with modifier `TJ` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 015** - Modified COS is assigned TARGTD CASE MGMT (`06`) when Procedure Code with Modifiers is `H0006` with modifier `HA`, `T2022` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 016** - Modified COS is assigned NURSING FACILITY (`07`) when Provider Type is `80`.

**Rule 017** - Modified COS is assigned COMM HLTH CLINIC (`08A`) when Provider Specialty is `950` and Provider Type is `24` and Claim Type is EPSDT/HealthStart (`13`), `18`.

**Rule 018** - Modified COS is assigned COMM HLTH CLINIC (`08A`) when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 019** - Modified COS is assigned COMM HLTH CLINIC (`08A`) when Procedure Code with Modifiers is `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 020** - Modified COS is assigned COMM HLTH CLINIC (`08A`) when Procedure Code with Modifiers is `90791` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 021** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Provider Specialty is `920`, `940` and Provider Type is `24` and Claim Type is Independent Clinic (`18`) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Modifier Only is `HH` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 022** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Provider Specialty is `940` and Provider Type is `24` and Claim Type is EPSDT/HealthStart (`13`), `18`.

**Rule 023** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `90791` with modifier `HA`, `H0010` with modifier `HA`, `S9125` with modifier `HA`, `H2015` with modifier `HM` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 024** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `H0045` with modifier `HA` and Procedure Modifier Only is NOT `TV` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 025** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `90832` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 026** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `H2015` with modifier `HA`, `H2016` with modifier `HA` and Procedure Modifier Only is `HN`, `HO` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 027** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, `HO` and Procedure Modifier Only is NOT `HI` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 028** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code is `Y9996`, `Y9998` and Provider Specialty is `825` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 029** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `H2020` with modifier `HE`, `T2038` with modifier `HE` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 030** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `T2016` with modifier `HA`, `T2033` with modifier `HA` and Procedure Modifier Only is `U1` through `U5` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 031** - Modified COS is assigned MNTL HLTH CLINIC (`08B`) when Procedure Code with Modifiers is `T1028` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 032** - Modified COS is assigned OTHER CLINIC (`08C`) when Provider Type is `24` and Claim Type is EPSDT/HealthStart (`13`), `18` and Provider Specialty is NOT `910`.

**Rule 033** - Modified COS is assigned OTHER CLINIC (`08C`) when Provider Type is `24` and Claim Type is EPSDT/HealthStart (`13`), `18` and Procedure Code with Modifiers is NOT `90791` with modifier `AJ` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 034** - Modified COS is assigned OTHER CLINIC (`08C`) when Provider Type is `24` and Claim Type is EPSDT/HealthStart (`13`), `18` and Procedure Code with Modifiers is NOT `86580` with modifier `HA`, `90791` with modifier `HA`, `90792` with modifier `HA`, `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA`, `90863` with modifier `HA`, `90887` with modifier `HA`, `H0001` with modifier `HA`, `H0003` with modifier `HA`, `H0006` with modifier `HA`, `H0007` with modifier `HA`, `H0018` with modifier `HA`, `H0049` with modifier `HA`, `S9475` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 035** - Modified COS is assigned OTHER CLINIC (`08C`) when Procedure Code with Modifiers is `90853` with modifier `HA`, `T1006` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 036** - Modified COS is assigned OTHER CLINIC (`08C`) when Procedure Code with Modifiers is `H0005` with modifier `HA` and Procedure Modifier Only is `AJ` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 037** - Modified COS is assigned PDN - EPSDT (`08D`) when Provider Type is `44` and Claim Type is Independent Clinic (`18`) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Code with Modifiers is `S9123` with modifier `EP`, `S9124` with modifier `EP`, `Z1710` with modifier `EP`, `Z1710` with modifier `WT`, `Z1715` with modifier `WT`, `Z1720` with modifier `WT`, `Z1725` with modifier `WT`, `Z1730` with modifier `WT`, `Z1735` with modifier `EP`, `Z1735` with modifier `WT`, `Z1740` with modifier `WT`, `Z1745` with modifier `WT` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 038** - Modified COS is assigned OPTICAL APPLIANCE (`09`) when Claim Type is Vision (`08`) OR Medicare Part B Vision Crossover (15/08).

**Rule 039** - Modified COS is assigned PHYSICIAN (`10`) when Provider Type is `20`, `25` and Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code is NOT `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `R0000` through `R6999`, `W7000` through `W8899`, `W8901` through `W8999`, `Y7433` through `Y7570`, `70000` through `79999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `S9122`, `T1001` through `G2023`, `G2024` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 040** - Modified COS is assigned PHYSICIAN (`10`) when Provider Type is `20`, `25` and Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 041** - Modified COS is assigned PHYSICIAN (`10`) when Provider Type is `20`, `25` and Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 042** - Modified COS is assigned DENTAL (`11`) when Claim Type is Dental (`11`) and Provider Type is NOT `43`.

**Rule 043** - Modified COS is assigned FREE-STANDING ASC (`12`) when Provider Specialty is `910`.

**Rule 044** - Modified COS is assigned OPTOMETRY (`13`) when Claim Type is Optometry (`21`) OR Medicare Part B Optometry Crossover (15/21).

**Rule 045** - Modified COS is assigned CHIROPRACTOR (`14`) when Claim Type is Chiropractor (`05`) OR Medicare Part B Chiropractor Crossover (15/05).

**Rule 046** - Modified COS is assigned NURSE PRACTITONER (`15`) when Provider Type is `70` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 047** - Modified COS is assigned NURSE PRACTITONER (`15`) when Provider Type is `70` and Procedure Code with Modifiers is NOT `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 048** - Modified COS is assigned NURSE PRACTITONER (`15`) when Provider Type is `70` and Provider Specialty is NOT `613`, `614` and Procedure Code with Modifiers is NOT `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE`, `90791` with modifier `HE` and Procedure Modifier Only is NOT `HH` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 049** - Modified COS is assigned PSYCHOLOGIST (`16`) when Claim Type is Psychologist (`19`) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code is NOT `Y7433` through `Y7570`, `VS9122` through `T1001` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 050** - Modified COS is assigned PSYCHOLOGIST (`16`) when Claim Type is Psychologist (`19`) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 051** - Modified COS is assigned PSYCHOLOGIST (`16`) when Claim Type is Psychologist (`19`) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 052** - Modified COS is assigned PSYCHOLOGIST (`16`) when Provider Specialty is `611` and Procedure Code with Modifiers is `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is `HF`, `HE` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 053** - Modified COS is assigned PSYCHOLOGIST (`16`) when Provider Type is `70` and Provider Specialty is `613`, `614` and Procedure Code with Modifiers is `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90791` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE` and Procedure Modifier Only is `HH` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 054** - Modified COS is assigned PODIATRIST (`17`) when Claim Type is Podiatry (`10`) OR Medicare Part B Podiatry Crossover (15/10) and Procedure Code is NOT `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 055** - Modified COS is assigned PROSTHETC/ORTHOTC (`18`) when Claim Type is Prosthetic/Orthotic (`17`) OR Medicare Part B Prosthetic/Orthotic Crossover (15/17).

**Rule 056** - Modified COS is assigned MIDWIFERY (`19`) when Provider Type is `90` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 057** - Modified COS is assigned DRUGS-LTC (`20A`) when Provider Type is `26`.

**Rule 058** - Modified COS is assigned DAY TRAINING (`22A`) when Provider Specialty is `725`.

**Rule 059** - Modified COS is assigned EARLY INTERVENTN (`22B`) when Provider Specialty is `730`.

**Rule 060** - Modified COS is assigned SPECIAL EDUCATION (`22C`) when Provider Specialty is `740`.

**Rule 061** - Modified COS is assigned PACT (`22E`) when Provider Specialty is `908`.

**Rule 062** - Modified COS is assigned CSOCI (`23A`) when Provider Type is `59` and Program Status is `641`.

**Rule 063** - Modified COS is assigned CSOCI (`23A`) when Procedure Code is `Y9930` through `Y9995`, `VZ5008` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 064** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0017` with modifier `HU`, `H0017` with modifier `HW`, `H0018` with modifier `HU`, `H0019` with modifier `HU`, `H0019` with modifier `HW`, `H0037` with modifier `HW`, `H0043` with modifier `HU`, `H0043` with modifier `HW`, `H2013` with modifier `HU`, `H2020` with modifier `HU`, `T2023` with modifier `TJ`, `T2038` with modifier `HU`, `T2038` with modifier `HW` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 065** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0043` with modifier `HU` and Procedure Modifier Only is `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 066** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0019` with modifier `HU`, `H2020` with modifier `HW` and Procedure Modifier Only is `52` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 067** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H2020` with modifier `HA`, `H2020` with modifier `HE`, `T2038` with modifier `HA`, `T2038` with modifier `HE` and Procedure Modifier Only is `HW` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 068** - Modified COS is assigned CSOCI (`23A`) when Provider Specialty is `891` through `905`, `V813` through `907`.

**Rule 069** - Modified COS is assigned CSOCI (`23A`) when Procedure Code is `Y9997`, `Y9999` and Provider Specialty is `825` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 070** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H2020` with modifier `HA`, `T2038` with modifier `HA` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 071** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0045` with modifier `TV` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 072** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0043` with modifier `HA` and Procedure Modifier Only is `U1` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 073** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0019` with modifier `HA` and Procedure Modifier Only is `52`, `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 074** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H2036` with modifier `HA` and Procedure Modifier Only is `22`, `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 075** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0006` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 076** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `A0090` with modifier `HA`, `H0001` with modifier `HA`, `H0031` with modifier `HA`, `H0038` with modifier `HA`, `S0215` with modifier `HA`, `S5105` with modifier `HA`, `S5110` with modifier `HA`, `S5150` with modifier `HA`, `S9475` with modifier `HA`, `S9970` with modifier `HA`, `T1005` with modifier `HA`, `T1013` with modifier `HA`, `T2013` with modifier `HA`, `T2036` with modifier `HA`, `T2037` with modifier `HA`, `T2038` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 077** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H2020` with modifier `HA` and Provider Specialty is `825`, `827` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 078** - Modified COS is assigned CSOCI (`23A`) when Procedure Code with Modifiers is `H0018` with modifier `TJ` and Procedure Modifier Only is `U1` through `U2` and Provider Specialty is `826` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 079** - Modified COS is assigned FQHC (`25`) when Provider Type is `43`.

**Rule 080** - Modified COS is assigned MEDICAL SUPPLIES (`30`) when Claim Type is Supplies/DME (`09`) OR Medicare Part B Supplies/DME Crossover (15/09).

**Rule 081** - Modified COS is assigned DME (`31`) when Claim Type is Supplies/DME (`09`) OR Medicare Part B Supplies/DME Crossover (15/09).

**Rule 082** - Modified COS is assigned HEARING AID (`32`) when Claim Type is Hearing Aid (`23`) OR Medicare Part B Hearing Aid Crossover (15/23).

**Rule 083** - Modified COS is assigned HOME HEALTH (`40`) when Claim Type is Home Health (`06`) OR Medicare Part B Home Health Crossover (15/06).

**Rule 084** - Modified COS is assigned HOME HEALTH (`40`) when Provider Specialty is `980` and Claim Type is Independent Clinic (`18`) OR Medicare Part B Independent Clinic Crossover (15/18) and Special Program is NOT `09`.

**Rule 085** - Modified COS is assigned HOME HEALTH (`40`) when Procedure Code with Modifiers is `S9122` with modifier `HA`, `S5130` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 086** - Modified COS is assigned HOME HEALTH (`40`) when Procedure Code with Modifiers is `T1016` with modifier `V1` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 087** - Modified COS is assigned HOME HEALTH (`40`) when Procedure Code with Modifiers is `T1016` with modifier `HD`, `T1016` with modifier `TD` and Procedure Modifier Only is `V1` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 088** - Modified COS is assigned HOSPICE (`50`) when Provider Type is `63`.

**Rule 089** - Modified COS is assigned LABORATORY (`60`) when Claim Type is Laboratory (`16`) OR Medicare Part B Laboratory Crossover (15/16).

**Rule 090** - Modified COS is assigned LABORATORY (`60`) when Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `13`, `22` and Procedure Code is `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `W7000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `G2023`, `G2024` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 091** - Modified COS is assigned LABORATORY (`60`) when Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `13`, `22` and Procedure Code is `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `U0005` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 092** - Modified COS is assigned LABORATORY (`60`) when Procedure Code with Modifiers is `H0003` with modifier `HA`, `H0049` with modifier `HA`, `86580` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 093** - Modified COS is assigned RADIOLOGY (`65`) when Claim Type is Physician (`04`) OR Medicare Part B Physician Crossover (15/04), `10` and Procedure Code is `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 094** - Modified COS is assigned TRANSPORTATION (`70`) when Claim Type is Transportation (`07`) OR Medicare Part B Transportation Crossover (15/07) and Special Program is NOT `09`.

**Rule 095** - Modified COS is assigned ADULT DAY HEALTH (`80`) when Provider Type is `92` and Special Program is NOT `09`.

**Rule 096** - Modified COS is assigned ADULT DAY HEALTH (`80`) when Provider Type is `92` and Procedure Code is NOT `Z1860` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 097** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Procedure Modifier Only is NOT `UC`, `ZI` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 098** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 099** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code is `Y9833` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 100** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code with Modifiers is `S5165` with modifier `HA`, `T2028` with modifier `HA`, `T2029` with modifier `HA`, `T2039` with modifier `HA` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 101** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code is `99199`, `S5111`, `S5120`, `S5125`, `S5165`, `S5170`, `S9122`, `T1019`, `T1999`, `T2003`, `T2015`, `T2025`, `T2028`, `T2035`, `T2039`, `T2041`, `T5999` and Procedure Modifier Only is `SE` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 102** - Modified COS is assigned PRSNL CARE - PHYS (`81A`) when Procedure Code is `T1019`, `T1020` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 103** - Modified COS is assigned PRSNL CARE - MH (`81B`) when Procedure Code is `Z1600` through `Z1605`, `Z1610` through `Z1613`, `VT1001` and Procedure Modifier Only is `UC`, `ZI` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 104** - Modified COS is assigned ADULT MH REHAB (`81C`) when Procedure Code is `Z7333` through `Z7338` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 105** - Modified COS is assigned ADULT MH REHAB (`81C`) when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4`, `H0019` with modifier `U5` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 106** - Modified COS is assigned ADULT MH REHAB (`81C`) when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4` and Procedure Modifier Only is `52` and Special Program is NOT `09` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 107** - Modified COS is assigned DHSS/ECO WAIVER (`87`) when Provider Type is `35` and Special Program is `28` through `32`, `34` through `36`, `V22` through `62`.

**Rule 108** - Modified COS is assigned DHSS/ECO WAIVER (`87`) when Special Program is `22`, `31`, `32` and Provider Specialty is `760`, `862`, `980`, `982`.

**Rule 109** - Modified COS is assigned DHSS/ECO WAIVER (`87`) when Special Program is `33` and Provider Specialty is `845`, `846`, `847`, `848`, `851`.

**Rule 110** - Modified COS is assigned DHSS/ECO WAIVER (`87`) when Provider Specialty is `812`, `814` and Special Program is `32`.

**Rule 111** - Modified COS is assigned TBI (`88`) when Special Program is `17` and Procedure Code is `Y7433` through `Y7570`, `VS5109` through `Y7733`, `S5165` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 112** - Modified COS is assigned TBI (`88`) when Special Program is `17` and Procedure Code with Modifiers is `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S5199` with modifier `HI`, `S8990` with modifier `ST`, `T1028` with modifier `HI`, `97535` with modifier `ST`, `T2025` with modifier `ST` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 113** - Modified COS is assigned TBI (`88`) when Special Program is `17` and Procedure Code with Modifiers is `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is `22` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 114** - Modified COS is assigned TBI (`88`) when Special Program is `17` and Procedure Code with Modifiers is `S9129` with modifier `HQ`, `S9131` with modifier `HQ`, `S9128` with modifier `HQ`, `T2012` with modifier `HQ` and Procedure Modifier Only is `ST` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 115** - Modified COS is assigned ABC WAIVER (`89`) when Provider Specialty is `831` and Special Program is NOT `09`.

**Rule 116** - Modified COS is assigned DDD (`90`) when Provider Type is `95`.

**Rule 117** - Modified COS is assigned DDD (`90`) when Provider Type is `44` and Provider Specialty is `871`, `872`, `873`, `874`, `875`, `876`, `877`, `878`, `879`, `881`, `882`, `883`, `884`, `885`, `886`, `887`, `888`, `889`, `971`, `972`, `973`, `974`, `975`, `976` and Special Program is `07`, `46`.

**Rule 118** - Modified COS is assigned CCPED (`91`) when Special Program is `08`.

**Rule 119** - Modified COS is assigned ACCAP (`92`) when Special Program is `05` and Procedure Code is `Z1710` through `Z1745`, `Z1800` through `Z1899` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 120** - Modified COS is assigned ACCAP (`92`) when Special Program is `05` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 121** - Modified COS is assigned ACCAP (`92`) when Special Program is `05` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 122** - Modified COS is assigned CRPD - NOT USED (`93A`) when Special Program is `04` and Procedure Code is `Z1700` through `Z1745` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 123** - Modified COS is assigned CRPD - NO PDN (`93B`) when Special Program is `06` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 124** - Modified COS is assigned CRPD - NO PDN (`93B`) when Special Program is `06` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 125** - Modified COS is assigned CRPD - PDN (`93C`) when Special Program is `03` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 126** - Modified COS is assigned CRPD - PDN (`93C`) when Special Program is `03` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 127** - Modified COS is assigned CRPD - PDN (`93C`) when Special Program is `03` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 128** - Modified COS is assigned GSHP (`94`) when GSHP is `5` through `9`, `V1` through `2`.

**Rule 129** - Modified COS is assigned PREPAID HEALTH (`95`) when Provider Type is `37`.

**Rule 130** - Modified COS is assigned HOME CARE EXP (`96`) when Special Program is `09`.

**Rule 131** - Modified COS is assigned DEFAULT (`99`) when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is `UN`, `UP` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 132** - Modified COS is assigned DEFAULT (`99`) when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is NOT `AA` through `99`, `I` through `E`, `CTYPE` through `CLINC`, `FACCC` through `PROC`, `PROCM` through `PMOD`, `PSTAT` through `PSPEC`, `PTYPE` through `SPROG`, `R` through `V` and claim is NOT Claim Type Inpatient Hospital (`01`), NOT Claim Type Home Health (`06`), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 133** - Modified COS is assigned Other Clinic (`08C`) when no COSMATRX match is found AND Claim Type is Independent Clinic (`18`) OR Medicare Part B Independent Clinic Crossover (15/18).

**Rule 134** - Modified COS is assigned Other (`99`) when no COSMATRX match is found and the claim does not qualify for COS Other Clinic (`08C`).

