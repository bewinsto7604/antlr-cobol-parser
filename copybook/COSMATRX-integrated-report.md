# COS Business Rules Report

**Rule 001** - INPAT GENL HOSP (01A) is assigned when Claim Type is `01` and Provider Type is `60`.

**Rule 002** - INPAT OTHER HOSP (01B) is assigned when Claim Type is `01` and Provider Type is `65`.

**Rule 003** - RES TREATMNT CNTR (02) is assigned when Provider Type is `59` and Program Status is NOT `641`.

**Rule 004** - INPAT MH - GVNMNT (03A) is assigned when Provider Type is `64`, `69` and Claim Type is `01`, `02` and Facility Control Code is `4`, `5`, `6`, `9`.

**Rule 005** - INPAT MH - OTHER (03C) is assigned when Provider Type is `64`, `69` and Claim Type is `01`, `02` and Facility Control Code is NOT `4`, `5`, `6`, `9`.

**Rule 006** - OUTPAT / EPSDT (04A) is assigned when Claim Type is `03` and Clinic Code is NOT `27`.

**Rule 007** - OUTPAT - CLINC 27 (04B) is assigned when Claim Type is `03` and Clinic Code is `27`.

**Rule 008** - EPSDT (04C) is assigned when Provider Type is `60`, `65` and Claim Type is `13`.

**Rule 009** - ICF-MR (05) is assigned when Provider Type is `88`.

**Rule 010** - TARGTD CASE MGMT (06) is assigned when Provider Specialty is `819`, `822`, `824`.

**Rule 011** - TARGTD CASE MGMT (06) is assigned when Provider Specialty is `813` and Procedure Code with Modifiers is NOT `T1017` with modifier `TJ`.

**Rule 012** - TARGTD CASE MGMT (06) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA`, `T2022` with modifier `HA` and Procedure Modifier Only is NOT `22`.

**Rule 013** - NURSING FACILITY (07) is assigned when Provider Type is `80`.

**Rule 014** - COMM HLTH CLINIC (08A) is assigned when Provider Specialty is `950` and Provider Type is `24` and Claim Type is `13`, `18`.

**Rule 015** - COMM HLTH CLINIC (08A) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152`, `96158`, `96159`, `H0007`, `H0015`, `H0018` and Procedure Modifier Only is `HA`.

**Rule 016** - COMM HLTH CLINIC (08A) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA` and Procedure Modifier Only is `22`.

**Rule 017** - COMM HLTH CLINIC (08A) is assigned when Procedure Code with Modifiers is `90791` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE`.

**Rule 018** - MNTL HLTH CLINIC (08B) is assigned when Provider Specialty is `920`, `940` and Provider Type is `24` and Claim Type is `18` and Procedure Modifier Only is `HH`.

**Rule 019** - MNTL HLTH CLINIC (08B) is assigned when Provider Specialty is `940` and Provider Type is `24` and Claim Type is `13`, `18`.

**Rule 020** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `90791` with modifier `HA`, `H0010` with modifier `HA`, `S9125` with modifier `HA`, `H2015` with modifier `HM`.

**Rule 021** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `H0045` with modifier `HA` and Procedure Modifier Only is NOT `TV`.

**Rule 022** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `90832` with modifier `HA` and Procedure Modifier Only is NOT `22`.

**Rule 023** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `H2015` with modifier `HA`, `H2016` with modifier `HA` and Procedure Modifier Only is `HN`, `HO`.

**Rule 024** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, `HO` and Procedure Modifier Only is NOT `HI`.

**Rule 025** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code is `Y9996`, `Y9998` and Provider Specialty is `825`.

**Rule 026** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HE`, `T2038` with modifier `HE` and Procedure Modifier Only is `HU` and Provider Specialty is `825`.

**Rule 027** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `T2016` with modifier `HA`, `T2033` with modifier `HA` and Procedure Modifier Only is `U1` through `U5`.

**Rule 028** - MNTL HLTH CLINIC (08B) is assigned when Procedure Code with Modifiers is `T1028` with modifier `HA` and Procedure Modifier Only is `22`.

**Rule 029** - OTHER CLINIC (08C) is assigned when Provider Type is `24` and Claim Type is `13`, `18` and Provider Specialty is NOT `910`.

**Rule 030** - OTHER CLINIC (08C) is assigned when Provider Type is `24` and Claim Type is `13`, `18` and Procedure Code with Modifiers is NOT `90791` with modifier `AJ`.

**Rule 031** - OTHER CLINIC (08C) is assigned when Provider Type is `24` and Claim Type is `13`, `18` and Procedure Code with Modifiers is NOT `86580` with modifier `HA`, `90791` with modifier `HA`, `90792` with modifier `HA`, `90832` with modifier `HA`, `90837` with modifier `HA`, `90846` with modifier `HA`, `90847` with modifier `HA`, `90863` with modifier `HA`, `90887` with modifier `HA`, `H0001` with modifier `HA`, `H0003` with modifier `HA`, `H0006` with modifier `HA`, `H0007` with modifier `HA`, `H0018` with modifier `HA`, `H0049` with modifier `HA`, `S9475` with modifier `HA`.

**Rule 032** - OTHER CLINIC (08C) is assigned when Procedure Code with Modifiers is `90853` with modifier `HA`, `T1006` with modifier `HA`.

**Rule 033** - OTHER CLINIC (08C) is assigned when Procedure Code with Modifiers is `H0005` with modifier `HA` and Procedure Modifier Only is `AJ`.

**Rule 034** - PDN - EPSDT (08D) is assigned when Provider Type is `44` and Claim Type is `18` and Procedure Code with Modifiers is `S9123` with modifier `EP`, `S9124` with modifier `EP`, `Z1710` with modifier `EP`, `Z1710` with modifier `WT`, `Z1715` with modifier `WT`, `Z1720` with modifier `WT`, `Z1725` with modifier `WT`, `Z1730` with modifier `WT`, `Z1735` with modifier `EP`, `Z1735` with modifier `WT`, `Z1740` with modifier `WT`, `Z1745` with modifier `WT`.

**Rule 035** - OPTICAL APPLIANCE (09) is assigned when Claim Type is `08`.

**Rule 036** - PHYSICIAN (10) is assigned when Provider Type is `20`, `25` and Claim Type is `04`, `13` and Procedure Code is NOT `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `R0000` through `R6999`, `W7000` through `W8899`, `W8901` through `W8999`, `Y7433` through `Y7570`, `70000` through `79999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `S9122`, `T1001` through `G2023`, `G2024`.

**Rule 037** - PHYSICIAN (10) is assigned when Provider Type is `20`, `25` and Claim Type is `04`, `13` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST`.

**Rule 038** - PHYSICIAN (10) is assigned when Provider Type is `20`, `25` and Claim Type is `04`, `13` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22`.

**Rule 039** - DENTAL (11) is assigned when Claim Type is `11` and Provider Type is NOT `43`.

**Rule 040** - FREE-STANDING ASC (12) is assigned when Provider Specialty is `910`.

**Rule 041** - OPTOMETRY (13) is assigned when Claim Type is `21`.

**Rule 042** - CHIROPRACTOR (14) is assigned when Claim Type is `05`.

**Rule 043** - NURSE PRACTITONER (15) is assigned when Provider Type is `70` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024`.

**Rule 044** - NURSE PRACTITONER (15) is assigned when Provider Type is `70` and Procedure Code with Modifiers is NOT `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE`.

**Rule 045** - NURSE PRACTITONER (15) is assigned when Provider Type is `70` and Provider Specialty is NOT `613`, `614` and Procedure Code with Modifiers is NOT `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE`, `90791` with modifier `HE` and Procedure Modifier Only is NOT `HH`.

**Rule 046** - PSYCHOLOGIST (16) is assigned when Claim Type is `19` and Special Program is NOT `17` and Procedure Code is NOT `Y7433` through `Y7570`, `VS9122` through `T1001`.

**Rule 047** - PSYCHOLOGIST (16) is assigned when Claim Type is `19` and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S8990` with modifier `ST`, `97535` with modifier `ST`.

**Rule 048** - PSYCHOLOGIST (16) is assigned when Claim Type is `19` and Special Program is NOT `17` and Procedure Code with Modifiers is NOT `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is NOT `22`.

**Rule 049** - PSYCHOLOGIST (16) is assigned when Provider Specialty is `611` and Procedure Code with Modifiers is `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is `HF`, `HE`.

**Rule 050** - PSYCHOLOGIST (16) is assigned when Provider Type is `70` and Provider Specialty is `613`, `614` and Procedure Code with Modifiers is `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90791` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE` and Procedure Modifier Only is `HH`.

**Rule 051** - PODIATRIST (17) is assigned when Claim Type is `10` and Procedure Code is NOT `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999`.

**Rule 052** - PROSTHETC/ORTHOTC (18) is assigned when Claim Type is `17`.

**Rule 053** - MIDWIFERY (19) is assigned when Provider Type is `90` and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `G2023`, `G2024`.

**Rule 054** - DRUGS-LTC (20A) is assigned when Provider Type is `26`.

**Rule 055** - DAY TRAINING (22A) is assigned when Provider Specialty is `725`.

**Rule 056** - EARLY INTERVENTN (22B) is assigned when Provider Specialty is `730`.

**Rule 057** - SPECIAL EDUCATION (22C) is assigned when Provider Specialty is `740`.

**Rule 058** - PACT (22E) is assigned when Provider Specialty is `908`.

**Rule 059** - CSOCI (23A) is assigned when Provider Type is `59` and Program Status is `641`.

**Rule 060** - CSOCI (23A) is assigned when Procedure Code is `Y9930` through `Y9995`, `VZ5008`.

**Rule 061** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0017` with modifier `HU`, `H0017` with modifier `HW`, `H0018` with modifier `HU`, `H0019` with modifier `HU`, `H0019` with modifier `HW`, `H0037` with modifier `HW`, `H0043` with modifier `HU`, `H0043` with modifier `HW`, `H2013` with modifier `HU`, `H2020` with modifier `HU`, `T2023` with modifier `TJ`, `T2038` with modifier `HU`, `T2038` with modifier `HW`.

**Rule 062** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HU` and Procedure Modifier Only is `22`.

**Rule 063** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HU`, `H2020` with modifier `HW` and Procedure Modifier Only is `52`.

**Rule 064** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA`, `H2020` with modifier `HE`, `T2038` with modifier `HA`, `T2038` with modifier `HE` and Procedure Modifier Only is `HW`.

**Rule 065** - CSOCI (23A) is assigned when Provider Specialty is `891` through `905`, `V813` through `907`.

**Rule 066** - CSOCI (23A) is assigned when Procedure Code is `Y9997`, `Y9999` and Provider Specialty is `825`.

**Rule 067** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA`, `T2038` with modifier `HA` and Procedure Modifier Only is `HU` and Provider Specialty is `825`.

**Rule 068** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0045` with modifier `TV`.

**Rule 069** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0043` with modifier `HA` and Procedure Modifier Only is `U1`.

**Rule 070** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0019` with modifier `HA` and Procedure Modifier Only is `52`, `HA`.

**Rule 071** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H2036` with modifier `HA` and Procedure Modifier Only is `22`, `HA`.

**Rule 072** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0006` with modifier `HA` and Procedure Modifier Only is `22`.

**Rule 073** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `A0090` with modifier `HA`, `H0001` with modifier `HA`, `H0031` with modifier `HA`, `H0038` with modifier `HA`, `S0215` with modifier `HA`, `S5105` with modifier `HA`, `S5110` with modifier `HA`, `S5150` with modifier `HA`, `S9475` with modifier `HA`, `S9970` with modifier `HA`, `T1005` with modifier `HA`, `T1013` with modifier `HA`, `T2013` with modifier `HA`, `T2036` with modifier `HA`, `T2037` with modifier `HA`, `T2038` with modifier `HA`.

**Rule 074** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H2020` with modifier `HA` and Provider Specialty is `825`, `827`.

**Rule 075** - CSOCI (23A) is assigned when Procedure Code with Modifiers is `H0018` with modifier `TJ` and Procedure Modifier Only is `U1` through `U2` and Provider Specialty is `826`.

**Rule 076** - FQHC (25) is assigned when Provider Type is `43`.

**Rule 077** - MEDICAL SUPPLIES (30) is assigned when Claim Type is `09`.

**Rule 078** - DME (31) is assigned when Claim Type is `09`.

**Rule 079** - HEARING AID (32) is assigned when Claim Type is `23`.

**Rule 080** - HOME HEALTH (40) is assigned when Claim Type is `06`.

**Rule 081** - HOME HEALTH (40) is assigned when Provider Specialty is `980` and Claim Type is `18` and Special Program is NOT `09`.

**Rule 082** - HOME HEALTH (40) is assigned when Procedure Code with Modifiers is `S9122` with modifier `HA`, `S5130` with modifier `HA`.

**Rule 083** - HOME HEALTH (40) is assigned when Procedure Code with Modifiers is `T1016` with modifier `V1`.

**Rule 084** - HOME HEALTH (40) is assigned when Procedure Code with Modifiers is `T1016` with modifier `HD`, `T1016` with modifier `TD` and Procedure Modifier Only is `V1`.

**Rule 085** - HOSPICE (50) is assigned when Provider Type is `63`.

**Rule 086** - LABORATORY (60) is assigned when Claim Type is `16`.

**Rule 087** - LABORATORY (60) is assigned when Claim Type is `04`, `13`, `22` and Procedure Code is `G0054` through `G0060`, `P0000` through `P9999`, `Q0111` through `Q0116`, `W7000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001` through `U0005`, `VG0001` through `G0026`, `G0027` through `36415`, `36430` through `36440`, `36450` through `36455`, `36460` through `G2023`, `G2024`.

**Rule 088** - LABORATORY (60) is assigned when Claim Type is `04`, `13`, `22` and Procedure Code is `P0000` through `P9999`, `Q0111` through `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `VG0001` through `80102`, `80173` through `82947`, `87850` through `U0005`.

**Rule 089** - LABORATORY (60) is assigned when Procedure Code with Modifiers is `H0003` with modifier `HA`, `H0049` with modifier `HA`, `86580` with modifier `HA`.

**Rule 090** - RADIOLOGY (65) is assigned when Claim Type is `04`, `10` and Procedure Code is `R0000` through `R6999`, `W7000` through `W7999`, `70000` through `79999`.

**Rule 091** - TRANSPORTATION (70) is assigned when Claim Type is `07` and Special Program is NOT `09`.

**Rule 092** - ADULT DAY HEALTH (80) is assigned when Provider Type is `92` and Special Program is NOT `09`.

**Rule 093** - ADULT DAY HEALTH (80) is assigned when Provider Type is `92` and Procedure Code is NOT `Z1860`.

**Rule 094** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Procedure Modifier Only is NOT `UC`, `ZI`.

**Rule 095** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code is `Z1600` through `Z1617`, `VT1001` through `S9122` and Special Program is NOT `09`.

**Rule 096** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code is `Y9833` and Special Program is NOT `09`.

**Rule 097** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code with Modifiers is `S5165` with modifier `HA`, `T2028` with modifier `HA`, `T2029` with modifier `HA`, `T2039` with modifier `HA`.

**Rule 098** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code is `99199`, `S5111`, `S5120`, `S5125`, `S5165`, `S5170`, `S9122`, `T1019`, `T1999`, `T2003`, `T2015`, `T2025`, `T2028`, `T2035`, `T2039`, `T2041`, `T5999` and Procedure Modifier Only is `SE`.

**Rule 099** - PRSNL CARE - PHYS (81A) is assigned when Procedure Code is `T1019`, `T1020`.

**Rule 100** - PRSNL CARE - MH (81B) is assigned when Procedure Code is `Z1600` through `Z1605`, `Z1610` through `Z1613`, `VT1001` and Procedure Modifier Only is `UC`, `ZI` and Special Program is NOT `09`.

**Rule 101** - ADULT MH REHAB (81C) is assigned when Procedure Code is `Z7333` through `Z7338` and Special Program is NOT `09`.

**Rule 102** - ADULT MH REHAB (81C) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4`, `H0019` with modifier `U5` and Special Program is NOT `09`.

**Rule 103** - ADULT MH REHAB (81C) is assigned when Procedure Code with Modifiers is `H0019` with modifier `U1`, `H0019` with modifier `U2`, `H0019` with modifier `U3`, `H0019` with modifier `U4` and Procedure Modifier Only is `52` and Special Program is NOT `09`.

**Rule 104** - DHSS/ECO WAIVER (87) is assigned when Provider Type is `35` and Special Program is `28` through `32`, `34` through `36`, `V22` through `62`.

**Rule 105** - DHSS/ECO WAIVER (87) is assigned when Special Program is `22`, `31`, `32` and Provider Specialty is `760`, `862`, `980`, `982`.

**Rule 106** - DHSS/ECO WAIVER (87) is assigned when Special Program is `33` and Provider Specialty is `845`, `846`, `847`, `848`, `851`.

**Rule 107** - DHSS/ECO WAIVER (87) is assigned when Provider Specialty is `812`, `814` and Special Program is `32`.

**Rule 108** - TBI (88) is assigned when Special Program is `17` and Procedure Code is `Y7433` through `Y7570`, `VS5109` through `Y7733`, `S5165`.

**Rule 109** - TBI (88) is assigned when Special Program is `17` and Procedure Code with Modifiers is `S5101` with modifier `ST`, `S5102` with modifier `ST`, `S5120` with modifier `ST`, `S5199` with modifier `HI`, `S8990` with modifier `ST`, `T1028` with modifier `HI`, `97535` with modifier `ST`, `T2025` with modifier `ST`.

**Rule 110** - TBI (88) is assigned when Special Program is `17` and Procedure Code with Modifiers is `H0004` with modifier `ST`, `S5135` with modifier `ST`, `97532` with modifier `ST` and Procedure Modifier Only is `22`.

**Rule 111** - TBI (88) is assigned when Special Program is `17` and Procedure Code with Modifiers is `S9129` with modifier `HQ`, `S9131` with modifier `HQ`, `S9128` with modifier `HQ`, `T2012` with modifier `HQ` and Procedure Modifier Only is `ST`.

**Rule 112** - ABC WAIVER (89) is assigned when Provider Specialty is `831` and Special Program is NOT `09`.

**Rule 113** - DDD (90) is assigned when Provider Type is `95`.

**Rule 114** - DDD (90) is assigned when Provider Type is `44` and Provider Specialty is `871`, `872`, `873`, `874`, `875`, `876`, `877`, `878`, `879`, `881`, `882`, `883`, `884`, `885`, `886`, `887`, `888`, `889`, `971`, `972`, `973`, `974`, `975`, `976` and Special Program is `07`, `46`.

**Rule 115** - CCPED (91) is assigned when Special Program is `08`.

**Rule 116** - ACCAP (92) is assigned when Special Program is `05` and Procedure Code is `Z1710` through `Z1745`, `Z1800` through `Z1899`.

**Rule 117** - ACCAP (92) is assigned when Special Program is `05` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52`.

**Rule 118** - ACCAP (92) is assigned when Special Program is `05` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52`.

**Rule 119** - CRPD - NOT USED (93A) is assigned when Special Program is `04` and Procedure Code is `Z1700` through `Z1745`.

**Rule 120** - CRPD - NO PDN (93B) is assigned when Special Program is `06` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165`.

**Rule 121** - CRPD - NO PDN (93B) is assigned when Special Program is `06` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`.

**Rule 122** - CRPD - PDN (93C) is assigned when Special Program is `03` and Procedure Code is `Z1700` through `Z1745`, `VS5160` through `S5161`, `S5162` through `S5165`.

**Rule 123** - CRPD - PDN (93C) is assigned when Special Program is `03` and Procedure Code with Modifiers is `S5199` with modifier `HI`, `T1028` with modifier `HI`, `S9123` with modifier `52`, `S9124` with modifier `52`.

**Rule 124** - CRPD - PDN (93C) is assigned when Special Program is `03` and Procedure Code with Modifiers is `S9123` with modifier `TD`, `S9123` with modifier `TV`, `S9124` with modifier `TE`, `S9124` with modifier `TV` and Procedure Modifier Only is `52`.

**Rule 125** - GSHP (94) is assigned when GSHP is `5` through `9`, `V1` through `2`.

**Rule 126** - PREPAID HEALTH (95) is assigned when Provider Type is `37`.

**Rule 127** - HOME CARE EXP (96) is assigned when Special Program is `09`.

**Rule 128** - DEFAULT (99) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is `UN`, `UP`.

**Rule 129** - DEFAULT (99) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is NOT `AA` through `99`, `I` through `E`, `CTYPE` through `CLINC`, `FACCC` through `PROC`, `PROCM` through `PMOD`, `PSTAT` through `PSPEC`, `PTYPE` through `SPROG`, `R` through `V`.

