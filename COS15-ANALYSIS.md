# Analysis of COS 15 (NURSE PRACTITIONER) - Should be 3 Rules

## Based on COSMATRX Copybook Lines 243-273

### Raw Copybook Data
```
'15 NURSE PRACTITONER00                                   '
'                    01IPTYPEV70                          '
'                    02EPROC RP0000  P9999  Q0111  Q0116  '
'                             W8000  W8899  W8901  W8999  '
'                             80000  89999  U0001  U0005  '
'                            VG0001  80102  80173  82947  '
'                             87850  G2023  G2024         '
'                    02EPROCMV90832AJ90834AJ90837AJ90846AJ'
'                             90847AJ90791AJ90853AJ90887AJ'
'                    03EPMOD VHF     HE                   '
'                    02EPSPECV613    614                  '
'                    03EPROCMV90832HF90834HF90837HF90846HF'
'                             90847HF90791HF90853HF90832HE'
'                             90834HE90837HE90846HE90847HE'
'                             90853HE90887HF90887HE90791HE'
'                    04EPMOD VHH                          '
```

### Tree Structure Analysis

```
01I PTYPE V70                              ← Root condition: Provider Type is 70
  ├── 02E PROC R P0000 P9999 Q0111...     ← PATH 1: Exclude procedure codes
  ├── 02E PROCMV 90832AJ...                ← PATH 2: Exclude procedure+modifiers
  │   └── 03E PMOD V HF HE                ←          AND exclude modifiers HF, HE
  └── 02E PSPEC V613 614                   ← PATH 3: Exclude specialties 613, 614
      └── 03E PROCMV 90832HF...            ←          AND exclude procedure+modifiers
          └── 04E PMOD V HH                ←          AND exclude modifier HH
```

### Corrected Rules

**Rule 039A** - COS code `15` (NURSE PRACTITIONER) is assigned when Provider Type is `70` and Procedure Code is NOT `P0000` through `P9999`, NOT `Q0111`, `Q0116`, `W8000` through `W8899`, `W8901` through `W8999`, `80000` through `89999`, `U0001`, `U0005`, `VG0001`, `80102`, `80173`, `82947`, `87850`, `G2023`, `G2024`.

**Rule 039B** - COS code `15` (NURSE PRACTITIONER) is assigned when Provider Type is `70` and Procedure Code with Modifiers is NOT `90832` with modifier `AJ`, `90834` with modifier `AJ`, `90837` with modifier `AJ`, `90846` with modifier `AJ`, `90847` with modifier `AJ`, `90791` with modifier `AJ`, `90853` with modifier `AJ`, `90887` with modifier `AJ` and Procedure Modifier Only is NOT `HF`, `HE`.

**Rule 039C** - COS code `15` (NURSE PRACTITIONER) is assigned when Provider Type is `70` and Provider Specialty is NOT `613`, `614` and Procedure Code with Modifiers is NOT `90832` with modifier `HF`, `90834` with modifier `HF`, `90837` with modifier `HF`, `90846` with modifier `HF`, `90847` with modifier `HF`, `90791` with modifier `HF`, `90853` with modifier `HF`, `90832` with modifier `HE`, `90834` with modifier `HE`, `90837` with modifier `HE`, `90846` with modifier `HE`, `90847` with modifier `HE`, `90853` with modifier `HE`, `90887` with modifier `HF`, `90887` with modifier `HE`, `90791` with modifier `HE` and Procedure Modifier Only is NOT `HH`.

## Explanation

The COSMATRX matrix has a tree structure where level 01 is the root, and multiple level 02 conditions create separate BRANCHES (not AND'd together). Each branch is evaluated independently, and if ANY branch is satisfied, the COS code is assigned.

This is why Rule 039 should be 3 separate rules - there are 3 distinct level 02 branches under the same level 01 root.

## Range (R) vs Value (V) Examples

- `R P0000 P9999` = Range from P0000 through P9999
- `V Q0111 Q0116` = Individual values Q0111 and Q0116 (NOT a range)
- `R W8000 W8899` = Range from W8000 through W8899
- `R W8901 W8999` = Range from W8901 through W8999

So the first rule should say:
"Procedure Code is NOT `P0000` through `P9999`, NOT `Q0111`, `Q0116`, ..."

NOT:
"Procedure Code is NOT `P0000`, `P9999`, `Q0111`, `Q0116`, ..."
