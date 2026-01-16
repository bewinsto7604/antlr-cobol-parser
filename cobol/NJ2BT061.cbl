       IDENTIFICATION DIVISION.                                         00010000
                                                                        00020010
       PROGRAM-ID.     NJ2BT061.                                        00030001
                                                                        00040010
       DATE-WRITTEN.   06/03.                                           00050086
                                                                        00060010
       DATE-COMPILED.                                                   00050000
                                                                        00080010
           EJECT                                                        00380001
           EJECT                                                        00460003
       ENVIRONMENT DIVISION.                                            00110000
                                                                        00480010
       DATA DIVISION.                                                   00490000
                                                                        00500010
       WORKING-STORAGE SECTION.                                         00510000
                                                                        00520010
       01  FILLER                                  PIC X(48)            00530000
           VALUE '<<<<< NJ2TE061 WORKING STORAGE STARTS HERE >>>>>'.    00590001
                                                                        00550010
           COPY WHENCMP2.                                               00560087
           EJECT                                                        00570087
           COPY ABENDWS.                                                00580087
           EJECT                                                        00590087
                                                                        00600088
       01  W-VALUE                                 PIC X(08).           00630088
                                                                        00640088
       01  INCLUSION-INDICATOR                     PIC X(01).           00650088
           88  INCLUDED                    VALUE 'Y'.                   00660088
           88  NOT-INCLUDED                VALUE 'N'.                   00670088
                                                                        00680088
       01  EXCLUSION-INDICATOR                     PIC X(01).           00690088
           88  EXCLUDED                    VALUE 'Y'.                   00700088
           88  NOT-EXCLUDED                VALUE 'N'.                   00710088
                                                                        00720088
       01  COMPLETION-INDICATOR                    PIC X(01).           00730088
           88  COMPLETED                   VALUE 'Y'.                   00740088
                                                                        00750088
       01  COS-MATRIX.                                                  00180014
           05  FILLER                              PIC X(57) VALUE      00190054
           '01AINPAT GENL HOSP  00                                   '. 00200054
           05  FILLER                              PIC X(57) VALUE      00210054
           '                    01ICTYPEV01                          '. 00220054
           05  FILLER                              PIC X(57) VALUE      00230054
           '                    02IPTYPEV60                          '. 00240054
           05  FILLER                              PIC X(57) VALUE      00250054
           '01BINPAT OTHER HOSP 00                                   '. 00260056
           05  FILLER                              PIC X(57) VALUE      00270054
           '                    01ICTYPEV01                          '. 00280054
           05  FILLER                              PIC X(57) VALUE      00290054
           '                    02IPTYPEV65                          '. 00300075
           05  FILLER                              PIC X(57) VALUE      00310053
           '02 RES TREATMNT CNTR00                                   '. 00320056
           05  FILLER                              PIC X(57) VALUE      00330053
           '                    01IPTYPEV59                          '. 00340053
           05  FILLER                              PIC X(57) VALUE      00350053
           '                    02EPSTATV641                         '. 00360053
           05  FILLER                              PIC X(57) VALUE      00370054
           '03AINPAT MH - GVNMNT00                                   '. 00380054
           05  FILLER                              PIC X(57) VALUE      00390054
           '                    01IPTYPEV64     69                   '. 00400054
           05  FILLER                              PIC X(57) VALUE      00410059
           '                    02ICTYPEV01     02                   '. 00420059
           05  FILLER                              PIC X(57) VALUE      00430054
           '                    03IFACCCV4      5      6      9      '. 00440059
           05  FILLER                              PIC X(57) VALUE      00450054
           '03CINPAT MH - OTHER 00                                   '. 00460054
           05  FILLER                              PIC X(57) VALUE      00470054
           '                    01IPTYPEV64     69                   '. 00480054
           05  FILLER                              PIC X(57) VALUE      00490059
           '                    02ICTYPEV01     02                   '. 00500059
           05  FILLER                              PIC X(57) VALUE      00510054
           '                    03EFACCCV4      5      6      9      '. 00520059
           05  FILLER                              PIC X(57) VALUE      00530053
           '04AOUTPAT / EPSDT   00                                   '. 00540054
           05  FILLER                              PIC X(57) VALUE      00550054
           '                    01ICTYPEV03                          '. 00560059
           05  FILLER                              PIC X(57) VALUE      00570054
           '                    02ECLINCV27                          '. 00580059
           05  FILLER                              PIC X(57) VALUE      00590054
           '04BOUTPAT - CLINC 2700                                   '. 00600054
           05  FILLER                              PIC X(57) VALUE      00610054
           '                    01ICTYPEV03                          '. 00620059
           05  FILLER                              PIC X(57) VALUE      00630054
           '                    02ICLINCV27                          '. 00640059
           05  FILLER                              PIC X(57) VALUE      00650055
           '04CEPSDT            00                                   '. 00660055
           05  FILLER                              PIC X(57) VALUE      00670055
           '                    01IPTYPEV60     65                   '. 00680055
           05  FILLER                              PIC X(57) VALUE      00690055
           '                    02ICTYPEV13                          '. 00700055
           05  FILLER                              PIC X(57) VALUE      00710054
           '05 ICF-MR           00                                   '. 00720053
           05  FILLER                              PIC X(57) VALUE      00730053
           '                    01IPTYPEV88                          '. 00740053
           05  FILLER                              PIC X(57) VALUE      00750045
           '06 TARGTD CASE MGMT 00                                   '. 00760047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPSPECV819    822    824           '. 00780047
           05  FILLER                              PIC X(57) VALUE      00790053
           '                    01IPSPECV813                         '. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    02EPROCMVT1017TJ                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      00790053
           '                    01IPROCMVH0006HAT2022HA              '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02EPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00790053
           '07 NURSING FACILITY 00                                   '. 00800056
           05  FILLER                              PIC X(57) VALUE      00810053
           '                    01IPTYPEV80                          '. 00820053
           05  FILLER                              PIC X(57) VALUE      00830057
           '08ACOMM HLTH CLINIC 00                                   '. 00840057
           05  FILLER                              PIC X(57) VALUE      00850060
           '                    01IPSPECV950                         '. 00860060
           05  FILLER                              PIC X(57) VALUE      00870057
           '                    02IPTYPEV24                          '. 00880060
           05  FILLER                              PIC X(57) VALUE      00890060
           '                    03ICTYPEV13     18                   '. 00900060
           05  FILLER                              PIC X(57) VALUE      00910057
           '                    01IPROC V90792  90863  90887  96152  '. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             96158  96159  H0007  H0015  '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                             H0018                       '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VHA                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMV90832HA90837HA90846HA90847HA'. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMV90791AJ                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02EPMOD VHF     HE                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      00910057
           '08BMNTL HLTH CLINIC 00                                   '. 00920057
           05  FILLER                              PIC X(57) VALUE      00930060
           '                    01IPSPECV920    940                  '. 00940060
           05  FILLER                              PIC X(57) VALUE      00950060
           '                    02IPTYPEV24                          '. 00960060
           05  FILLER                              PIC X(57) VALUE      00970060
           '                    03ICTYPEV18                          '. 00980060
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    04IPMOD VHH                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00930060
           '                    01IPSPECV940                         '. 00940060
           05  FILLER                              PIC X(57) VALUE      00950060
           '                    02IPTYPEV24                          '. 00960060
           05  FILLER                              PIC X(57) VALUE      00970060
           '                    03ICTYPEV13     18                   '. 00980060
           05  FILLER                              PIC X(57) VALUE      00990057
           '                    01IPROCMV90791HAH0010HAS9125HAH2015HM'. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH0045HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02EPMOD VTV                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00990057
           '                    01IPROCMV90832HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02EPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH2015HAH2016HA              '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VHN     HO                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROC VT2021                       '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22     52     HN     HO     '. 01540000
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    03EPMOD VHI                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROC VY9996  Y9998                '. 00780047
           05  FILLER                              PIC X(57) VALUE      00930060
           '                    02IPSPECV825                         '. 00940060
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH2020HET2038HE            '.   00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VHU                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    03IPSPECV825                         '. 02160051
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVT2016HAT2033HA              '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD RU1     U5                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      00990057
           '                    01IPROCMVT1028HA                     '. 01540000
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00990057
           '08COTHER CLINIC     00                                   '. 01000057
           05  FILLER                              PIC X(57) VALUE      01010060
           '                    01IPTYPEV24                          '. 01020060
           05  FILLER                              PIC X(57) VALUE      01030057
           '                    02ICTYPEV13     18                   '. 01040060
           05  FILLER                              PIC X(57) VALUE      01050063
           '                    03EPSPECV910                         '. 01060063
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    03EPROCMV90791AJ                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    03EPROCMV86580HA90791HA90792HA90832HA'. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             90837HA90846HA90847HA90863HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             90887HAH0001HAH0003HAH0006HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             H0007HAH0018HAH0049HAS9475HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMV90853HAT1006HA              '. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH0005HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VAJ                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      01070057
           '08DPDN - EPSDT      00                                   '. 01080057
           05  FILLER                              PIC X(57) VALUE      01090060
           '                    01IPTYPEV44                          '. 01100060
           05  FILLER                              PIC X(57) VALUE      01110057
           '                    02ICTYPEV18                          '. 01120060
           05  FILLER                              PIC X(57) VALUE      01130060
           '                    03IPROCMVS9123EPS9124EPZ1710EPZ1710WT'. 01160000
           05  FILLER                              PIC X(57) VALUE      01150060
           '                             Z1715WTZ1720WTZ1725WTZ1730WT'. 01180000
           05  FILLER                              PIC X(57) VALUE      01170053
           '                             Z1735EPZ1735WTZ1740WTZ1745WT'. 01200000
           05  FILLER                              PIC X(57) VALUE      01210000
           '09 OPTICAL APPLIANCE00                                   '. 01180053
           05  FILLER                              PIC X(57) VALUE      01190053
           '                    01ICTYPEV08                          '. 01200072
           05  FILLER                              PIC X(57) VALUE      01210055
           '10 PHYSICIAN        00                                   '. 01220055
           05  FILLER                              PIC X(57) VALUE      01230055
           '                    01IPTYPEV20     25                   '. 01240055
           05  FILLER                              PIC X(57) VALUE      01250062
           '                    02ICTYPEV04     13                   '. 01260062
           05  FILLER                              PIC X(57) VALUE      01310000
           '                    03EPROC RG0054  G0060  P0000  P9999  '. 01320002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             Q0111  Q0116  R0000  R6999  '. 01340002
           05  FILLER                              PIC X(57) VALUE      01350000
           '                             W7000  W8899  W8901  W8999  '. 01360002
           05  FILLER                              PIC X(57) VALUE      01370000
           '                             Y7433  Y7570  70000  79999  '. 01380002
           05  FILLER                              PIC X(57) VALUE      01390002
           '                             80000  89999  U0001  U0005  '. 01400002
           05  FILLER                              PIC X(57) VALUE      01390002
           '                            VG0001  G0026  G0027  36415  '. 01420002
           05  FILLER                              PIC X(57) VALUE      01430000
           '                             36430  36440  36450  36455  '. 01440002
           05  FILLER                              PIC X(57) VALUE      01450002
           '                             36460  S9122  T1001  G2023  '. 01460002
           05  FILLER                              PIC X(57) VALUE      01450002
           '                             G2024                       '. 01460002
           05  FILLER                              PIC X(57) VALUE      01270055
           '                    03EPROCMVS5101STS5102STS5120STS8990ST'. 01480000
           05  FILLER                              PIC X(57) VALUE      01290062
           '                             97535ST                     '. 01500000
           05  FILLER                              PIC X(57) VALUE      01310055
           '                    03EPROCMVH0004STS5135ST97532ST       '. 01520000
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    04EPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      01350053
           '11 DENTAL           00                                   '. 01360053
           05  FILLER                              PIC X(57) VALUE      01370053
           '                    01ICTYPEV11                          '. 01380053
           05  FILLER                              PIC X(57) VALUE      01390063
           '                    02EPTYPEV43                          '. 01400063
           05  FILLER                              PIC X(57) VALUE      01410051
           '12 FREE-STANDING ASC00                                   '. 01420051
           05  FILLER                              PIC X(57) VALUE      01430051
           '                    01IPSPECV910                         '. 01440056
           05  FILLER                              PIC X(57) VALUE      01450053
           '13 OPTOMETRY        00                                   '. 01460053
           05  FILLER                              PIC X(57) VALUE      01470053
           '                    01ICTYPEV21                          '. 01480072
           05  FILLER                              PIC X(57) VALUE      01490053
           '14 CHIROPRACTOR     00                                   '. 01500053
           05  FILLER                              PIC X(57) VALUE      01510053
           '                    01ICTYPEV05                          '. 01520053
           05  FILLER                              PIC X(57) VALUE      01530052
           '15 NURSE PRACTITONER00                                   '. 01540056
           05  FILLER                              PIC X(57) VALUE      01550052
           '                    01IPTYPEV70                          '. 01560052
           05  FILLER                              PIC X(57) VALUE      01570063
           '                    02EPROC RP0000  P9999  Q0111  Q0116  '. 01580063
           05  FILLER                              PIC X(57) VALUE      01590063
           '                             W8000  W8899  W8901  W8999  '. 01800000
           05  FILLER                              PIC X(57) VALUE      01810000
           '                             80000  89999  U0001  U0005  '. 01820000
           05  FILLER                              PIC X(57) VALUE      01810000
           '                            VG0001  80102  80173  82947  '. 01840000
           05  FILLER                              PIC X(57) VALUE      01850000
           '                             87850  G2023  G2024         '. 01860000
           05  FILLER                              PIC X(57) VALUE      01310000
           '                    02EPROCMV90832AJ90834AJ90837AJ90846AJ'. 01320002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             90847AJ90791AJ90853AJ90887AJ'. 01340002
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    03EPMOD VHF     HE                   '. 03500000
           05  FILLER                              PIC X(57) VALUE      02010000
           '                    02EPSPECV613    614                  '. 02020000
           05  FILLER                              PIC X(57) VALUE      01310000
           '                    03EPROCMV90832HF90834HF90837HF90846HF'. 01320002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             90847HF90791HF90853HF90832HE'. 01340002
           05  FILLER                              PIC X(57) VALUE      01310000
           '                             90834HE90837HE90846HE90847HE'. 01320002
           05  FILLER                              PIC X(57) VALUE      01310000
           '                             90853HE90887HF90887HE90791HE'. 01320002
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    04EPMOD VHH                          '. 03500000
           05  FILLER                              PIC X(57) VALUE      01610053
           '16 PSYCHOLOGIST     00                                   '. 01620053
           05  FILLER                              PIC X(57) VALUE      01630053
           '                    01ICTYPEV19                          '. 01640053
           05  FILLER                              PIC X(57) VALUE      01650064
           '                    02ESPROGV17                          '. 01660064
           05  FILLER                              PIC X(57) VALUE      01670064
           '                    03EPROC RY7433  Y7570                '. 01680064
           05  FILLER                              PIC X(57) VALUE      01670064
           '                            VS9122  T1001                '. 01680064
           05  FILLER                              PIC X(57) VALUE      01690052
           '                    03EPROCMVS5101STS5102STS5120STS8990ST'. 01960000
           05  FILLER                              PIC X(57) VALUE      01970000
           '                             97535ST                     '. 01980000
           05  FILLER                              PIC X(57) VALUE      01990000
           '                    03EPROCMVH0004STS5135ST97532ST       '. 02000000
           05  FILLER                              PIC X(57) VALUE      02010000
           '                    04EPMOD V22                          '. 02020000
           05  FILLER                              PIC X(57) VALUE      02010000
           '                    01IPSPECV611                         '. 02020000
           05  FILLER                              PIC X(57) VALUE      01310000
           '                    02IPROCMV90832AJ90834AJ90837AJ90846AJ'. 01320002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             90847AJ90791AJ90853AJ90887AJ'. 01340002
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    03IPMOD VHF     HE                   '. 03500000
           05  FILLER                              PIC X(57) VALUE      02010000
           '                    01IPTYPEV70                       '.    02020000
           05  FILLER                              PIC X(57) VALUE      02010000
           '                    02IPSPECV613    614                  '. 02020000
           05  FILLER                              PIC X(57) VALUE      01310000
           '                    03IPROCMV90832HF90834HF90837HF90846HF'. 01320002
           05  FILLER                              PIC X(57) VALUE      01310000
           '                             90832HE90834HE90837HE90846HE'. 01320002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             90847HF90791HF90853HF90847HE'. 01340002
           05  FILLER                              PIC X(57) VALUE      01330000
           '                             90853HE90791HE90887HF90887HE'. 01340002
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    04IPMOD VHH                          '. 03500000
           05  FILLER                              PIC X(57) VALUE      02030000
           '17 PODIATRIST       00                                   '. 01700053
           05  FILLER                              PIC X(57) VALUE      01710053
           '                    01ICTYPEV10                          '. 01720053
           05  FILLER                              PIC X(57) VALUE      01730053
           '                    02EPROC RR0000  R6999  W7000  W7999  '. 01740053
           05  FILLER                              PIC X(57) VALUE      01750053
           '                             70000  79999                '. 01760053
           05  FILLER                              PIC X(57) VALUE      01770053
           '18 PROSTHETC/ORTHOTC00                                   '. 01780056
           05  FILLER                              PIC X(57) VALUE      01790053
           '                    01ICTYPEV17                          '. 01800053
           05  FILLER                              PIC X(57) VALUE      01810053
           '19 MIDWIFERY        00                                   '. 01820053
           05  FILLER                              PIC X(57) VALUE      01830053
           '                    01IPTYPEV90                          '. 01840053
           05  FILLER                              PIC X(57) VALUE      01850064
           '                    02EPROC RP0000  P9999  Q0111  Q0116  '. 01860064
           05  FILLER                              PIC X(57) VALUE      01870064
           '                             W8000  W8899  W8901  W8999  '. 02220000
           05  FILLER                              PIC X(57) VALUE      02230000
           '                             80000  89999  U0001  U0005  '. 02240000
           05  FILLER                              PIC X(57) VALUE      02250000
           '                            VG0001  80102  80173  82947  '. 02260000
           05  FILLER                              PIC X(57) VALUE      02270000
           '                             87850  G2023  G2024         '. 02280000
           05  FILLER                              PIC X(57) VALUE      01890053
           '20ADRUGS-LTC        00                                   '. 01900048
           05  FILLER                              PIC X(57) VALUE      01910048
           '                    01IPTYPEV26                          '. 01920048
           05  FILLER                              PIC X(57) VALUE      01930049
           '22ADAY TRAINING     00                                   '. 01940050
           05  FILLER                              PIC X(57) VALUE      01950050
           '                    01IPSPECV725                         '. 01960050
           05  FILLER                              PIC X(57) VALUE      01970049
           '22BEARLY INTERVENTN 00                                   '. 01980050
           05  FILLER                              PIC X(57) VALUE      01990050
           '                    01IPSPECV730                         '. 02000050
           05  FILLER                              PIC X(57) VALUE      02010049
           '22CSPECIAL EDUCATION00                                   '. 02020050
           05  FILLER                              PIC X(57) VALUE      02030050
           '                    01IPSPECV740                         '. 02040050
           05  FILLER                              PIC X(57) VALUE      02050049
           '22EPACT             00                                   '. 02060050
           05  FILLER                              PIC X(57) VALUE      02070050
           '                    01IPSPECV908                         '. 02080050
           05  FILLER                              PIC X(57) VALUE      02090048
           '23ACSOCI            00                                   '. 02100048
           05  FILLER                              PIC X(57) VALUE      02110048
           '                    01IPTYPEV59                          '. 02120051
           05  FILLER                              PIC X(57) VALUE      02130048
           '                    02IPSTATV641                         '. 02140051
           05  FILLER                              PIC X(57) VALUE      02150048
           '                    01IPROC RY9930  Y9995                '. 02160051
           05  FILLER                              PIC X(57) VALUE      02170048
           '                            VZ5008                       '. 02180048
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH0017HUH0017HWH0018HUH0019HU'. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                             H0019HWH0037HWH0043HUH0043HW'. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                             H2013HUH2020HUT2023TJT2038HU'. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                             T2038HW                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH0043HU                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH0019HUH2020HW              '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V52                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH2020HAH2020HET2038HAT2038HE'. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VHW                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPSPECR891    905                  '. 02160051
           05  FILLER                              PIC X(57) VALUE      02170048
           '                            V813    907                  '. 02180048
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROC VY9997  Y9999                '. 02160051
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    02IPSPECV825                         '. 02160051
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH2020HAT2038HA              '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VHU                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    03IPSPECV825                         '. 02160051
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH0045TV                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    01IPROCMVH0043HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD VU1                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH0019HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V52     HA                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH2036HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22     HA                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH0006HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD V22                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVA0090HAH0001HAH0031HAH0038HA'. 00780047
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             S0215HAS5105HAS5110HAS5150HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             S9475HAS9970HAT1005HAT1013HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                             T2013HAT2036HAT2037HAT2038HA'.
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH2020HA                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    02IPSPECV825    827                  '. 02160051
           05  FILLER                              PIC X(57) VALUE      00770047
           '                    01IPROCMVH0018TJ                     '. 00780047
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    02IPMOD RU1     U2                   '. 01540000
           05  FILLER                              PIC X(57) VALUE      02190051
           '                    03IPSPECV826                         '. 02160051
           05  FILLER                              PIC X(57) VALUE      02190051
           '25 FQHC             00                                   '. 02200051
           05  FILLER                              PIC X(57) VALUE      02210051
           '                    01IPTYPEV43                          '. 02220051
           05  FILLER                              PIC X(57) VALUE      02230053
           '30 MEDICAL SUPPLIES 00                                   '. 02240053
           05  FILLER                              PIC X(57) VALUE      02250053
           '                    01ICTYPEV09                          '. 02260053
           05  FILLER                              PIC X(57) VALUE      02270053
           '                    02IPROC RA4000  A6499  A9150  A9300  '. 02280053
           05  FILLER                              PIC X(57) VALUE      02290053
           '                             B4000  B9999  X6000  X8199  '. 02300053
           05  FILLER                              PIC X(57) VALUE      02310053
           '                             X8201  X8999                '. 02320053
           05  FILLER                              PIC X(57) VALUE      02330053
           '31 DME              00                                   '. 02340053
           05  FILLER                              PIC X(57) VALUE      02350053
           '                    01ICTYPEV09                          '. 02360053
           05  FILLER                              PIC X(57) VALUE      02370052
           '32 HEARING AID      00                                   '. 02380053
           05  FILLER                              PIC X(57) VALUE      02390053
           '                    01ICTYPEV23                          '. 02400053
           05  FILLER                              PIC X(57) VALUE      02410049
           '40 HOME HEALTH      00                                   '. 02420049
           05  FILLER                              PIC X(57) VALUE      02430049
           '                    01ICTYPEV06                          '. 02440049
           05  FILLER                              PIC X(57) VALUE      02450065
           '                    01IPSPECV980                         '. 02460065
           05  FILLER                              PIC X(57) VALUE      02470049
           '                    02ICTYPEV18                          '. 02480065
           05  FILLER                              PIC X(57) VALUE      02490067
           '                    03ESPROGV09                          '. 02500067
           05  FILLER                              PIC X(57) VALUE      02510048
           '                    01IPROCMVS9122HAS5130HA              '. 02280053
           05  FILLER                              PIC X(57) VALUE      02510048
           '                    01IPROCMVT1016V1                     '. 02280053
           05  FILLER                              PIC X(57) VALUE      02510048
           '                    01IPROCMVT1016HDT1016TD              '. 02280053
           05  FILLER                              PIC X(57) VALUE      02510048
           '                    02IPMOD VV1                          '. 02280053
           05  FILLER                              PIC X(57) VALUE      02510048
           '50 HOSPICE          00                                   '. 02520048
           05  FILLER                              PIC X(57) VALUE      02530048
           '                    01IPTYPEV63                          '. 02540048
           05  FILLER                              PIC X(57) VALUE      02550051
           '60 LABORATORY       00                                   '. 02560051
           05  FILLER                              PIC X(57) VALUE      02570051
           '                    01ICTYPEV16                          '. 02580051
           05  FILLER                              PIC X(57) VALUE      02590051
           '                    01ICTYPEV04     13     22            '. 02600065
           05  FILLER                              PIC X(57) VALUE      02610051
           '                    02IPROC RG0054  G0060  P0000  P9999  '. 03020002
           05  FILLER                              PIC X(57) VALUE      03030002
           '                             Q0111  Q0116  W7000  W8899  '. 03040002
           05  FILLER                              PIC X(57) VALUE      03050002
           '                             W8901  W8999  80000  89999  '. 03060002
           05  FILLER                              PIC X(57) VALUE      03070002
           '                             U0001  U0005                '. 03060002
           05  FILLER                              PIC X(57) VALUE      03070002
           '                            VG0001  G0026  G0027  36415  '. 03080002
           05  FILLER                              PIC X(57) VALUE      03090002
           '                             36430  36440  36450  36455  '. 03100002
           05  FILLER                              PIC X(57) VALUE      03110002
           '                             36460  G2023  G2024         '. 03120002
           05  FILLER                              PIC X(57) VALUE      03130003
           '                    02IPROC RP0000  P9999  Q0111  Q0116  '. 02620051
           05  FILLER                              PIC X(57) VALUE      03150000
           '                             W8000  W8899  W8901  W8999  '. 03160000
           05  FILLER                              PIC X(57) VALUE      03170000
           '                             80000  89999                '. 03180000
           05  FILLER                              PIC X(57) VALUE      03190000
           '                            VG0001  80102  80173  82947  '. 03200000
           05  FILLER                              PIC X(57) VALUE      02630051
           '                             87850  U0005                '. 03220000
           05  FILLER                              PIC X(57) VALUE      02650052
           '                    01IPROCMVH0003HAH0049HA86580HA       '. 02280053
           05  FILLER                              PIC X(57) VALUE      02650052
           '65 RADIOLOGY        00                                   '. 02660052
           05  FILLER                              PIC X(57) VALUE      02670052
           '                    01ICTYPEV04     10                   '. 02680052
           05  FILLER                              PIC X(57) VALUE      02690052
           '                    02IPROC RR0000  R6999  W7000  W7999  '. 02700052
           05  FILLER                              PIC X(57) VALUE      02710052
           '                             70000  79999                '. 02720052
           05  FILLER                              PIC X(57) VALUE      02730048
           '70 TRANSPORTATION   00                                   '. 02740048
           05  FILLER                              PIC X(57) VALUE      02750048
           '                    01ICTYPEV07                          '. 02760048
           05  FILLER                              PIC X(57) VALUE      02770067
           '                    02ESPROGV09                          '. 02780067
           05  FILLER                              PIC X(57) VALUE      02790050
           '80 ADULT DAY HEALTH 00                                   '. 02800050
           05  FILLER                              PIC X(57) VALUE      02810050
           '                    01IPTYPEV92                          '. 02820050
           05  FILLER                              PIC X(57) VALUE      02830067
           '                    02ESPROGV09                          '. 02840067
           05  FILLER                              PIC X(57) VALUE      02850050
           '                    02EPROC VZ1860                       '. 02860050
           05  FILLER                              PIC X(57) VALUE      02870051
           '81APRSNL CARE - PHYS00                                   '. 02880051
           05  FILLER                              PIC X(57) VALUE      02890051
           '                    01IPROC RZ1600  Z1617                '. 02900051
           05  FILLER                              PIC X(57) VALUE      02910051
           '                            VT1001  S9122                '. 02900051
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    02EPMOD VUC     ZI                   '. 03500000
           05  FILLER                              PIC X(57) VALUE      02930067
           '                    02ESPROGV09                          '. 02940067
           05  FILLER                              PIC X(57) VALUE      02950051
           '                    01IPROC VY9833                       '. 02960066
           05  FILLER                              PIC X(57) VALUE      02970067
           '                    02ESPROGV09                          '. 02980067
           05  FILLER                              PIC X(57) VALUE      02270053
           '                    01IPROCMVS5165HAT2028HAT2029HAT2039HA'. 02280053
           05  FILLER                              PIC X(57) VALUE      02990051
           '                    01IPROC V99199  S5111  S5120  S5125  '. 02900051
           05  FILLER                              PIC X(57) VALUE      02890051
           '                             S5165  S5170  S9122  T1019  '. 02900051
           05  FILLER                              PIC X(57) VALUE      02890051
           '                             T1999  T2003  T2015  T2025  '. 02900051
           05  FILLER                              PIC X(57) VALUE      02890051
           '                             T2028  T2035  T2039  T2041  '. 02900051
           05  FILLER                              PIC X(57) VALUE      02890051
           '                             T5999                       '. 02900051
           05  FILLER                              PIC X(57) VALUE      02910051
           '                    02IPMOD VSE                          '. 03500000
           05  FILLER                              PIC X(57) VALUE      02990051
           '                    01IPROC VT1019  T1020                '. 02900051
           05  FILLER                              PIC X(57) VALUE      02990051
           '81BPRSNL CARE - MH  00                                   '. 03000051
           05  FILLER                              PIC X(57) VALUE      03010051
           '                    01IPROC RZ1600  Z1605  Z1610  Z1613  '. 03020051
           05  FILLER                              PIC X(57) VALUE      03010051
           '                            VT1001                       '. 03020051
           05  FILLER                              PIC X(57) VALUE      03030051
           '                    02IPMOD VUC     ZI                   '. 03620000
           05  FILLER                              PIC X(57) VALUE      03050067
           '                    03ESPROGV09                          '. 03060067
           05  FILLER                              PIC X(57) VALUE      03070051
           '81CADULT MH REHAB   00                                   '. 03080051
           05  FILLER                              PIC X(57) VALUE      03090051
           '                    01IPROC RZ7333  Z7338                '. 03100051
           05  FILLER                              PIC X(57) VALUE      03110067
           '                    02ESPROGV09                          '. 03120067
           05  FILLER                              PIC X(57) VALUE      03130048
           '                    01IPROCMVH0019U1H0019U2H0019U3H0019U4'. 03100051
           05  FILLER                              PIC X(57) VALUE      03090051
           '                             H0019U5                     '. 03100051
           05  FILLER                              PIC X(57) VALUE      03110067
           '                    02ESPROGV09                          '. 03120067
           05  FILLER                              PIC X(57) VALUE      03090051
           '                    01IPROCMVH0019U1H0019U2H0019U3H0019U4'. 03100051
           05  FILLER                              PIC X(57) VALUE      03110067
           '                    02IPMOD V52                          '. 03120067
           05  FILLER                              PIC X(57) VALUE      03110067
           '                    03ESPROGV09                          '. 03120067
           05  FILLER                              PIC X(57) VALUE      03130048
           '87 DHSS/ECO WAIVER  00                                   '. 03140049
           05  FILLER                              PIC X(57) VALUE      03150049
           '                    01IPTYPEV35                          '. 03160049
           05  FILLER                              PIC X(57) VALUE      03170048
           '                    02ISPROGR28     32     34     36     '. 03180049
           05  FILLER                              PIC X(57) VALUE      03190048
           '                            V22     62                   '. 03200048
           05  FILLER                              PIC X(57) VALUE      03210049
           '                    01ISPROGV22     31     32            '. 03220049
           05  FILLER                              PIC X(57) VALUE      03230049
           '                    02IPSPECV760    862    980    982    '. 03240049
           05  FILLER                              PIC X(57) VALUE      03250048
           '                    01ISPROGV33                          '. 03220049
           05  FILLER                              PIC X(57) VALUE      03230049
           '                    02IPSPECV845    846    847    848    '. 03240049
           05  FILLER                              PIC X(57) VALUE      03230049
           '                             851                         '. 03240049
           05  FILLER                              PIC X(57) VALUE      03250048
           '                    01IPSPECV812    814                  '. 03240049
           05  FILLER                              PIC X(57) VALUE      03210049
           '                    02ISPROGV32                          '. 03220049
           05  FILLER                              PIC X(57) VALUE      03250048
           '88 TBI              00                                   '. 03260048
           05  FILLER                              PIC X(57) VALUE      03270048
           '                    01ISPROGV17                          '. 03280048
           05  FILLER                              PIC X(57) VALUE      03290048
           '                    02IPROC RY7433  Y7570                '. 03300048
           05  FILLER                              PIC X(57) VALUE      03310051
           '                            VS5109  Y7733  S5165         '. 03930001
           05  FILLER                              PIC X(57) VALUE      03940000
           '                    02IPROCMVS5101STS5102STS5120STS5199HI'. 03900000
           05  FILLER                              PIC X(57) VALUE      03910000
           '                             S8990STT1028HI97535STT2025ST'. 03920000
           05  FILLER                              PIC X(57) VALUE      03930000
           '                    02IPROCMVH0004STS5135ST97532ST       '. 03940000
           05  FILLER                              PIC X(57) VALUE      03950000
           '                    03IPMOD V22                          '. 03960000
           05  FILLER                              PIC X(57) VALUE      03970000
           '                    02IPROCMVS9129HQS9131HQS9128HQT2012HQ'. 03940000
           05  FILLER                              PIC X(57) VALUE      03950000
           '                    03IPMOD VST                          '. 03960000
           05  FILLER                              PIC X(57) VALUE      03970000
           '89 ABC WAIVER       00                                   '. 03320051
           05  FILLER                              PIC X(57) VALUE      03330051
           '                    01IPSPECV831                         '. 03340051
           05  FILLER                              PIC X(57) VALUE      03350067
           '                    02ESPROGV09                          '. 03360067
           05  FILLER                              PIC X(57) VALUE      03370050
           '90 DDD              00                                   '. 03380050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                    01IPTYPEV95                          '. 03400050
           05  FILLER                              PIC X(57) VALUE      03410050
           '                    01IPTYPEV44                          '. 03400050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                    02IPSPECV871    872    873    874    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                             875    876    877    878    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                             879    881    882    883    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                             884    885    886    887    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03390050
           '                             888    889    971    972    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03470050
           '                             973    974    975    976    '. 03400050
           05  FILLER                              PIC X(57) VALUE      03470050
           '                    03ISPROGV07     46                   '. 03480050
           05  FILLER                              PIC X(57) VALUE      03410050
           '91 CCPED            00                                   '. 03420050
           05  FILLER                              PIC X(57) VALUE      03430050
           '                    01ISPROGV08                          '. 03440050
           05  FILLER                              PIC X(57) VALUE      03450050
           '92 ACCAP            00                                   '. 03460050
           05  FILLER                              PIC X(57) VALUE      03470050
           '                    01ISPROGV05                          '. 03480050
           05  FILLER                              PIC X(57) VALUE      03490050
           '                    02IPROC RZ1710  Z1745  Z1800  Z1899  '. 03500050
           05  FILLER                              PIC X(57) VALUE      03510050
           '                    02IPROCMVS5199HIT1028HIS912352S912452'. 03900000
           05  FILLER                              PIC X(57) VALUE      03940000
           '                    02IPROCMVS9123TDS9123TVS9124TES9124TV'. 03900000
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    03IPMOD V52                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      03510050
           '93ACRPD - NOT USED  00                                   '. 03520050
           05  FILLER                              PIC X(57) VALUE      03530050
           '                    01ISPROGV04                          '. 03540050
           05  FILLER                              PIC X(57) VALUE      03550050
           '                    02IPROC RZ1700  Z1745                '. 03560050
           05  FILLER                              PIC X(57) VALUE      03570050
           '93BCRPD - NO PDN    00                                   '. 03580050
           05  FILLER                              PIC X(57) VALUE      03590050
           '                    01ISPROGV06                          '. 03600050
           05  FILLER                              PIC X(57) VALUE      03610050
           '                    02IPROC RZ1700  Z1745                '. 03620050
           05  FILLER                              PIC X(57) VALUE      03630050
           '                            VS5160  S5161  S5162  S5165  '. 03620050
           05  FILLER                              PIC X(57) VALUE      03630050
           '                    02IPROCMVS5199HIT1028HI              '. 03900000
           05  FILLER                              PIC X(57) VALUE      03630050
           '93CCRPD - PDN       00                                   '. 03640050
           05  FILLER                              PIC X(57) VALUE      03650050
           '                    01ISPROGV03                          '. 03660050
           05  FILLER                              PIC X(57) VALUE      03670050
           '                    02IPROC RZ1700  Z1745                '. 03680050
           05  FILLER                              PIC X(57) VALUE      03690048
           '                            VS5160  S5161  S5162  S5165  '. 03620050
           05  FILLER                              PIC X(57) VALUE      03940000
           '                    02IPROCMVS5199HIT1028HIS912352S912452'. 03900000
           05  FILLER                              PIC X(57) VALUE      03940000
           '                    02IPROCMVS9123TDS9123TVS9124TES9124TV'. 03900000
           05  FILLER                              PIC X(57) VALUE      01330062
           '                    03IPMOD V52                          '. 01540000
           05  FILLER                              PIC X(57) VALUE      03690048
           '94 GSHP             00                                   '. 03700048
           05  FILLER                              PIC X(57) VALUE      03710048
           '                    01IGSHP R5      9                    '. 03720048
           05  FILLER                              PIC X(57) VALUE      03730048
           '                            V1      2                    '. 03740048
           05  FILLER                              PIC X(57) VALUE      03750048
           '95 PREPAID HEALTH   00                                   '. 03760048
           05  FILLER                              PIC X(57) VALUE      03770048
           '                    01IPTYPEV37                          '. 03780048
           05  FILLER                              PIC X(57) VALUE      03790047
           '96 HOME CARE EXP    00                                   '. 03800048
           05  FILLER                              PIC X(57) VALUE      03810047
           '                    01ISPROGV09                          '. 03820048
           05  FILLER                              PIC X(57) VALUE      03790047
           '99 DEFAULT          00                                   '.
           05  FILLER                              PIC X(57) VALUE      03830056
           '                    01IPROC VT1027  S9482                '.
           05  FILLER                              PIC X(57) VALUE      03830056
           '                    02IPMOD VUN     UP                   '.
           05  FILLER                              PIC X(57) VALUE      03830056
           '                    02EPMOD RAA     99                   '.
           05  FILLER                              PIC X(57)            03830056
               VALUE HIGH-VALUES.                                       03840056
       01  FILLER REDEFINES COS-MATRIX.                                 03850047
           05  M-ENTRY OCCURS 370                                       04570001
               INDEXED BY NDX1 NDX2 NDX3 NDX4.                          03870071
               10  M-MODCOS                        PIC X(03).           03880068
               10  M-MODCOS-DESC                   PIC X(17).           03890047
               10  M-LEVEL                         PIC X(02).           03900068
               10  M-LEVEL-N REDEFINES M-LEVEL     PIC 9(02).           03910068
               10  M-INCL-EXCL                     PIC X(01).           03920047
                   88  INCLUDE                 VALUE 'I'.               03930073
                   88  EXCLUDE                 VALUE 'E'.               03940073
               10  M-DATA-ELEMENT                  PIC X(05).           03950047
                   88  CLAIM-TYPE              VALUE 'CTYPE'.           03960073
                   88  CLINIC-CODE             VALUE 'CLINC'.           03961076
                   88  FACILITY-CONTROL-CODE   VALUE 'FACCC'.           03970073
                   88  PROCEDURE-CODE          VALUE 'PROC '.           03980073
                   88  PROCEDURE-AND-MODS      VALUE 'PROCM'.           03990073
                   88  PROCEDURE-MOD-ONLY      VALUE 'PMOD '.           04000074
                   88  PROGRAM-STATUS          VALUE 'PSTAT'.           04010073
                   88  PROVIDER-SPECIALTY      VALUE 'PSPEC'.           04020073
                   88  PROVIDER-TYPE           VALUE 'PTYPE'.           04030073
                   88  SPECIAL-PROGRAM         VALUE 'SPROG'.           04040073
               10  M-RANGE-OR-LIST                 PIC X(01).           04050047
                   88  RANGE                   VALUE 'R'.               04060073
                   88  LIST-OR-VALUE           VALUE 'V'.               04070073
               10  M-RANGE-1.                                           04080047
                   15  M-VALUE-1                   PIC X(07).           04090047
                   15  M-VALUE-2                   PIC X(07).           04100047
               10  M-RANGE-2.                                           04110047
                   15  M-VALUE-3                   PIC X(07).           04120047
                   15  M-VALUE-4                   PIC X(07).           04130047
                                               00770088
                                                                        00780087
       01  FILLER                                  PIC X(48)            00790087
           VALUE '<<<<<< NJ2BT061 WORKING STORAGE ENDS HERE >>>>>>'.    00850001
           EJECT                                                        00810087
       LINKAGE SECTION.                                                 00820087
                                                                        00830087
       01  PROCESS                                 PIC X(01).           01010002
      *    88  STARTING                        VALUE '0'.               01020002
      *    88  PROCESSING                      VALUE '1'.               01030002
                                                                        01040002
           COPY ZCLMACTU REPLACING ==:CLM:== BY ====.                   00840087
       01  OUTPATIENT-LAB-PROC-SW                  PIC X(01).
           88  OUTPATIENT-LAB-PROC      VALUE 'Y'.
           88  NOT-OUTPATIENT-LAB-PROC  VALUE 'N'.

           EJECT                                                        00850087
       PROCEDURE DIVISION USING PROCESS                                 01070002
                                OUTPATIENT-LAB-PROC-SW                  04880003
                                CLMS-ACTIVITY-RECORD.                   01080002
                                                                        00870087
           IF PROCESS = '0'                                             01100000
              PERFORM 0000-START                                        00900087
           ELSE                                                         01120000
              PERFORM 1000-PROCESS THRU 1000-EXIT                       01130006
           END-IF.                                                      00910088
                                                                        00940087
           GOBACK.                                                      00950087
           EJECT                                                        00960087
       0000-START.                                                      00970087
                                                                        00980087
           MOVE 'NJ2BT061' TO PROGRAM-NME.                              01040001
                                                                        01000087
           COPY COMPMOVE.                                               01010087
           EJECT                                                        01020087
       1000-PROCESS.                                                    01030087
                                                                        01040087
                                                                        01570003
          
           IF NOT A-OUTPATIENT AND                                      01390098
              NOT(A-MCARE-PARTA AND TT-A-OUTPATIENT)                    01390098
              MOVE '60' TO A-MODIFIED-COS                               01390098
              GO TO 1000-EXIT                                           01390098
           END-IF.                                                      01440098
                                                                        01450098
           MOVE 'N' TO COMPLETION-INDICATOR.                            01460088
                                                                        01470088
           SET NDX1 TO 1.                                               01480088
                                                                        01490087
           SET NDX2 TO 2.                                               01500092
                                                                        01510092
           PERFORM 3000-TRY-A-TEST.                                     01520092
                                                                        01530092
           PERFORM 2000-KEEP-TRYING UNTIL                               01540092
                   COMPLETED.                                           01550092
                                                                        01560092
           IF M-MODCOS (NDX1) < '08B'                                   01570092
              MOVE M-MODCOS (NDX1) TO A-MODIFIED-COS                    01580088
           ELSE                                                         01590088
              MOVE '99' TO A-MODIFIED-COS                               01820001
           END-IF.                                                      01610095
                                                                        01620098
       1000-EXIT.                                                       01630098
                                                                        01640098
           EXIT.                                                        01650098
           EJECT                                                        00690000
       2000-KEEP-TRYING.                                                01670088
                                                                        01680088
                                                                        01800088
           SET NDX3 TO NDX2.                                            01810092
                                                                        01820088
           SET NDX3 UP BY 1.                                            01830092
                                                                        01840088
           PERFORM UNTIL                                                01850088
                   M-LEVEL (NDX3) > SPACES                              01860092
                   SET NDX3 UP BY 1                                     01870092
           END-PERFORM.                                                 01880088
                                                                        01890088
           IF EXCLUDE (NDX2)                                            01900092
              IF EXCLUDED                                               01910088
                 IF M-MODCOS (NDX3) = '08B'                             01920093
                    SET NDX1 TO NDX3                                    01930093
                    MOVE 'Y' TO COMPLETION-INDICATOR                    01940093
                 ELSE                                                   01950093
                    IF M-LEVEL (NDX3) > M-LEVEL (NDX2)                  01960093
                       SET NDX2 TO NDX3                                 01970093
                       PERFORM 3000-TRY-A-TEST                          01980093
                    ELSE                                                01990093
                       PERFORM UNTIL                                    02000093
                               M-MODCOS (NDX3) = '08B' OR               02010093
                               (M-LEVEL (NDX3) > SPACES AND             02020093
                                M-LEVEL (NDX3) < M-LEVEL (NDX2))        02030093
                               SET NDX3 UP BY 1                         02040093
                       END-PERFORM                                      02050093
                       IF M-MODCOS (NDX3) = '08B'                       02060093
                          SET NDX1 TO NDX3                              02070093
                          MOVE 'Y' TO COMPLETION-INDICATOR              02080093
                       ELSE                                             02090093
                          IF M-LEVEL (NDX3) = '00'                      02100093
                             SET NDX1 TO NDX3                           02110093
                             SET NDX3 UP BY 1                           02120093
                          END-IF                                        02130093
                          SET NDX2 TO NDX3                              02140093
                          PERFORM 3000-TRY-A-TEST                       02150093
                       END-IF                                           02160093
                    END-IF                                              02170093
                 END-IF                                                 02180088
              ELSE                                                      02190088
                 PERFORM UNTIL                                          02200088
                         M-MODCOS (NDX3) = '08B' OR                     02210092
                         (M-LEVEL (NDX3) > SPACES AND                   02220092
                          M-LEVEL (NDX3) NOT > M-LEVEL (NDX2))          02230093
                         SET NDX3 UP BY 1                               02240088
                 END-PERFORM                                            02250088
                 IF M-MODCOS (NDX3) = '08B'                             02260093
                    MOVE 'Y' TO COMPLETION-INDICATOR                    02270092
                 ELSE                                                   02280092
                    IF M-LEVEL (NDX3) = M-LEVEL (NDX2)                  02290093
                       SET NDX2 TO NDX3                                 02300093
                       PERFORM 3000-TRY-A-TEST                          02310093
                    ELSE                                                02320093
                       MOVE 'Y' TO COMPLETION-INDICATOR                 02330093
                    END-IF                                              02340093
                 END-IF                                                 02350093
              END-IF                                                    02360088
           ELSE                                                         02370088
              IF INCLUDED                                               02380088
                 IF M-MODCOS (NDX3) = '08B'                             02390093
                    MOVE 'Y' TO COMPLETION-INDICATOR                    02400093
                 ELSE                                                   02410093
                    IF M-LEVEL (NDX3) > M-LEVEL (NDX2)                  02420092
                       SET NDX2 TO NDX3                                 02430088
                       PERFORM 3000-TRY-A-TEST                          02440088
                    ELSE                                                02450088
                       MOVE 'Y' TO COMPLETION-INDICATOR                 02460088
                    END-IF                                              02470088
                 END-IF                                                 02480088
              ELSE                                                      02490088
                 PERFORM UNTIL                                          02500088
                         M-MODCOS (NDX3) = '08B' OR                     02510093
                         (M-LEVEL (NDX3) > SPACES AND                   02520092
                          M-LEVEL (NDX3) NOT > M-LEVEL (NDX2))          02530092
                         SET NDX3 UP BY 1                               02540088
                 END-PERFORM                                            02550088
                 IF M-MODCOS (NDX3) = '08B'                             02560093
                    SET NDX1 TO NDX3                                    02570093
                    MOVE 'Y' TO COMPLETION-INDICATOR                    02580093
                 ELSE                                                   02590093
                    IF M-LEVEL (NDX3) = '00'                            02600093
                       SET NDX1 TO NDX3                                 02610093
                       SET NDX3 UP BY 1                                 02620093
                    END-IF                                              02630093
                    SET NDX2 TO NDX3                                    02640093
                    PERFORM 3000-TRY-A-TEST                             02650093
                 END-IF                                                 02660093
              END-IF                                                    02670088
           END-IF.                                                      02680088
           EJECT                                                        00990000
       3000-TRY-A-TEST.                                                 02700088
                                                                        02710088
           MOVE 'N' TO INCLUSION-INDICATOR EXCLUSION-INDICATOR.         02720088
                                                                        02730088
           EVALUATE TRUE                                                02740088
                    WHEN CLAIM-TYPE (NDX2)                              02750088
                         PERFORM 3010-CLAIM-TYPE                        02760090
                    WHEN CLINIC-CODE (NDX2)                             02770099
                         PERFORM 3020-CLINIC-CODE                       02780099
                    WHEN FACILITY-CONTROL-CODE (NDX2)                   02790089
                         PERFORM 3030-FACILITY-CONTROL-CODE             02800099
                    WHEN PROCEDURE-CODE (NDX2)                          02810088
                         PERFORM 3040-PROCEDURE-CODE                    02820099
                    WHEN PROCEDURE-AND-MODS (NDX2)                      02830088
                         PERFORM 3050-PROCEDURE-AND-MODIFIER            02840099
                    WHEN PROCEDURE-MOD-ONLY (NDX2)                      02850099
                         PERFORM 3060-PROCEDURE-MODIFIER-ONLY           02860099
                    WHEN PROGRAM-STATUS (NDX2)                          02870099
                         PERFORM 3070-PROGRAM-STATUS-CODE               02880099
                    WHEN PROVIDER-SPECIALTY (NDX2)                      02890088
                         PERFORM 3080-SPECIALTY-CODE                    02900099
                    WHEN PROVIDER-TYPE (NDX2)                           02910088
                         PERFORM 3090-PROVIDER-TYPE                     02920099
                    WHEN SPECIAL-PROGRAM (NDX2)                         02930088
                         PERFORM 3100-SPECIAL-PROGRAM-CODE              02940099
           END-EVALUATE.                                                02950088
           EJECT                                                        02960088
       3010-CLAIM-TYPE.                                                 02970090
                                                                        51030000
           MOVE A-CLM-TYPE TO W-VALUE.                                  03050088
                                                                        03080088
           PERFORM 4000-EXECUTE-TEST.                                   03090088
                                                                        03100099
       3020-CLINIC-CODE.                                                03110099
                                                                        03120099
           IF A-OUTPATIENT                                              03130099
             IF OP-CLINIC-CDE (1) > SPACES                              03140099
                MOVE OP-CLINIC-CDE (1) TO W-VALUE                       03150099
                PERFORM 4000-EXECUTE-TEST                               03160099
               IF NOT-INCLUDED AND NOT-EXCLUDED                         03170099
                 IF OP-CLINIC-CDE (2) > SPACES                          03180099
                    MOVE OP-CLINIC-CDE (2) TO W-VALUE                   03190099
                    PERFORM 4000-EXECUTE-TEST                           03200099
                   IF NOT-INCLUDED AND NOT-EXCLUDED                     03210099
                     IF OP-CLINIC-CDE (3) > SPACES                      03220099
                        MOVE OP-CLINIC-CDE (3) TO W-VALUE               03230099
                        PERFORM 4000-EXECUTE-TEST                       03240099
                       IF NOT-INCLUDED AND NOT-EXCLUDED                 03250099
                         IF OP-CLINIC-CDE (4) > SPACES                  03260099
                            MOVE OP-CLINIC-CDE (4) TO W-VALUE           03270099
                            PERFORM 4000-EXECUTE-TEST                   03280099
                         END-IF                                         03290099
                       END-IF                                           03300099
                     END-IF                                             03310099
                   END-IF                                               03320099
                 END-IF                                                 03330099
               END-IF                                                   53810000
             END-IF                                                     03350099
           ELSE                                                         53820000
             IF A-MCARE-PARTA                                           03370099
               IF TT-A-OUTPATIENT                                       03380099
                  SET TTAO-INDX TO 1                                    03390099
                  PERFORM UNTIL                                         03400099
                          INCLUDED OR                                   03410099
                          EXCLUDED OR                                   03420099
                          TTAO-INDX > TT-A-O-REV-CDE-CTR                03430099
                          IF TT-A-O-CLINIC-CDE (TTAO-INDX 1) > SPACES   03440099
                             MOVE TT-A-O-CLINIC-CDE                     03450099
                                  (TTAO-INDX 1) TO W-VALUE              03460099
                             PERFORM 4000-EXECUTE-TEST                  03470099
                            IF NOT-INCLUDED AND NOT-EXCLUDED            03480099
                              IF TT-A-O-CLINIC-CDE                      03490099
                                 (TTAO-INDX 2) > SPACES                 03500099
                                 MOVE TT-A-O-CLINIC-CDE                 03510099
                                      (TTAO-INDX 2) TO W-VALUE          03520099
                                 PERFORM 4000-EXECUTE-TEST              03530099
                                IF NOT-INCLUDED AND NOT-EXCLUDED        03540099
                                  IF TT-A-O-CLINIC-CDE                  03550099
                                     (TTAO-INDX 3) > SPACES             03560099
                                     MOVE TT-A-O-CLINIC-CDE             03570099
                                          (TTAO-INDX 3) TO W-VALUE      03580099
                                     PERFORM 4000-EXECUTE-TEST          03590099
                                    IF NOT-INCLUDED AND NOT-EXCLUDED    03600099
                                      IF TT-A-O-CLINIC-CDE              03610099
                                         (TTAO-INDX 4) > SPACES         03620099
                                         MOVE TT-A-O-CLINIC-CDE         03630099
                                              (TTAO-INDX 4) TO W-VALUE  03640099
                                         PERFORM 4000-EXECUTE-TEST      03650099
                                      END-IF                            03660099
                                    END-IF                              03670099
                                  END-IF                                03680099
                                END-IF                                  03690099
                              END-IF                                    03700099
                            END-IF                                      03710099
                          END-IF                                        03720099
                          SET TTAO-INDX UP BY 1                         03730099
                  END-PERFORM                                           03740099
               END-IF                                                   54020000
             END-IF                                                     03760099
           END-IF.                                                      54030000
                                                                        54040000
       3030-FACILITY-CONTROL-CODE.                                      03790099
                                                                        03800088
           MOVE A-FACILITY-CNTRL-CDE TO W-VALUE.                        03810090
                                                                        03820088
           PERFORM 4000-EXECUTE-TEST.                                   03830088
                                                                        03840088
       3040-PROCEDURE-CODE.                                             03850099
                                                                        03860088
           MOVE A-PROC-CDE TO W-VALUE.                                  03920088
           PERFORM 4000-EXECUTE-TEST.                                   03930088
                                                                        54120000
       3050-PROCEDURE-AND-MODIFIER.                                     03960099
                                                                        03970088
           MOVE A-PROC-CDE TO W-VALUE.                                  04030088
           IF A-PROC-MOD > SPACES                                       04040088
              MOVE A-PROC-MOD TO W-VALUE (6:2)                          04050088
           END-IF.                                                      04060088
           PERFORM 4000-EXECUTE-TEST.                                   04070088
           IF NOT-INCLUDED AND NOT-EXCLUDED                             04080088
              IF A-PROC-MOD-SECOND > SPACES                             04090088
                 MOVE A-PROC-MOD-SECOND TO W-VALUE (6:2)                04100088
                 PERFORM 4000-EXECUTE-TEST                              04110088
              END-IF                                                    04120088
           END-IF.                                                      04130088
                                                                        54210000
       3060-PROCEDURE-MODIFIER-ONLY.                                    04160099
                                                                        04170099
           IF A-PROC-MOD > SPACES                                       04230099
              MOVE A-PROC-MOD TO W-VALUE                                04240099
              PERFORM 4000-EXECUTE-TEST                                 04250099
              IF NOT-INCLUDED AND NOT-EXCLUDED                          04260099
                 IF A-PROC-MOD-SECOND > SPACES                          04270099
                    MOVE A-PROC-MOD-SECOND TO W-VALUE                   04280099
                    PERFORM 4000-EXECUTE-TEST                           04290099
                 END-IF                                                 04300099
              END-IF                                                    04310099
           END-IF.                                                      04320099
                                                                        54400000
       3070-PROGRAM-STATUS-CODE.                                        04350099
                                                                        04360099
           MOVE A-PROG-STATUS-CDE TO W-VALUE.                           04370099
                                                                        04380099
           PERFORM 4000-EXECUTE-TEST.                                   04390099
                                                                        04400099
       3080-SPECIALTY-CODE.                                             04410099
                                                                        04420088
           MOVE A-SPECIALTY-CDE TO W-VALUE.                             04430088
                                                                        04440088
           PERFORM 4000-EXECUTE-TEST.                                   04450088
                                                                        04460088
       3090-PROVIDER-TYPE.                                              04470099
                                                                        04480088
           MOVE A-PROV-TYPE TO W-VALUE.                                 04490088
                                                                        04500088
           PERFORM 4000-EXECUTE-TEST.                                   04510088
                                                                        04520088
       3100-SPECIAL-PROGRAM-CODE.                                       04530099
                                                                        04540088
           MOVE A-SPECIAL-PROG-CDE TO W-VALUE.                          04550088
                                                                        04560088
           PERFORM 4000-EXECUTE-TEST.                                   04570088
                                                                        04580088
       4000-EXECUTE-TEST.                                               04590088
                                                                        04600088
           IF INCLUDE (NDX2)                                            04610088
              IF RANGE (NDX2)                                           04620088
                 IF W-VALUE NOT < M-VALUE-1 (NDX2) AND                  04630094
                    W-VALUE NOT > M-VALUE-2 (NDX2)                      04640094
                    MOVE 'Y' TO INCLUSION-INDICATOR                     04650088
                 ELSE                                                   04660088
                    IF M-RANGE-2 (NDX2) > SPACES                        04670094
                       IF W-VALUE NOT < M-VALUE-3 (NDX2) AND            04680094
                          W-VALUE NOT > M-VALUE-4 (NDX2)                04690094
                          MOVE 'Y' TO INCLUSION-INDICATOR               04700088
                       END-IF                                           04710088
                    END-IF                                              04720088
                 END-IF                                                 04730088
              ELSE                                                      04740088
                 IF W-VALUE = M-VALUE-1 (NDX2) OR                       04750094
                    (M-VALUE-2 (NDX2) > SPACES AND                      04760094
                     W-VALUE = M-VALUE-2 (NDX2)) OR                     04770094
                    (M-VALUE-3 (NDX2) > SPACES AND                      04780094
                     W-VALUE = M-VALUE-3 (NDX2)) OR                     04790094
                    (M-VALUE-4 (NDX2) > SPACES AND                      04800094
                     W-VALUE = M-VALUE-4 (NDX2))                        04810094
                    MOVE 'Y' TO INCLUSION-INDICATOR                     04820088
                 END-IF                                                 04830088
              END-IF                                                    04840088
              IF NOT-INCLUDED                                           04850088
                 SET NDX3 NDX4 TO NDX2                                  04860088
                 SET NDX4 UP BY 1                                       04870088
                 PERFORM 4010-MORE-INCLUDES UNTIL                       04880088
                         INCLUDED OR                                    04890088
                         M-LEVEL (NDX4) > SPACES                        04900096
              END-IF                                                    04910088
           ELSE                                                         04920088
              IF RANGE (NDX2)                                           04930088
                 IF W-VALUE NOT < M-VALUE-1 (NDX2) AND                  04940094
                    W-VALUE NOT > M-VALUE-2 (NDX2)                      04950094
                    MOVE 'Y' TO EXCLUSION-INDICATOR                     04960088
                 ELSE                                                   04970088
                    IF M-RANGE-2 (NDX2) > SPACES                        04980094
                       IF W-VALUE NOT < M-VALUE-3 (NDX2) AND            04990094
                          W-VALUE NOT > M-VALUE-4 (NDX2)                05000094
                          MOVE 'Y' TO EXCLUSION-INDICATOR               05010088
                       END-IF                                           05020088
                    END-IF                                              05030088
                 END-IF                                                 05040088
              ELSE                                                      05050088
                 IF W-VALUE = M-VALUE-1 (NDX2) OR                       05060094
                    (M-VALUE-2 (NDX2) > SPACES AND                      05070094
                     W-VALUE = M-VALUE-2 (NDX2)) OR                     05080094
                    (M-VALUE-3 (NDX2) > SPACES AND                      05090094
                     W-VALUE = M-VALUE-3 (NDX2)) OR                     05100094
                    (M-VALUE-4 (NDX2) > SPACES AND                      05110094
                     W-VALUE = M-VALUE-4 (NDX2))                        05120094
                    MOVE 'Y' TO EXCLUSION-INDICATOR                     05130088
                 END-IF                                                 05140088
              END-IF                                                    05150088
              IF NOT-EXCLUDED                                           05160088
                 SET NDX3 NDX4 TO NDX2                                  05170088
                 SET NDX4 UP BY 1                                       05180088
                 PERFORM 4020-MORE-EXCLUDES UNTIL                       05190088
                         EXCLUDED OR                                    05200088
                         M-LEVEL (NDX4) > SPACES                        05210096
              END-IF                                                    05220088
           END-IF.                                                      05230088
           EJECT                                                        05240088
       4010-MORE-INCLUDES.                                              05250088
                                                                        05260088
           IF RANGE (NDX4)                                              05270088
              SET NDX3 TO NDX4                                          05280088
              IF W-VALUE NOT < M-VALUE-1 (NDX4) AND                     05290094
                 W-VALUE NOT > M-VALUE-2 (NDX4)                         05300094
                 MOVE 'Y' TO INCLUSION-INDICATOR                        05310088
              ELSE                                                      05320088
                 IF M-RANGE-2 (NDX4) > SPACES                           05330094
                    IF W-VALUE NOT < M-VALUE-3 (NDX4) AND               05340094
                       W-VALUE NOT > M-VALUE-4 (NDX4)                   05350094
                       MOVE 'Y' TO INCLUSION-INDICATOR                  05360088
                    END-IF                                              05370088
                 END-IF                                                 05380088
              END-IF                                                    05390088
           ELSE                                                         05400088
              IF LIST-OR-VALUE (NDX4)                                   05410088
                 SET NDX3 TO NDX4                                       05420088
                 IF W-VALUE = M-VALUE-1 (NDX4) OR                       05430094
                    (M-VALUE-2 (NDX4) > SPACES AND                      05440094
                     W-VALUE = M-VALUE-2 (NDX4)) OR                     05450094
                    (M-VALUE-3 (NDX4) > SPACES AND                      05460094
                     W-VALUE = M-VALUE-3 (NDX4)) OR                     05470094
                    (M-VALUE-4 (NDX4) > SPACES AND                      05480094
                     W-VALUE = M-VALUE-4 (NDX4))                        05490094
                    MOVE 'Y' TO INCLUSION-INDICATOR                     05500088
                 END-IF                                                 05510088
              ELSE                                                      05520088
                 IF RANGE (NDX3)                                        05530088
                    IF W-VALUE NOT < M-VALUE-1 (NDX4) AND               05540094
                       W-VALUE NOT > M-VALUE-2 (NDX4)                   05550094
                       MOVE 'Y' TO INCLUSION-INDICATOR                  05560088
                    ELSE                                                05570088
                       IF M-RANGE-2 (NDX4) > SPACES                     05580094
                          IF W-VALUE NOT < M-VALUE-3 (NDX4) AND         05590094
                             W-VALUE NOT > M-VALUE-4 (NDX4)             05600094
                             MOVE 'Y' TO INCLUSION-INDICATOR            05610088
                          END-IF                                        05620088
                       END-IF                                           54610000
                    END-IF                                              05640088
                 ELSE                                                   05650088
                    IF W-VALUE = M-VALUE-1 (NDX4) OR                    05660094
                       (M-VALUE-2 (NDX4) > SPACES AND                   05670094
                        W-VALUE = M-VALUE-2 (NDX4)) OR                  05680094
                       (M-VALUE-3 (NDX4) > SPACES AND                   05690094
                        W-VALUE = M-VALUE-3 (NDX4)) OR                  05700094
                       (M-VALUE-4 (NDX4) > SPACES AND                   05710094
                        W-VALUE = M-VALUE-4 (NDX4))                     05720094
                       MOVE 'Y' TO INCLUSION-INDICATOR                  05730088
                    END-IF                                              05740088
                 END-IF                                                 05750088
              END-IF                                                    05760088
           END-IF.                                                      54630000
                                                                        54640000
           SET NDX4 UP BY 1.                                            05790088
           EJECT                                                        05800088
       4020-MORE-EXCLUDES.                                              05810088
                                                                        05820088
           IF RANGE (NDX4)                                              05830088
              SET NDX3 TO NDX4                                          05840088
              IF W-VALUE NOT < M-VALUE-1 (NDX4) AND                     05850094
                 W-VALUE NOT > M-VALUE-2 (NDX4)                         05860094
                 MOVE 'Y' TO EXCLUSION-INDICATOR                        05870088
              ELSE                                                      05880088
                 IF M-RANGE-2 (NDX4) > SPACES                           05890094
                    IF W-VALUE NOT < M-VALUE-3 (NDX4) AND               05900094
                       W-VALUE NOT > M-VALUE-4 (NDX4)                   05910094
                       MOVE 'Y' TO EXCLUSION-INDICATOR                  05920088
                    END-IF                                              05930088
                 END-IF                                                 05940088
              END-IF                                                    05950088
           ELSE                                                         05960088
              IF LIST-OR-VALUE (NDX4)                                   05970088
                 SET NDX3 TO NDX4                                       05980088
                 IF W-VALUE = M-VALUE-1 (NDX4) OR                       05990094
                    (M-VALUE-2 (NDX4) > SPACES AND                      06000094
                     W-VALUE = M-VALUE-2 (NDX4)) OR                     06010094
                    (M-VALUE-3 (NDX4) > SPACES AND                      06020094
                     W-VALUE = M-VALUE-3 (NDX4)) OR                     06030094
                    (M-VALUE-4 (NDX4) > SPACES AND                      06040094
                     W-VALUE = M-VALUE-4 (NDX4))                        06050094
                    MOVE 'Y' TO EXCLUSION-INDICATOR                     06060088
                 END-IF                                                 06070088
              ELSE                                                      06080088
                 IF RANGE (NDX3)                                        06090088
                    IF W-VALUE NOT < M-VALUE-1 (NDX4) AND               06100094
                       W-VALUE NOT > M-VALUE-2 (NDX4)                   06110094
                       MOVE 'Y' TO EXCLUSION-INDICATOR                  06120088
                    ELSE                                                06130088
                       IF M-RANGE-2 (NDX4) > SPACES                     06140094
                          IF W-VALUE NOT < M-VALUE-3 (NDX4) AND         06150094
                             W-VALUE NOT > M-VALUE-4 (NDX4)             06160094
                             MOVE 'Y' TO EXCLUSION-INDICATOR            06170088
                          END-IF                                        06180088
                       END-IF                                           06190088
                    END-IF                                              06200088
                 ELSE                                                   06210088
                    IF W-VALUE = M-VALUE-1 (NDX4) OR                    06220094
                       (M-VALUE-2 (NDX4) > SPACES AND                   06230094
                        W-VALUE = M-VALUE-2 (NDX4)) OR                  06240094
                       (M-VALUE-3 (NDX4) > SPACES AND                   06250094
                        W-VALUE = M-VALUE-3 (NDX4)) OR                  06260094
                       (M-VALUE-4 (NDX4) > SPACES AND                   06270094
                        W-VALUE = M-VALUE-4 (NDX4))                     06280094
                       MOVE 'Y' TO EXCLUSION-INDICATOR                  06290088
                    END-IF                                              06300088
                 END-IF                                                 06310088
              END-IF                                                    06320088
           END-IF.                                                      52180000
                                                                        06340088
           SET NDX4 UP BY 1.                                            06350088
           EJECT                                                        06360088
           COPY ABENDPD.                                                06370088
