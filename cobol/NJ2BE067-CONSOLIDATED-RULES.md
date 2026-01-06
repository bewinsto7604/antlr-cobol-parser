# NJ2BE067 + COSMATRX Consolidated Business Rules Report

**Rule 001** - COS code `94` (Garden State Health Plan - GSHP) is assigned when GSHP-RELATED flag is `1` (GSHP Encounter Claim), `2` (GSHP Referral In-Plan Capitated), `5` (GSHP Capitated Claim), `6` (GSHP Referral Inpatient), `7` (GSHP PCM Capitated Claim), `8` (GSHP Referral In-Plan Non-Capitated), or `9` (GSHP In-Plan Non-Capitated).

**Rule 002** - COS code `37` (Managed Care) is assigned when Provider Type is `37` (HMO/Managed Care) OR Media Code is `7` (Encounters Fee for Service).

**Rule 003** - COS code `60` (Laboratory) is assigned when Procedure Code follows lab format (first 4 characters numeric and last character alphabetic) AND claim is NOT Claim Type `03` (Outpatient Hospital) AND NOT Medicare Part A Outpatient Hospital Crossover (14/03).

**Rule 004** - COS code `02` (RES TREATMNT CNTR) is assigned when Provider Type is `59` and Program Status is NOT `641`, `03AINPAT`, `MH`, `-`, `GVNMNT00`.

**Rule 005** - COS code `02` (RES TREATMNT CNTR) is assigned when Provider Type is `64`, `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is `4`, `5`, `6`, `9`, `03CINPAT`, `MH`, `-`, `OTHER`, `00`.

**Rule 006** - COS code `02` (RES TREATMNT CNTR) is assigned when Provider Type is `64`, `69` and Claim Type is `01` (Inpatient Hospital) OR Medicare Part A Inpatient Hospital Crossover (14/01), `02` and Facility Control Code is `4`, `5`, `6`, `9`, `03CINPAT`, `MH`, `-`, `OTHER`, `00`.

**Rule 007** - COS code `02` (RES TREATMNT CNTR) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is NOT `27`, `04BOUTPAT`, `-`, `CLINC`, `2700`.

**Rule 008** - COS code `02` (RES TREATMNT CNTR) is assigned when Claim Type is `03` (Outpatient Hospital) OR Medicare Part A Outpatient Hospital Crossover (14/03) and Clinic Code is NOT `27`, `04BOUTPAT`, `-`, `CLINC`, `2700`.

**Rule 009** - COS code `02` (RES TREATMNT CNTR) is assigned when Provider Type is `60`, `65` and Claim Type is `13` (EPSDT/HealthStart).

**Rule 010** - COS code `05` (ICF-MR) is assigned when Provider Type is `88`.

**Rule 011** - COS code `06` (TARGTD CASE MGMT) is assigned when Provider Specialty is `819`, `822`, `824`.

**Rule 012** - COS code `06` (TARGTD CASE MGMT) is assigned when Provider Specialty is `813` and Procedure Code with Modifiers is NOT `T1017` with modifier `TJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 013** - COS code `06` (TARGTD CASE MGMT) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA`, `T2022` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 014** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `80`, `08ACOMM`, `HLTH`, `CLINIC`, `00`.

**Rule 015** - COS code `07` (NURSING FACILITY) is assigned when Provider Specialty is `950` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18`.

**Rule 016** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 017** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 018** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `90791` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE`, `08BMNTL`, `HLTH`, `CLINIC`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 019** - COS code `07` (NURSING FACILITY) is assigned when Provider Specialty is `920`, `940` and Provider Type is `24` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Modifier Only is `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 020** - COS code `07` (NURSING FACILITY) is assigned when Provider Specialty is `940` and Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18`.

**Rule 021** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `90791` with modifier `HA`, `H0010` with modifier `HA`, `S9125` with modifier `HA`, `H2015` with modifier `HM` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 022** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `H0045` with modifier `HA` and Procedure Modifier Only is NOT `TV` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 023** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 024** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `H2015` with modifier `HA`, `H2016` with modifier `HA` and Procedure Modifier Only is `HN`, `HO` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 025** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, `HO` and Procedure Modifier Only is NOT `HI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 026** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code is `Y9996`, `Y9998` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 027** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HE`, `T2038` with modifier `HE` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 028** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `T2016` with modifier `HA`, `T2033` with modifier `HA` and Procedure Modifier Only is `U1` through `U5` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 029** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `T1028` with modifier `HA` and Procedure Modifier Only is `22`, `08COTHER`, `CLINIC`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 030** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18` and Provider Specialty is NOT `910`.

**Rule 031** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18` and Procedure Code with Modifiers is NOT `90791` with modifier `AJ` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 032** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `24` and Claim Type is `13` (EPSDT/HealthStart), `18` and Procedure Code with Modifiers is NOT `86580` with modifier `HA`, `90791` with modifier `HA`, `90792` with modifier `HA`, `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA`, `90863` with modifier `HA`, `90887` with modifier `HA`, `H0001` with modifier `HA`, `H0003` with modifier `HA`, `H0006` with modifier `HA`, `H0007` with modifier `HA`, `H0018` with modifier `HA`, `H0049` with modifier `HA`, `S9475` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 033** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `90853` with modifier `HA`, `T1006` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 034** - COS code `07` (NURSING FACILITY) is assigned when Procedure Code with Modifiers is `H0005` with modifier `HA` and Procedure Modifier Only is `AJ`, `08DPDN`, `-`, `EPSDT`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 035** - COS code `07` (NURSING FACILITY) is assigned when Provider Type is `44` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Procedure Code with Modifiers is `S9123` with modifier `EP`, `S9124` with modifier `EP`, `Z1710` with modifier `EP`, `Z1710` with modifier `WT`, `Z1715` with modifier `WT`, `Z1720` with modifier `WT`, `Z1725` with modifier `WT`, `Z1730` with modifier `WT`, `Z1735` with modifier `EP`, `Z1735` with modifier `WT`, `Z1740` with modifier `WT`, `Z1745` with modifier `WT` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 036** - COS code `09` (OPTICAL APPLIANCE) is assigned when Claim Type is `08` (Vision) OR Medicare Part B Vision Crossover (15/08).

**Rule 037** - COS code `10` (PHYSICIAN) is assigned when Provider Type is `20`, `25` and Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code is NOT `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `R0000` through `R6999`, `W7000` through `W8899`, `W8901` through `W8999`, `Y7433` through `Y7570`, `70000` through `79999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `S9122`, `T1001` through `G2023`, `G2024` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 038** - COS code `10` (PHYSICIAN) is assigned when Provider Type is `20`, `25` and Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 039** - COS code `10` (PHYSICIAN) is assigned when Provider Type is `20`, `25` and Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 040** - COS code `11` (DENTAL) is assigned when Claim Type is `11` (Dental) and Provider Type is NOT `43`.

**Rule 041** - COS code `12` (FREE-STANDING ASC) is assigned when Provider Specialty is `910`.

**Rule 042** - COS code `13` (OPTOMETRY) is assigned when Claim Type is `21` (Optometry) OR Medicare Part B Optometry Crossover (15/21).

**Rule 043** - COS code `14` (CHIROPRACTOR) is assigned when Claim Type is `05` (Chiropractor) OR Medicare Part B Chiropractor Crossover (15/05).

**Rule 044** - COS code `15` (NURSE PRACTITONER) is assigned when Provider Type is `70` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 045** - COS code `15` (NURSE PRACTITONER) is assigned when Provider Type is `70` and Procedure Code with Modifiers is NOT `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 046** - COS code `15` (NURSE PRACTITONER) is assigned when Provider Type is `70` and Provider Specialty is NOT `613`, `614` and Procedure Code with Modifiers is NOT `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE`, `90791` with modifier `HE` and Procedure Modifier Only is NOT `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 047** - COS code `16` (PSYCHOLOGIST) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code is NOT `Y7433` through `Y7570`, `VS9122` through `T1001` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 048** - COS code `16` (PSYCHOLOGIST) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 049** - COS code `16` (PSYCHOLOGIST) is assigned when Claim Type is `19` (Psychologist) OR Medicare Part B Psychologist Crossover (15/19) and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 050** - COS code `16` (PSYCHOLOGIST) is assigned when Provider Specialty is `611` and Procedure Code with Modifiers is `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is `HF`, `HE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 051** - COS code `16` (PSYCHOLOGIST) is assigned when Provider Type is `70` and Provider Specialty is `613`, `614` and Procedure Code with Modifiers is `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90791` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE` and Procedure Modifier Only is `HH` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 052** - COS code `17` (PODIATRIST) is assigned when Claim Type is `10` (Podiatry) OR Medicare Part B Podiatry Crossover (15/10) and Procedure Code is NOT `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 053** - COS code `18` (PROSTHETC/ORTHOTC) is assigned when Claim Type is `17` (Prosthetic/Orthotic) OR Medicare Part B Prosthetic/Orthotic Crossover (15/17).

**Rule 054** - COS code `19` (MIDWIFERY) is assigned when Provider Type is `90` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024` through `20ADRUGS-LTC`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 055** - COS code `19` (MIDWIFERY) is assigned when Provider Type is `26`, `22ADAY`, `TRAINING`, `00`.

**Rule 056** - COS code `19` (MIDWIFERY) is assigned when Provider Specialty is `725`, `22BEARLY`, `INTERVENTN`, `00`.

**Rule 057** - COS code `19` (MIDWIFERY) is assigned when Provider Specialty is `730`, `22CSPECIAL`, `EDUCATION00`.

**Rule 058** - COS code `19` (MIDWIFERY) is assigned when Provider Specialty is `740`.

**Rule 059** - COS code `19` (MIDWIFERY) is assigned when Provider Specialty is `908`, `23ACSOCI`, `00`.

**Rule 060** - COS code `19` (MIDWIFERY) is assigned when Provider Type is `59` and Program Status is `641`.

**Rule 061** - COS code `19` (MIDWIFERY) is assigned when Procedure Code is `Y9930` through `Y9995`, `VZ5008` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 062** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0017` with modifier `HU`, `H0017` with modifier `HW`, `H0018` with modifier `HU`, `H0019` with modifier `HU`, `H0019` with modifier `HW`, `H0037` with modifier `HW`, `H0043` with modifier `HU`, `H0043` with modifier `HW`, `H2013` with modifier `HU`, `H2020` with modifier `HU`, `T2023` with modifier `TJ`, `T2038` with modifier `HU`, `T2038` with modifier `HW` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 063** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HU` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 064** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HU`, `H2020` with modifier `HW` and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 065** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA`, `H2020` with modifier `HE`, `T2038` with modifier `HA`, `T2038` with modifier `HE` and Procedure Modifier Only is `HW` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 066** - COS code `19` (MIDWIFERY) is assigned when Provider Specialty is `891` through `905`, `V813` through `907`.

**Rule 067** - COS code `19` (MIDWIFERY) is assigned when Procedure Code is `Y9997`, `Y9999` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 068** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA`, `T2038` with modifier `HA` and Procedure Modifier Only is `HU` and Provider Specialty is `825` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 069** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0045` with modifier `TV` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 070** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HA` and Procedure Modifier Only is `U1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 071** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HA` and Procedure Modifier Only is `52`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 072** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H2036` with modifier `HA` and Procedure Modifier Only is `22`, `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 073** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 074** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `A0090` with modifier `HA`, `H0001` with modifier `HA`, `H0031` with modifier `HA`, `H0038` with modifier `HA`, `S0215` with modifier `HA`, `S5105` with modifier `HA`, `S5110` with modifier `HA`, `S5150` with modifier `HA`, `S9475` with modifier `HA`, `S9970` with modifier `HA`, `T1005` with modifier `HA`, `T1013` with modifier `HA`, `T2013` with modifier `HA`, `T2036` with modifier `HA`, `T2037` with modifier `HA`, `T2038` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 075** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA` and Provider Specialty is `825`, `827` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 076** - COS code `19` (MIDWIFERY) is assigned when Procedure Code with Modifiers is `H0018` with modifier `TJ` and Procedure Modifier Only is `U1` through `U2` and Provider Specialty is `826` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 077** - COS code `25` (FQHC) is assigned when Provider Type is `43`.

**Rule 078** - COS code `30` (MEDICAL SUPPLIES) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09) and Procedure Code is `A4000` through `A6499`, `A9150` through `A9300`, `B4000` through `B9999`, `X6000` through `X8199`, `X8201` through `X8999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 079** - COS code `31` (DME) is assigned when Claim Type is `09` (Supplies/DME) OR Medicare Part B Supplies/DME Crossover (15/09).

**Rule 080** - COS code `32` (HEARING AID) is assigned when Claim Type is `23` (Hearing Aid) OR Medicare Part B Hearing Aid Crossover (15/23).

**Rule 081** - COS code `40` (HOME HEALTH) is assigned when Claim Type is `06` (Home Health) OR Medicare Part B Home Health Crossover (15/06).

**Rule 082** - COS code `40` (HOME HEALTH) is assigned when Provider Specialty is `980` and Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18) and Special Program is NOT `09`.

**Rule 083** - COS code `40` (HOME HEALTH) is assigned when Procedure Code with Modifiers is `S9122` with modifier `HA`, `S5130` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 084** - COS code `40` (HOME HEALTH) is assigned when Procedure Code with Modifiers is `T1016` with modifier `V1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 085** - COS code `40` (HOME HEALTH) is assigned when Procedure Code with Modifiers is `T1016` with modifier `HD`, `T1016` with modifier `TD` and Procedure Modifier Only is `V1` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 086** - COS code `50` (HOSPICE) is assigned when Provider Type is `63`.

**Rule 087** - COS code `60` (LABORATORY) is assigned when Claim Type is `16` (Laboratory) OR Medicare Part B Laboratory Crossover (15/16).

**Rule 088** - COS code `60` (LABORATORY) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13`, `22` and Procedure Code is `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `W7000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `G2023`, `G2024` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 089** - COS code `60` (LABORATORY) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `13`, `22` and Procedure Code is `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `U0005` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 090** - COS code `60` (LABORATORY) is assigned when Procedure Code with Modifiers is `H0003` with modifier `HA`, `H0049` with modifier `HA`, `86580` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 091** - COS code `65` (RADIOLOGY) is assigned when Claim Type is `04` (Physician) OR Medicare Part B Physician Crossover (15/04), `10` and Procedure Code is `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 092** - COS code `70` (TRANSPORTATION) is assigned when Claim Type is `07` (Transportation) OR Medicare Part B Transportation Crossover (15/07) and Special Program is NOT `09`.

**Rule 093** - COS code `80` (ADULT DAY HEALTH) is assigned when Provider Type is `92` and Special Program is NOT `09`.

**Rule 094** - COS code `80` (ADULT DAY HEALTH) is assigned when Provider Type is `92` and Procedure Code is NOT `Z1860`, `81APRSNL`, `CARE`, `-`, `PHYS00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 095** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Procedure Modifier Only is NOT `UC`, `ZI` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 096** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 097** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Y9833` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 098** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code with Modifiers is `S5165` with modifier `HA`, `T2028` with modifier `HA`, `T2029` with modifier `HA`, `T2039` with modifier `HA` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 099** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `99199`, `S5111`, `S5120`, `S5125`, `S5165`, `S5170`, `S9122`, `T1019`, `T1999`, `T2003`, `T2015`, `T2025`, `T2028`, `T2035`, `T2039`, `T2041`, `T5999` and Procedure Modifier Only is `SE` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 100** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `T1019`, `T1020`, `81BPRSNL`, `CARE`, `-`, `MH`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 101** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Z1600` through `Z1605`, `Z1610` through `Z1613`, `VT1001` and Procedure Modifier Only is `UC`, `ZI` and Special Program is NOT `09`, `81CADULT`, `MH`, `REHAB`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 102** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Z7333` through `Z7338` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 103** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4`, `H0019` with modifier `U5` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 104** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4` and Procedure Modifier Only is `52` and Special Program is NOT `09` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 105** - COS code `87` (DHSS/ECO WAIVER) is assigned when Provider Type is `35` and Special Program is `28` through `32`, `34` through `36`, `V22` through `62`.

**Rule 106** - COS code `87` (DHSS/ECO WAIVER) is assigned when Special Program is `22`, `31`, `32` and Provider Specialty is `760`, `862`, `980`, `982`.

**Rule 107** - COS code `87` (DHSS/ECO WAIVER) is assigned when Special Program is `33` and Provider Specialty is `845`, `846`, `847`, `848`, `851`.

**Rule 108** - COS code `87` (DHSS/ECO WAIVER) is assigned when Provider Specialty is `812`, `814` and Special Program is `32`.

**Rule 109** - COS code `88` (TBI) is assigned when Special Program is `17` and Procedure Code is `Y7433` through `Y7570`, `VS5109` through `Y7733`, `S5165` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 110** - COS code `88` (TBI) is assigned when Special Program is `17` and Procedure Code with Modifiers is `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S5199` with modifier `HI`, `S8990` with modifier `ST`, `T1028` with modifier `HI`, `97535` with modifier `ST`, `T2025` with modifier `ST` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 111** - COS code `88` (TBI) is assigned when Special Program is `17` and Procedure Code with Modifiers is `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is `22` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 112** - COS code `88` (TBI) is assigned when Special Program is `17` and Procedure Code with Modifiers is `S9129` with modifier `HQ`, `S9131` with modifier `HQ`, `S9128` with modifier `HQ`, `T2012` with modifier `HQ` and Procedure Modifier Only is `ST` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 113** - COS code `89` (ABC WAIVER) is assigned when Provider Specialty is `831` and Special Program is NOT `09`.

**Rule 114** - COS code `90` (DDD) is assigned when Provider Type is `95`.

**Rule 115** - COS code `90` (DDD) is assigned when Provider Type is `44` and Provider Specialty is `871`, `872`, `873`, `874`, `875`, `876`, `877`, `878`, `879`, `881`, `882`, `883`, `884`, `885`, `886`, `887`, `888`, `889`, `971`, `972`, `973`, `974`, `975`, `976` and Special Program is `07`, `46`.

**Rule 116** - COS code `91` (CCPED) is assigned when Special Program is `08`.

**Rule 117** - COS code `92` (ACCAP) is assigned when Special Program is `05` and Procedure Code is `Z1710` through `Z1745`, `Z1800` through `Z1899` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 118** - COS code `92` (ACCAP) is assigned when Special Program is `05` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 119** - COS code `92` (ACCAP) is assigned when Special Program is `05` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52`, `93ACRPD`, `-`, `NOT`, `USED`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 120** - COS code `92` (ACCAP) is assigned when Special Program is `04` and Procedure Code is `Z1700` through `Z1745`, `93BCRPD` through `-`, `NO` through `PDN`, `00` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 121** - COS code `92` (ACCAP) is assigned when Special Program is `06` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 122** - COS code `92` (ACCAP) is assigned when Special Program is `06` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `93CCR` with modifier `PD`, `-PDN0`, `0` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 123** - COS code `92` (ACCAP) is assigned when Special Program is `03` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 124** - COS code `92` (ACCAP) is assigned when Special Program is `03` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 125** - COS code `92` (ACCAP) is assigned when Special Program is `03` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 126** - COS code `94` (GSHP) is assigned when GSHP is `5` through `9`, `V1` through `2`.

**Rule 127** - COS code `95` (PREPAID HEALTH) is assigned when Provider Type is `37`.

**Rule 128** - COS code `96` (HOME CARE EXP) is assigned when Special Program is `09`.

**Rule 129** - COS code `99` (DEFAULT) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is `UN`, `UP` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 130** - COS code `99` (DEFAULT) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is NOT `AA` through `99`, `I` through `E`, `CTYPE` through `CLINC`, `FACCC` through `PROC`, `PROCM` through `PMOD`, `PSTAT` through `PSPEC`, `PTYPE` through `SPROG`, `R` through `V` and claim is NOT Claim Type `01` (Inpatient Hospital), NOT Claim Type `06` (Home Health), NOT Medicare Part A Inpatient Hospital Crossover (14/01), and NOT Outpatient Lab Procedure.

**Rule 131** - COS code `08C` (Other Clinic) is assigned when no COSMATRX match is found AND Claim Type is `18` (Independent Clinic) OR Medicare Part B Independent Clinic Crossover (15/18).

**Rule 132** - COS code `99` (Other) is assigned when no COSMATRX match is found and the claim does not qualify for COS `08C`.

