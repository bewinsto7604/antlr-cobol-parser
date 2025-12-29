# NJ2BE067 + COSMATRX Consolidated Business Rules Report

**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1` (GSHP Encounter Claim), `2` (GSHP Referral In-Plan Capitated), `5` (GSHP Capitated Claim), `6` (GSHP Referral Inpatient), `7` (GSHP PCM Capitated Claim), `8` (GSHP Referral In-Plan Non-Capitated), or `9` (GSHP In-Plan Non-Capitated).

**Rule 002** - COS code `37` (Managed Care) is assigned when Provider Type is `37` (HMO/Managed Care) OR Media Code is `7` (Encounters Fee for Service).

**Rule 003** - COS code `60` (Laboratory) is assigned when Procedure Code follows lab format (first 4 characters numeric and last character alphabetic) AND claim is NOT Claim Type `03` (Outpatient Hospital) AND NOT Medicare Part A Outpatient Hospital Crossover (14/03).

**Rule 004** - COS code `01A` (INPAT GENL HOSP) is assigned when Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `60`.

**Rule 005** - COS code `01B` (INPAT OTHER HOSP) is assigned when Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01) and Provider Type is `65`.

**Rule 006** - COS code `02` (RES TREATMNT CNTR) is assigned when Provider Type is `59` and Program Status is NOT `641`.

**Rule 007** - COS code `03A` (INPAT MH - GVNMNT) is assigned when Provider Type is `64`, `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is `4`, `5`, `6`, `9`.

**Rule 008** - COS code `03C` (INPAT MH - OTHER) is assigned when Provider Type is `64`, `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is NOT `4`, `5`, `6`, `9`.

**Rule 009** - COS code `04A` (OUTPAT / EPSDT) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is NOT `27`.

**Rule 010** - COS code `04B` (OUTPAT - CLINC 27) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is `27`.

**Rule 011** - COS code `04C` (EPSDT) is assigned when Provider Type is `60`, `65` and Claim Type is `13` (EPSDT/HealthStart).

**Rule 012** - COS code `05` (ICF-MR) is assigned when Provider Type is `88`.

**Rule 013** - COS code `06` (TARGTD CASE MGMT) is assigned when Provider Specialty is `819`, `822`, `824`.

**Rule 014** - COS code `06` (TARGTD CASE MGMT) is assigned when Provider Specialty is `813` and Procedure Code with Modifiers is NOT `T1017` with modifier `TJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 015** - COS code `06` (TARGTD CASE MGMT) is assigned when Procedure Code with Modifiers is `H0006`, `T2022` with modifier `HA`, `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 016** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `80`.

**Rule 017** - COS code `08A` (COMM HLTH CLINIC) is assigned when Provider Specialty is `950` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18`.

**Rule 018** - COS code `08A` (COMM HLTH CLINIC) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 019** - COS code `08A` (COMM HLTH CLINIC) is assigned when Procedure Code with Modifiers is `90832`, `90837`, `90846`, `90847` with modifier `HA`, `HA`, `HA`, `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 020** - COS code `08A` (COMM HLTH CLINIC) is assigned when Procedure Code with Modifiers is `90791` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 021** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Provider Specialty is `920`, `940` and Provider Type is `24` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Modifier Only is `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 022** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Provider Specialty is `940` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18`.

**Rule 023** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `90791`, `H0010`, `S9125`, `H2015` with modifier `HA`, `HA`, `HA`, `HM` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 024** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `H0045` with modifier `HA` and PMOD VT is NOT  and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 025** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 026** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `H2015`, `H2016` with modifier `HA`, `HA` and Procedure Modifier Only is `HN`, `HO` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 027** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, `HO` and Procedure Modifier Only is NOT `HI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 028** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code is `Y9996`, `Y9998` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 029** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `H2020`, `T2038` with modifier `HE`, `HE` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 030** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `T2016`, `T2033` with modifier `HA`, `HA` and Procedure Modifier Only is `U1`, `U5` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 031** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code with Modifiers is `T1028` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 032** - COS code `08C` (OTHER CLINIC) is assigned when Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18` and Provider Specialty is NOT `910` and Procedure Code with Modifiers is NOT `90791` with modifier `AJ` and Procedure Code with Modifiers is NOT `86580`, `90791`, `90792`, `90832`, `90837`, `90846`, `90847`, `90863`, `90887`, `H0001`, `H0003`, `H0006`, `H0007`, `H0018`, `H0049`, `S9475` with modifier `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 033** - COS code `08C` (OTHER CLINIC) is assigned when Procedure Code with Modifiers is `90853`, `T1006` with modifier `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 034** - COS code `08C` (OTHER CLINIC) is assigned when Procedure Code with Modifiers is `H0005` with modifier `HA` and Procedure Modifier Only is `AJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 035** - COS code `08D` (PDN - EPSDT) is assigned when Provider Type is `44` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Code with Modifiers is `S9123`, `S9124`, `Z1710`, `Z1710`, `Z1715`, `Z1720`, `Z1725`, `Z1730`, `Z1735`, `Z1735`, `Z1740`, `Z1745` with modifier `EP`, `EP`, `EP`, `WT`, `WT`, `WT`, `WT`, `WT`, `EP`, `WT`, `WT`, `WT` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 036** - COS code `09` (OPTICAL APPLIANCE) is assigned when Claim Type is `08` (Vision) OR Medicare Part B Vision Crossover (15/08).

**Rule 037** - COS code `10` (PHYSICIAN) is assigned when Provider Type is `20`, `25` and Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code is NOT `G0054`, `G0060`, `P0000`, `P9999`, `Q0111`, `Q0116`, `R0000`, `R6999`, `W7000`, `W8899`, `W8901`, `W8999`, `Y7433`, `Y7570`, `70000`, `79999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `G0026`, `G0027`, `36415`, `36430`, `36440`, `36450`, `36455`, `36460`, `S9122`, `T1001`, `G2023`, `G2024` and Procedure Code with Modifiers is NOT `S5101`, `S5102`, `S5120`, `S8990`, `97535` with modifier `ST`, `ST`, `ST`, `ST`, `ST` and Procedure Code with Modifiers is NOT `H0004`, `S5135`, `97532` with modifier `ST`, `ST`, `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 038** - COS code `11` (DENTAL) is assigned when Claim Type is `11` (Dental) and Provider Type is NOT `43`.

**Rule 039** - COS code `12` (FREE-STANDING ASC) is assigned when Provider Specialty is `910`.

**Rule 040** - COS code `13` (OPTOMETRY) is assigned when Claim Type is `21` (Optometry) OR Medicare Part B Optometry Crossover (15/21).

**Rule 041** - COS code `14` (CHIROPRACTOR) is assigned when Claim Type is `05` (Chiropractor) OR Medicare Part B Chiropractor Crossover (15/05).

**Rule 042** - COS code `15` (NURSE PRACTITONER) is assigned when Provider Type is `70` and Procedure Code is NOT `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `G2023`, `G2024` and Procedure Code with Modifiers is NOT `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, `90887` with modifier `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ` and Procedure Modifier Only is NOT `HF`, `HE` and Provider Specialty is NOT `613`, `614` and Procedure Code with Modifiers is NOT `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, `90832`, `90834`, `90837`, `90846`, `90847`, `90853`, `90887`, `90887`, `90791` with modifier `HF`, `HF`, `HF`, `HF`, `HF`, `HF`, `HF`, `HE`, `HE`, `HE`, `HE`, `HE`, `HE`, `HF`, `HE`, `HE` and Procedure Modifier Only is NOT `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 043** - COS code `16` (PSYCHOLOGIST) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code is NOT `Y7433`, `Y7570`, `VS9122`, `T1001` and Procedure Code with Modifiers is NOT `S5101`, `S5102`, `S5120`, `S8990`, `97535` with modifier `ST`, `ST`, `ST`, `ST`, `ST` and Procedure Code with Modifiers is NOT `H0004`, `S5135`, `97532` with modifier `ST`, `ST`, `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 044** - COS code `16` (PSYCHOLOGIST) is assigned when Provider Specialty is `611` and Procedure Code with Modifiers is `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, `90887` with modifier `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ`, `AJ` and Procedure Modifier Only is `HF`, `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 045** - COS code `16` (PSYCHOLOGIST) is assigned when Provider Type is `70` and Provider Specialty is `613`, `614` and Procedure Code with Modifiers is `90832`, `90834`, `90837`, `90846`, `90832`, `90834`, `90837`, `90846`, `90847`, `90791`, `90853`, `90847`, `90853`, `90791`, `90887`, `90887` with modifier `HF`, `HF`, `HF`, `HF`, `HE`, `HE`, `HE`, `HE`, `HF`, `HF`, `HF`, `HE`, `HE`, `HE`, `HF`, `HE` and Procedure Modifier Only is `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 046** - COS code `17` (PODIATRIST) is assigned when Claim Type is `10` (Podiatry) OR Medicare Part B Podiatry Crossover (15/10) and PROC RR0000 is NOT `6999`, `W7000`, `W7999`, `70000`, `79999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 047** - COS code `18` (PROSTHETC/ORTHOTC) is assigned when Claim Type is `17` (Prosthetic/Orthotic) OR Medicare Part B Prosthetic/Orthotic Crossover (15/17).

**Rule 048** - COS code `19` (MIDWIFERY) is assigned when Provider Type is `90` and Procedure Code is NOT `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `G2023`, `G2024` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 049** - COS code `20A` (DRUGS-LTC) is assigned when Provider Type is `26`.

**Rule 050** - COS code `22A` (DAY TRAINING) is assigned when Provider Specialty is `725`.

**Rule 051** - COS code `22B` (EARLY INTERVENTN) is assigned when Provider Specialty is `730`.

**Rule 052** - COS code `22C` (SPECIAL EDUCATION) is assigned when Provider Specialty is `740`.

**Rule 053** - COS code `22E` (PACT) is assigned when Provider Specialty is `908`.

**Rule 054** - COS code `23A` (CSOCI) is assigned when Provider Type is `59` and Program Status is `641`.

**Rule 055** - COS code `23A` (CSOCI) is assigned when Procedure Code is `Y9930`, `Y9995`, `VZ5008` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 056** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0017`, `H0017`, `H0018`, `H0019`, `H0019`, `H0037`, `H0043`, `H0043`, `H2013`, `H2020`, `T2023`, `T2038`, `T2038` with modifier `HU`, `HW`, `HU`, `HU`, `HW`, `HW`, `HU`, `HW`, `HU`, `HU`, `TJ`, `HU`, `HW` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 057** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HU` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 058** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0019`, `H2020` with modifier `HU`, `HW` and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 059** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H2020`, `H2020`, `T2038`, `T2038` with modifier `HA`, `HE`, `HA`, `HE` and Procedure Modifier Only is `HW` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 060** - COS code `23A` (CSOCI) is assigned when Provider Specialty is `891`, `905`, `V813`, `907`.

**Rule 061** - COS code `23A` (CSOCI) is assigned when Procedure Code is `Y9997`, `Y9999` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 062** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H2020`, `T2038` with modifier `HA`, `HA` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 063** - COS code `23A` (CSOCI) is assigned when PROCMVH0045T is  and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 064** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HA` and Procedure Modifier Only is `U1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 065** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HA` and Procedure Modifier Only is `52`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 066** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H2036` with modifier `HA` and Procedure Modifier Only is `22`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 067** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 068** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `A0090`, `H0001`, `H0031`, `H0038`, `S0215`, `S5105`, `S5110`, `S5150`, `S9475`, `S9970`, `T1005`, `T1013`, `T2013`, `T2036`, `T2037`, `T2038` with modifier `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 069** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA` and Provider Specialty is `825`, `827` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 070** - COS code `23A` (CSOCI) is assigned when Procedure Code with Modifiers is `H0018` with modifier `TJ` and Procedure Modifier Only is `U1`, `U2` and Provider Specialty is `826` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 071** - COS code `25` (FQHC) is assigned when Provider Type is `43`.

**Rule 072** - COS code `30` (MEDICAL SUPPLIES) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09) and Procedure Code is `A4000`, `A6499`, `A9150`, `A9300`, `B4000`, `B9999`, `X6000`, `X8199`, `X8201`, `X8999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 073** - COS code `31` (DME) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09).

**Rule 074** - COS code `32` (HEARING AID) is assigned when Claim Type is `23` (Hearing Aid) OR Medicare Part B Hearing Aid Crossover (15/23).

**Rule 075** - COS code `40` (HOME HEALTH) is assigned when Claim Type is `06` (Home Health) OR Medicare Part B Home Health Crossover (15/06).

**Rule 076** - COS code `40` (HOME HEALTH) is assigned when Provider Specialty is `980` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Special Program is NOT `09`.

**Rule 077** - COS code `40` (HOME HEALTH) is assigned when Procedure Code with Modifiers is `S9122`, `S5130` with modifier `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 078** - COS code `40` (HOME HEALTH) is assigned when PROCMVT1016 is `1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 079** - COS code `40` (HOME HEALTH) is assigned when Procedure Code with Modifiers is `T1016`, `T1016` with modifier `HD`, `TD` and PMOD V is `1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 080** - COS code `50` (HOSPICE) is assigned when Provider Type is `63`.

**Rule 081** - COS code `60` (LABORATORY) is assigned when Claim Type is `16` (Laboratory) OR Medicare Part B Laboratory Crossover (15/16).

**Rule 082** - COS code `60` (LABORATORY) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13`, `22` and Procedure Code is `G0054`, `G0060`, `P0000`, `P9999`, `Q0111`, `Q0116`, `W7000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `U0001`, `U0005`, `VG0001`, `G0026`, `G0027`, `36415`, `36430`, `36440`, `36450`, `36455`, `36460`, `G2023`, `G2024` and Procedure Code is `P0000`, `P9999`, `Q0111`, `Q0116`, `W8000`, `W8899`, `W8901`, `W8999`, `80000`, `89999`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `U0005` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 083** - COS code `60` (LABORATORY) is assigned when Procedure Code with Modifiers is `H0003`, `H0049`, `86580` with modifier `HA`, `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 084** - COS code `65` (RADIOLOGY) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `10` and PROC RR0000 is `6999`, `W7000`, `W7999`, `70000`, `79999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 085** - COS code `70` (TRANSPORTATION) is assigned when Claim Type is `07` (Transportation) OR Medicare Part B Transportation Crossover (15/07) and Special Program is NOT `09`.

**Rule 086** - COS code `80` (ADULT DAY HEALTH) is assigned when Provider Type is `92` and Special Program is NOT `09` and Procedure Code is NOT `Z1860` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 087** - COS code `81A` (PRSNL CARE - PHYS) is assigned when Procedure Code is `Z1600`, `Z1617`, `VT1001`, `S9122` and Procedure Modifier Only is NOT `UC`, `ZI` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 088** - COS code `81A` (PRSNL CARE - PHYS) is assigned when Procedure Code is `Y9833` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 089** - COS code `81A` (PRSNL CARE - PHYS) is assigned when Procedure Code with Modifiers is `S5165`, `T2028`, `T2029`, `T2039` with modifier `HA`, `HA`, `HA`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 090** - COS code `81A` (PRSNL CARE - PHYS) is assigned when Procedure Code is `99199`, `S5111`, `S5120`, `S5125`, `S5165`, `S5170`, `S9122`, `T1019`, `T1999`, `T2003`, `T2015`, `T2025`, `T2028`, `T2035`, `T2039`, `T2041`, `T5999` and Procedure Modifier Only is `SE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 091** - COS code `81A` (PRSNL CARE - PHYS) is assigned when Procedure Code is `T1019`, `T1020` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 092** - COS code `81B` (PRSNL CARE - MH) is assigned when Procedure Code is `Z1600`, `Z1605`, `Z1610`, `Z1613`, `VT1001` and Procedure Modifier Only is `UC`, `ZI` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 093** - COS code `81C` (ADULT MH REHAB) is assigned when Procedure Code is `Z7333`, `Z7338` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 094** - COS code `81C` (ADULT MH REHAB) is assigned when Procedure Code with Modifiers is `H0019`, `H0019`, `H0019`, `H0019`, `H0019` with modifier `U1`, `U2`, `U3`, `U4`, `U5` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 095** - COS code `81C` (ADULT MH REHAB) is assigned when Procedure Code with Modifiers is `H0019`, `H0019`, `H0019`, `H0019` with modifier `U1`, `U2`, `U3`, `U4` and Procedure Modifier Only is `52` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 096** - COS code `87` (DHSS/ECO WAIVER) is assigned when Provider Type is `35` and Special Program is `28`, `32`, `34`, `36`, `V22`, `62`.

**Rule 097** - COS code `87` (DHSS/ECO WAIVER) is assigned when Special Program is `22`, `31`, `32` and Provider Specialty is `760`, `862`, `980`, `982`.

**Rule 098** - COS code `87` (DHSS/ECO WAIVER) is assigned when Special Program is `33` and Provider Specialty is `845`, `846`, `847`, `848`, `851`.

**Rule 099** - COS code `87` (DHSS/ECO WAIVER) is assigned when Provider Specialty is `812`, `814` and Special Program is `32`.

**Rule 100** - COS code `88` (TBI) is assigned when Special Program is `17` and Procedure Code is `Y7433`, `Y7570`, `VS5109`, `Y7733`, `S5165` and Procedure Code with Modifiers is `S5101`, `S5102`, `S5120`, `S5199`, `S8990`, `T1028`, `97535`, `T2025` with modifier `ST`, `ST`, `ST`, `HI`, `ST`, `HI`, `ST`, `ST` and Procedure Code with Modifiers is `H0004`, `S5135`, `97532` with modifier `ST`, `ST`, `ST` and Procedure Modifier Only is `22` and Procedure Code with Modifiers is `S9129`, `S9131`, `S9128`, `T2012` with modifier `HQ`, `HQ`, `HQ`, `HQ` and Procedure Modifier Only is `ST` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 101** - COS code `89` (ABC WAIVER) is assigned when Provider Specialty is `831` and Special Program is NOT `09`.

**Rule 102** - COS code `90` (DDD) is assigned when Provider Type is `95`.

**Rule 103** - COS code `90` (DDD) is assigned when Provider Type is `44` and Provider Specialty is `871`, `872`, `873`, `874`, `875`, `876`, `877`, `878`, `879`, `881`, `882`, `883`, `884`, `885`, `886`, `887`, `888`, `889`, `971`, `972`, `973`, `974`, `975`, `976` and Special Program is `07`, `46`.

**Rule 104** - COS code `91` (CCPED) is assigned when Special Program is `08`.

**Rule 105** - COS code `92` (ACCAP) is assigned when Special Program is `05` and Procedure Code is `Z1710`, `Z1745`, `Z1800`, `Z1899` and Procedure Code with Modifiers is `S5199`, `T1028`, `S9123`, `S9124` with modifier `HI`, `HI`, `52`, `52` and PROCMVS9123TDS9123T is `S9124TES9124TV` and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 106** - COS code `93A` (CRPD - NOT USED) is assigned when Special Program is `04` and Procedure Code is `Z1700`, `Z1745` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 107** - COS code `93B` (CRPD - NO PDN) is assigned when Special Program is `06` and Procedure Code is `Z1700`, `Z1745`, `VS5160`, `S5161`, `S5162`, `S5165` and Procedure Code with Modifiers is `S5199`, `T1028` with modifier `HI`, `HI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 108** - COS code `93C` (CRPD - PDN) is assigned when Special Program is `03` and Procedure Code is `Z1700`, `Z1745`, `VS5160`, `S5161`, `S5162`, `S5165` and Procedure Code with Modifiers is `S5199`, `T1028`, `S9123`, `S9124` with modifier `HI`, `HI`, `52`, `52` and PROCMVS9123TDS9123T is `S9124TES9124TV` and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 109** - COS code `94` (GSHP) is assigned when GSHP is `5`, `9`, `V1`, `2`.

**Rule 110** - COS code `95` (PREPAID HEALTH) is assigned when Provider Type is `37`.

**Rule 111** - COS code `96` (HOME CARE EXP) is assigned when Special Program is `09`.

**Rule 112** - COS code `99` (DEFAULT) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is `UN`, `UP` and Procedure Modifier Only is NOT `AA`, `99` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 113** - COS code `08C` (Other Clinic) is assigned when no COSMATRX match is found AND Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18).

**Rule 114** - COS code `99` (Other) is assigned when no COSMATRX match is found and the claim does not qualify for COS `08C`.

