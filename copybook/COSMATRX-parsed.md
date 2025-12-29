# COSMATRX Parsed Structure

## COS Code 06 - TARGTD CASE MGMT

Level 01: Include PSPECV819 (): 822    824
Level 02: Exclude PMOD (V): 22

## COS Code 07 - NURSING FACILITY

Level 03: Include CTYPEV13 (): 18
Level 01: Include PROC (V): 90792  90863  90887  96152
Level 02: Include PMOD (V): HA
Level 02: Include PMOD (V): 22
Level 02: Exclude PMOD (V): HF     HE
Level 01: Include PSPECV920 (): 940
Level 04: Include PMOD (V): HH
Level 03: Include CTYPEV13 (): 18
Level 02: Exclude PMOD (V): TV
Level 02: Exclude PMOD (V): 22
Level 02: Include PMOD (V): HN     HO
Level 01: Include PROC (V): T2021
Level 02: Include PMOD (V): 22     52     HN     HO
Level 03: Exclude PMOD (V): HI
Level 01: Include PROC (V): Y9996  Y9998
Level 02: Include PMOD (V): HU
Level 02: Include PMOD (R): U1     U5
Level 02: Include PMOD (V): 22
Level 02: Include CTYPEV13 (): 18
Level 02: Include PMOD (V): AJ

## COS Code 10 - PHYSICIAN

Level 01: Include PTYPEV20 (): 25
Level 02: Include CTYPEV04 (): 13
Level 03: Exclude PROC (R): G0054  G0060  P0000  P9999
Level 04: Exclude PMOD (V): 22

## COS Code 14 - CHIROPRACTOR

Level 02: Exclude PROC (R): P0000  P9999  Q0111  Q0116
Level 03: Exclude PMOD (V): HF     HE
Level 02: Exclude PSPECV613 (): 614
Level 04: Exclude PMOD (V): HH

## COS Code 16 - PSYCHOLOGIST

Level 03: Exclude PROC (R): Y7433  Y7570
Level 04: Exclude PMOD (V): 22
Level 03: Include PMOD (V): HF     HE
Level 02: Include PSPECV613 (): 614
Level 04: Include PMOD (V): HH

## COS Code 17 - PODIATRIST

Level 02: Exclude PROC (R): R0000  R6999  W7000  W7999

## COS Code 19 - MIDWIFERY

Level 02: Exclude PROC (R): P0000  P9999  Q0111  Q0116
    Level 22: Exclude PACT (): 00
Level 01: Include PROC (R): Y9930  Y9995
Level 02: Include PMOD (V): 22
Level 02: Include PMOD (V): 52
Level 02: Include PMOD (V): HW
Level 01: Include PSPECR891 (): 905
Level 01: Include PROC (V): Y9997  Y9999
Level 02: Include PMOD (V): HU
Level 02: Include PMOD (V): U1
Level 02: Include PMOD (V): 52     HA
Level 02: Include PMOD (V): 22     HA
Level 02: Include PMOD (V): 22
Level 02: Include PSPECV825 (): 827
Level 02: Include PMOD (R): U1     U2

## COS Code 30 - MEDICAL SUPPLIES

Level 02: Include PROC (R): A4000  A6499  A9150  A9300

## COS Code 40 - HOME HEALTH

Level 02: Include PMOD (V): V1

## COS Code 60 - LABORATORY

Level 01: Include CTYPEV04 (): 13     22
Level 02: Include PROC (R): G0054  G0060  P0000  P9999
Level 02: Include PROC (R): P0000  P9999  Q0111  Q0116

## COS Code 65 - RADIOLOGY

Level 01: Include CTYPEV04 (): 10
Level 02: Include PROC (R): R0000  R6999  W7000  W7999

## COS Code 80 - ADULT DAY HEALTH

Level 02: Exclude PROC (V): Z1860
Level 01: Include PROC (R): Z1600  Z1617
Level 02: Exclude PMOD (V): UC     ZI
Level 01: Include PROC (V): Y9833
Level 01: Include PROC (V): 99199  S5111  S5120  S5125
Level 02: Include PMOD (V): SE
Level 01: Include PROC (V): T1019  T1020
Level 01: Include PROC (R): Z1600  Z1605  Z1610  Z1613
Level 02: Include PMOD (V): UC     ZI
Level 01: Include PROC (R): Z7333  Z7338
Level 02: Include PMOD (V): 52

## COS Code 87 - DHSS/ECO WAIVER

Level 02: Include SPROGR28 (): 32     34     36
Level 01: Include SPROGV22 (): 31     32
Level 02: Include PSPECV760 (): 862    980    982
Level 02: Include PSPECV845 (): 846    847    848
Level 01: Include PSPECV812 (): 814

## COS Code 88 - TBI

Level 02: Include PROC (R): Y7433  Y7570
Level 03: Include PMOD (V): 22
Level 03: Include PMOD (V): ST

## COS Code 90 - DDD

Level 02: Include PSPECV871 (): 872    873    874
Level 03: Include SPROGV07 (): 46

## COS Code 92 - ACCAP

Level 02: Include PROC (R): Z1710  Z1745  Z1800  Z1899
Level 03: Include PMOD (V): 52
Level 02: Include PROC (R): Z1700  Z1745
Level 02: Include PROC (R): Z1700  Z1745
Level 02: Include PROC (R): Z1700  Z1745
Level 03: Include PMOD (V): 52

## COS Code 94 - GSHP

Level 01: Include GSHP (R): 5      9

## COS Code 99 - DEFAULT

Level 01: Include PROC (V): T1027  S9482
Level 02: Include PMOD (V): UN     UP
Level 02: Exclude PMOD (R): AA     99

