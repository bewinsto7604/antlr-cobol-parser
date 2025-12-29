# COS Business Rules Report (Corrected)

**Rule 001** - COS code `01A` (INPAT GENL HOSP) is assigned when CTYPEV01 is  and PTYPEV60 is .

**Rule 002** - COS code `01B` (INPAT OTHER HOSP) is assigned when CTYPEV01 is  and PTYPEV65 is .

**Rule 003** - COS code `01B` (INPAT OTHER HOSP) is assigned when PTYPEV59 is  and PSTATV641 is NOT .

**Rule 004** - COS code `01B` (INPAT OTHER HOSP) is assigned when PTYPEV64 is `69` and CTYPEV01 is `02` and FACCCV4 is `5`, `6`, `9`.

**Rule 005** - COS code `03C` (INPAT MH - OTHER) is assigned when PTYPEV64 is `69` and CTYPEV01 is `02` and FACCCV4 is NOT `5`, `6`, `9`.

**Rule 006** - COS code `04A` (OUTPAT / EPSDT) is assigned when CTYPEV03 is  and CLINCV27 is NOT .

**Rule 007** - COS code `04A` (OUTPAT / EPSDT) is assigned when CTYPEV03 is  and CLINCV27 is .

**Rule 008** - COS code `04C` (EPSDT) is assigned when PTYPEV60 is `65` and CTYPEV13 is .

**Rule 009** - COS code `05` (ICF-MR) is assigned when PTYPEV88 is .

**Rule 010** - COS code `06` (TARGTD CASE MGMT) is assigned when PSPECV819 is `822`, `824`.

**Rule 011** - COS code `06` (TARGTD CASE MGMT) is assigned when PSPECV813 is  and PROCMVT1017TJ is NOT .

**Rule 012** - COS code `06` (TARGTD CASE MGMT) is assigned when PROCMVH0006HAT2022HA is  and Procedure Modifier Only is NOT `22`.

**Rule 013** - COS code `07` (NURSING FACILITY) is assigned when PTYPEV80 is .

**Rule 014** - COS code `08A` (COMM HLTH CLINIC) is assigned when PSPECV950 is  and PTYPEV24 is  and CTYPEV13 is `18`.

**Rule 015** - COS code `08A` (COMM HLTH CLINIC) is assigned when Procedure Code is `90792`, `90863`, `90887`, `96152` and Procedure Modifier Only is `HA`.

**Rule 016** - COS code `08A` (COMM HLTH CLINIC) is assigned when PROCMV90832HA90837HA90846HA90847HA is  and Procedure Modifier Only is `22`.

**Rule 017** - COS code `08A` (COMM HLTH CLINIC) is assigned when PROCMV90791AJ is  and Procedure Modifier Only is NOT `HF`, `HE`.

**Rule 018** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PSPECV920 is `940` and PTYPEV24 is  and CTYPEV18 is  and Procedure Modifier Only is `HH`.

**Rule 019** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PSPECV940 is  and PTYPEV24 is  and CTYPEV13 is `18`.

**Rule 020** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMV90791HAH0010HAS9125HAH2015HM is .

**Rule 021** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMVH0045HA is  and Procedure Modifier Only is NOT `TV`.

**Rule 022** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMV90832HA is  and Procedure Modifier Only is NOT `22`.

**Rule 023** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMVH2015HAH2016HA is  and Procedure Modifier Only is `HN`, `HO`.

**Rule 024** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code is `T2021` and Procedure Modifier Only is `22`, `52`, `HN`, `HO` and Procedure Modifier Only is NOT `HI`.

**Rule 025** - COS code `08B` (MNTL HLTH CLINIC) is assigned when Procedure Code is `Y9996`, `Y9998` and PSPECV825 is .

**Rule 026** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMVH2020HET2038HE is  and Procedure Modifier Only is `HU` and PSPECV825 is .

**Rule 027** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMVT2016HAT2033HA is  and Procedure Modifier Only is `U1` through `U5`.

**Rule 028** - COS code `08B` (MNTL HLTH CLINIC) is assigned when PROCMVT1028HA is  and Procedure Modifier Only is `22`.

**Rule 029** - COS code `08C` (OTHER CLINIC) is assigned when PTYPEV24 is  and CTYPEV13 is `18` and PSPECV910 is NOT  and PROCMV90791AJ is NOT  and PROCMV86580HA90791HA90792HA90832HA is NOT .

**Rule 030** - COS code `08C` (OTHER CLINIC) is assigned when PROCMV90853HAT1006HA is .

**Rule 031** - COS code `08C` (OTHER CLINIC) is assigned when PROCMVH0005HA is  and Procedure Modifier Only is `AJ`.

**Rule 032** - COS code `08D` (PDN - EPSDT) is assigned when PTYPEV44 is  and CTYPEV18 is  and PROCMVS9123EPS9124EPZ1710EPZ1710WT is .

**Rule 033** - COS code `08D` (PDN - EPSDT) is assigned when CTYPEV08 is .

**Rule 034** - COS code `10` (PHYSICIAN) is assigned when PTYPEV20 is `25` and CTYPEV04 is `13` and Procedure Code is NOT `G0054` through `G0060`, `P0000` through `P9999` and PROCMVS5101STS5102STS5120STS8990ST is NOT  and PROCMVH0004STS5135ST97532ST is NOT  and Procedure Modifier Only is NOT `22`.

**Rule 035** - COS code `11` (DENTAL) is assigned when CTYPEV11 is  and PTYPEV43 is NOT .

**Rule 036** - COS code `11` (DENTAL) is assigned when PSPECV910 is .

**Rule 037** - COS code `13` (OPTOMETRY) is assigned when CTYPEV21 is .

**Rule 038** - COS code `14` (CHIROPRACTOR) is assigned when CTYPEV05 is .

**Rule 039** - COS code `14` (CHIROPRACTOR) is assigned when PTYPEV70 is  and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116` and PROCMV90832AJ90834AJ90837AJ90846AJ is NOT  and Procedure Modifier Only is NOT `HF`, `HE` and PSPECV613 is NOT `614` and PROCMV90832HF90834HF90837HF90846HF is NOT  and Procedure Modifier Only is NOT `HH`.

**Rule 040** - COS code `16` (PSYCHOLOGIST) is assigned when CTYPEV19 is  and SPROGV17 is NOT  and Procedure Code is NOT `Y7433` through `Y7570` and PROCMVS5101STS5102STS5120STS8990ST is NOT  and PROCMVH0004STS5135ST97532ST is NOT  and Procedure Modifier Only is NOT `22`.

**Rule 041** - COS code `16` (PSYCHOLOGIST) is assigned when PSPECV611 is  and PROCMV90832AJ90834AJ90837AJ90846AJ is  and Procedure Modifier Only is `HF`, `HE`.

**Rule 042** - COS code `16` (PSYCHOLOGIST) is assigned when PTYPEV70 is  and PSPECV613 is `614` and PROCMV90832HF90834HF90837HF90846HF is  and Procedure Modifier Only is `HH`.

**Rule 043** - COS code `17` (PODIATRIST) is assigned when CTYPEV10 is  and Procedure Code is NOT `R0000` through `R6999`, `W7000` through `W7999`.

**Rule 044** - COS code `17` (PODIATRIST) is assigned when CTYPEV17 is .

**Rule 045** - COS code `19` (MIDWIFERY) is assigned when PTYPEV90 is  and Procedure Code is NOT `P0000` through `P9999`, `Q0111` through `Q0116`.

**Rule 046** - COS code `20A` (DRUGS-LTC) is assigned when PTYPEV26 is .

**Rule 047** - COS code `22A` (DAY TRAINING) is assigned when PSPECV725 is .

**Rule 048** - COS code `22B` (EARLY INTERVENTN) is assigned when PSPECV730 is .

**Rule 049** - COS code `22B` (EARLY INTERVENTN) is assigned when PSPECV740 is .

**Rule 050** - COS code `22E` (PACT) is assigned when PSPECV908 is .

**Rule 051** - COS code `23A` (CSOCI) is assigned when PTYPEV59 is  and PSTATV641 is .

**Rule 052** - COS code `23A` (CSOCI) is assigned when Procedure Code is `Y9930` through `Y9995`.

**Rule 053** - COS code `23A` (CSOCI) is assigned when PROCMVH0017HUH0017HWH0018HUH0019HU is .

**Rule 054** - COS code `23A` (CSOCI) is assigned when PROCMVH0043HU is  and Procedure Modifier Only is `22`.

**Rule 055** - COS code `23A` (CSOCI) is assigned when PROCMVH0019HUH2020HW is  and Procedure Modifier Only is `52`.

**Rule 056** - COS code `23A` (CSOCI) is assigned when PROCMVH2020HAH2020HET2038HAT2038HE is  and Procedure Modifier Only is `HW`.

**Rule 057** - COS code `23A` (CSOCI) is assigned when PSPECR891 is `905`.

**Rule 058** - COS code `23A` (CSOCI) is assigned when Procedure Code is `Y9997`, `Y9999` and PSPECV825 is .

**Rule 059** - COS code `23A` (CSOCI) is assigned when PROCMVH2020HAT2038HA is  and Procedure Modifier Only is `HU` and PSPECV825 is .

**Rule 060** - COS code `23A` (CSOCI) is assigned when PROCMVH0045TV is .

**Rule 061** - COS code `23A` (CSOCI) is assigned when PROCMVH0043HA is  and Procedure Modifier Only is `U1`.

**Rule 062** - COS code `23A` (CSOCI) is assigned when PROCMVH0019HA is  and Procedure Modifier Only is `52`, `HA`.

**Rule 063** - COS code `23A` (CSOCI) is assigned when PROCMVH2036HA is  and Procedure Modifier Only is `22`, `HA`.

**Rule 064** - COS code `23A` (CSOCI) is assigned when PROCMVH0006HA is  and Procedure Modifier Only is `22`.

**Rule 065** - COS code `23A` (CSOCI) is assigned when PROCMVA0090HAH0001HAH0031HAH0038HA is .

**Rule 066** - COS code `23A` (CSOCI) is assigned when PROCMVH2020HA is  and PSPECV825 is `827`.

**Rule 067** - COS code `23A` (CSOCI) is assigned when PROCMVH0018TJ is  and Procedure Modifier Only is `U1` through `U2` and PSPECV826 is .

**Rule 068** - COS code `25` (FQHC) is assigned when PTYPEV43 is .

**Rule 069** - COS code `30` (MEDICAL SUPPLIES) is assigned when CTYPEV09 is  and Procedure Code is `A4000` through `A6499`, `A9150` through `A9300`.

**Rule 070** - COS code `31` (DME) is assigned when CTYPEV09 is .

**Rule 071** - COS code `32` (HEARING AID) is assigned when CTYPEV23 is .

**Rule 072** - COS code `40` (HOME HEALTH) is assigned when CTYPEV06 is .

**Rule 073** - COS code `40` (HOME HEALTH) is assigned when PSPECV980 is  and CTYPEV18 is  and SPROGV09 is NOT .

**Rule 074** - COS code `40` (HOME HEALTH) is assigned when PROCMVS9122HAS5130HA is .

**Rule 075** - COS code `40` (HOME HEALTH) is assigned when PROCMVT1016V1 is .

**Rule 076** - COS code `40` (HOME HEALTH) is assigned when PROCMVT1016HDT1016TD is  and Procedure Modifier Only is `V1`.

**Rule 077** - COS code `50` (HOSPICE) is assigned when PTYPEV63 is .

**Rule 078** - COS code `60` (LABORATORY) is assigned when CTYPEV16 is .

**Rule 079** - COS code `60` (LABORATORY) is assigned when CTYPEV04 is `13`, `22` and Procedure Code is `G0054` through `G0060`, `P0000` through `P9999` and Procedure Code is `P0000` through `P9999`, `Q0111` through `Q0116`.

**Rule 080** - COS code `60` (LABORATORY) is assigned when PROCMVH0003HAH0049HA86580HA is .

**Rule 081** - COS code `65` (RADIOLOGY) is assigned when CTYPEV04 is `10` and Procedure Code is `R0000` through `R6999`, `W7000` through `W7999`.

**Rule 082** - COS code `70` (TRANSPORTATION) is assigned when CTYPEV07 is  and SPROGV09 is NOT .

**Rule 083** - COS code `80` (ADULT DAY HEALTH) is assigned when PTYPEV92 is  and SPROGV09 is NOT  and Procedure Code is NOT `Z1860`.

**Rule 084** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Z1600` through `Z1617` and Procedure Modifier Only is NOT `UC`, `ZI` and SPROGV09 is NOT .

**Rule 085** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `Y9833` and SPROGV09 is NOT .

**Rule 086** - COS code `80` (ADULT DAY HEALTH) is assigned when PROCMVS5165HAT2028HAT2029HAT2039HA is .

**Rule 087** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `99199`, `S5111`, `S5120`, `S5125` and Procedure Modifier Only is `SE`.

**Rule 088** - COS code `80` (ADULT DAY HEALTH) is assigned when Procedure Code is `T1019`, `T1020`.

**Rule 089** - COS code `81B` (PRSNL CARE - MH) is assigned when Procedure Code is `Z1600` through `Z1605`, `Z1610` through `Z1613` and Procedure Modifier Only is `UC`, `ZI` and SPROGV09 is NOT .

**Rule 090** - COS code `81C` (ADULT MH REHAB) is assigned when Procedure Code is `Z7333` through `Z7338` and SPROGV09 is NOT .

**Rule 091** - COS code `81C` (ADULT MH REHAB) is assigned when PROCMVH0019U1H0019U2H0019U3H0019U4 is  and SPROGV09 is NOT .

**Rule 092** - COS code `81C` (ADULT MH REHAB) is assigned when PROCMVH0019U1H0019U2H0019U3H0019U4 is  and Procedure Modifier Only is `52` and SPROGV09 is NOT .

**Rule 093** - COS code `87` (DHSS/ECO WAIVER) is assigned when PTYPEV35 is  and SPROGR28 is `32`, `34`, `36`.

**Rule 094** - COS code `87` (DHSS/ECO WAIVER) is assigned when SPROGV22 is `31`, `32` and PSPECV760 is `862`, `980`, `982`.

**Rule 095** - COS code `87` (DHSS/ECO WAIVER) is assigned when SPROGV33 is  and PSPECV845 is `846`, `847`, `848`.

**Rule 096** - COS code `87` (DHSS/ECO WAIVER) is assigned when PSPECV812 is `814` and SPROGV32 is .

**Rule 097** - COS code `88` (TBI) is assigned when SPROGV17 is  and Procedure Code is `Y7433` through `Y7570` and PROCMVS5101STS5102STS5120STS5199HI is  and PROCMVH0004STS5135ST97532ST is  and Procedure Modifier Only is `22` and PROCMVS9129HQS9131HQS9128HQT2012HQ is  and Procedure Modifier Only is `ST`.

**Rule 098** - COS code `89` (ABC WAIVER) is assigned when PSPECV831 is  and SPROGV09 is NOT .

**Rule 099** - COS code `90` (DDD) is assigned when PTYPEV95 is .

**Rule 100** - COS code `90` (DDD) is assigned when PTYPEV44 is  and PSPECV871 is `872`, `873`, `874` and SPROGV07 is `46`.

**Rule 101** - COS code `91` (CCPED) is assigned when SPROGV08 is .

**Rule 102** - COS code `92` (ACCAP) is assigned when SPROGV05 is  and Procedure Code is `Z1710` through `Z1745`, `Z1800` through `Z1899` and PROCMVS5199HIT1028HIS912352S912452 is  and PROCMVS9123TDS9123TVS9124TES9124TV is  and Procedure Modifier Only is `52`.

**Rule 103** - COS code `93A` (CRPD - NOT USED) is assigned when SPROGV04 is  and Procedure Code is `Z1700` through `Z1745`.

**Rule 104** - COS code `93B` (CRPD - NO PDN) is assigned when SPROGV06 is  and Procedure Code is `Z1700` through `Z1745` and PROCMVS5199HIT1028HI is .

**Rule 105** - COS code `93C` (CRPD - PDN) is assigned when SPROGV03 is  and Procedure Code is `Z1700` through `Z1745` and PROCMVS5199HIT1028HIS912352S912452 is  and PROCMVS9123TDS9123TVS9124TES9124TV is  and Procedure Modifier Only is `52`.

**Rule 106** - COS code `94` (GSHP) is assigned when GSHP is `5` through `9`.

**Rule 107** - COS code `95` (PREPAID HEALTH) is assigned when PTYPEV37 is .

**Rule 108** - COS code `96` (HOME CARE EXP) is assigned when SPROGV09 is .

**Rule 109** - COS code `99` (DEFAULT) is assigned when Procedure Code is `T1027`, `S9482` and Procedure Modifier Only is `UN`, `UP` and Procedure Modifier Only is NOT `AA` through `99`.

