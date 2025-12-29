       01  CLM-CLMS-ACTIVITY-RECORD.
           05  CLM-COMMON-ACTIVITY.
             07 COMMON-GROUP-1.
               10 :CLM:A-ICN.
                   15 :CLM:A-ICN-1-11.
                       20 :CLM:A-JULIAN.
                           25 :CLM:A-ICN-YR              PIC 9(4).
                           25 :CLM:A-ICN-DAY             PIC 9(3).
                               88 CHARITY-CARE                          06290001
                                  VALUE 401 THRU 766.                   06300001
                       20 :CLM:A-ICN-BATCH               PIC 9(4).
                       20 :CLM:A-ICN-SEQ                 PIC 9(2).
                   15 :CLM:A-ICN-LINE                    PIC 9(2).
               10 :CLM:A-ICN-FORMER                      PIC 9(15)
                                                           COMP-3.
               10 :CLM:A-ICN-ORIGINAL                    PIC 9(15)
                                                           COMP-3.
               10 :CLM:A-CLM-INVOICE-TYPE                PIC 9(2).
                   88 :CLM:A-VALID-TYPE                                 06390001
                       VALUE 01 02 04 07 08 11 12 13.                   06400001
                   88 :CLM:A-UB-82-TYPE              VALUE 01.
                   88 :CLM:A-LTC-TYPE                VALUE 02.
                   88 :CLM:A-NJ-1500-TYPE            VALUE 04.
                   88 :CLM:A-TRANSPORTATION-TYPE     VALUE 07.
                   88 :CLM:A-OPTICAL-APPLIANCES-TYPE VALUE 08.
                   88 :CLM:A-DENTAL-TYPE             VALUE 11.
                   88 :CLM:A-PHARMACY-TYPE           VALUE 12.
                   88 :CLM:A-EPSDT-TYPE              VALUE 13.
               10 :CLM:A-CLM-TYPE                        PIC 9(2).
                   88 :CLM:A-VALID-CLM                                  06500001
                       VALUE 01 THRU 19                                 06510001
                             21 THRU 24.                                06520001
                   88 :CLM:A-PROFESSIONAL                               06530001
                       VALUE 16 THRU 19                                 06540001
                             04 05 09 10 21 22 23.                      06550001
                   88 :CLM:A-INPATIENT               VALUE 01.
                   88 :CLM:A-LTC                     VALUE 02.
                   88 :CLM:A-OUTPATIENT              VALUE 03.
                   88 :CLM:A-PHYSICIAN               VALUE 04.
                   88 :CLM:A-CHIROPRACTOR            VALUE 05.
                   88 :CLM:A-HOME-HEALTH             VALUE 06.
                   88 :CLM:A-TRANSPORTATION          VALUE 07.
                   88 :CLM:A-VISION                  VALUE 08.
                   88 :CLM:A-SUPPLIES-DME            VALUE 09.
                   88 :CLM:A-PODIATRY                VALUE 10.
                   88 :CLM:A-DENTAL                  VALUE 11.
                   88 :CLM:A-PHARMACY                VALUE 12.
                   88 :CLM:A-EPSDT                   VALUE 13.
                   88 :CLM:A-MCARE-PARTA             VALUE 14.
                   88 :CLM:A-MCARE-PARTB             VALUE 15.
                   88 :CLM:A-LABORATORY              VALUE 16.
                   88 :CLM:A-P-AND-O                 VALUE 17.
                   88 :CLM:A-INDEPENDENT-CLINIC      VALUE 18.
                   88 :CLM:A-PSYCHOLOGIST            VALUE 19.
                   88 :CLM:A-OPTOMETRISTS            VALUE 21.
                   88 :CLM:A-NURSE-MIDWIFES          VALUE 22.
                   88 :CLM:A-HEARING-AID             VALUE 23.
                   88 :CLM:A-CAPITATION              VALUE 24.
               10 :CLM:A-CLM-STATUS                      PIC 9(1).
                   88 :CLM:A-VALID-CLM-STATUS        VALUE 1 THRU 9.
                   88 :CLM:A-CLM-STATUS-PAID-ORIG    VALUE 1.
                   88 :CLM:A-CLM-STATUS-PAID-ADJUST  VALUE 2.
                   88 :CLM:A-CLM-STATUS-DENIED       VALUE 3.
                   88 :CLM:A-CLM-STATUS-PENDED       VALUE 4.
                   88 :CLM:A-CLM-STATUS-RELEASED     VALUE 5.
                   88 :CLM:A-CLM-STATUS-CCF          VALUE 6.
                   88 :CLM:A-CLM-STATUS-PEND-MASS-ADJ VALUE 7.          06870001
                   88 :CLM:A-CLM-STATUS-PEND-FISCAL  VALUE 8.
                   88 :CLM:A-CLM-STATUS-DEAD-HISTORY VALUE 9.
               10 :CLM:A-CLM-TRANS-TYPE                  PIC 9(1).
                   88 :CLM:A-VALID-CLM-TRANS-TYPE    VALUE 1 THRU 5.
                   88 :CLM:A-CLM-TRANS-TYPE-ORIG     VALUE 1.
                   88 :CLM:A-CLM-TRANS-TYPE-ADJ      VALUE 2.
                   88 :CLM:A-CLM-TRANS-TYPE-CREDIT   VALUE 3.
                   88 :CLM:A-CLM-TRANS-TYPE-VOID     VALUE 4.
                   88 :CLM:A-CLM-TRANS-TYPE-SKELETON VALUE 5.
               10 :CLM:A-CLM-MEDIA-CDE                   PIC 9(1).
                   88 :CLM:A-VALID-CLM-MEDIA-CDE                        06980001
                       VALUE 0 THRU 4                                   06990001
                             7 8.                                       07000001
                   88 :CLM:A-CLM-MEDIA-PAPER         VALUE 0 2.
                   88 :CLM:A-CLM-MEDIA-EMC           VALUE 1.
                   88 :CLM:A-CLM-MEDIA-EMC-HIPAA     VALUE 1 8.         04900612
                   88 :CLM:A-CLM-MEDIA-DDE           VALUE 2.
                   88 :CLM:A-CLM-MEDIA-FIN           VALUE 3.
                   88 :CLM:A-CLM-MEDIA-POS           VALUE 4.
                   88 :CLM:A-CLM-MEDIA-ENC           VALUE 7.
                   88 :CLM:A-CLM-MEDIA-HIPAA         VALUE 8.           04902012
               10 :CLM:A-SUBMITTER-ID                    PIC X(7).
                   88 A-SUBM-SEMI-SPEC-ED      VALUE 'A111111'.
               10 :CLM:A-PROV-NUM-SERVICE                PIC X(7).
                   88 :CLM:A-PROV-NUM-CCBHC                             07110001
                       VALUE 'B111111' 'B222222' 'B333333' 'B444444'    07120001
                             'B555555' 'B666666' 'B777777'.             07120001
                   88 :CLM:A-PROV-NUM-SERVICE-NOARC                     07110001
                       VALUE 'C111111' 'C222222' 'C333333' 'C444444'    07120001
                             'C555555' 'C666666' 'C777777' 'C888888'    07120001
                             'C999999' 'C101010' 'C121212' 'C131313'    07120001
                             'C141414' 'C151515' 'C161616' 'C171717     07120001
                             'C181818' 'C191919' 'C202020' 'C212121'    07120001
                             'C232323' 'C242424' 'C252525' 'C262626'.   07120001
                   88 :CLM:A-PROV-NUM-SERVICE-E111                      07110001
                       VALUE 'D111111' 'D222222' 'D333333' 'D444444'    07120001
                             'D555555' 'D666666' 'D777777' 'D888888'    07120001
                             'D999999' 'D101010' 'D121212' 'D131313'    07120001
                             'D141414' 'D151515' 'D161616' 'D171717'    07120001
                             'D181818'.                                 07120001
               10 :CLM:A-PROV-NUM-BILLING                PIC X(7).
                   88 :CLM:A-PROV-NUM-BILLING-PPP                       07180001
                       VALUE 'E111111'.                                 07190001
                   88 :CLM:A-PROV-NUM-BILLING-E125                      07180001
                       VALUE 'F111111' 'F222222'.                       07190001
                   88 :CLM:A-PROV-NUM-BILLING-DLVRY                     07191000
                       VALUE 'G111111' 'G222222' 'G333333' 'G444444'    07190001
                             'G555555' 'G666666'.                       07190001
               10 :CLM:A-PROV-NUM-SERVICE-NPI            PIC X(10).
               10 :CLM:A-PROV-NUM-BILLING-NPI            PIC X(10).
               10 :CLM:A-CURRENT-RECIP-ID-NUM            PIC X(12).
                   88 :CLM:A-CURR-RECIP-ID-NUM-DJS-X
                       VALUE 'AAAAAAAAAAAA' 'BBBBBBBBBBBB'
                             'CCCCCCCCCCCC' 'DDDDDDDDDDDD'
                             'EEEEEEEEEEEE' 'FFFFFFFFFFFF'              07240001
                             'GGGGGGGGGGGG'.                            07250001
               10  FILLER REDEFINES
                  :CLM:A-CURRENT-RECIP-ID-NUM.
                   15 :CLM:A-CURR-RECIP-ID-NUM-1ST-4.
                       20 :CLM:A-CURR-RECIP-ID-NUM-1ST-1 PIC X(01).
                       20  FILLER                        PIC X(03).
                   15  FILLER REDEFINES
                      :CLM:A-CURR-RECIP-ID-NUM-1ST-4.
                       20 :CLM:A-CURR-RECIP-ID-NUM-1-2   PIC X(02).
                           88 :CLM:A-CURR-RECIP-ID-CNTY-CN
                               VALUE '01' THRU '21'
                                     '31' THRU '39'
                                     '41' THRU '48'.
                           88 :CLM:A-CURR-RECIP-ID-CNTY-MN
                               VALUE '01' THRU '21'.
                           88 :CLM:A-CURR-RECIP-ID-CNTY-DJS
                               VALUE '01' THRU '21'.
                           88 :CLM:A-CURR-RECIP-ID-CNTY-BD
                               VALUE '23' '24' '25'.                    04900001
                           88 :CLM:A-CURR-RECIP-ID-CNTY-GA
                               VALUE '52' THRU '57'                     07450001
                                     '50'.                              07460001
                           88 :CLM:A-CURR-RECIP-ID-CNTY-PHRM
                               VALUE '58' THRU '79'                     07480001
                                     '51'.                              07490001
                       20 :CLM:A-CURR-RECIP-ID-NUM-3-4   PIC X(02).
                           88 :CLM:A-CURR-RECIP-ID-AID-CAT-CN
                               VALUE '10' '20' '30' '50'
                                     '60' '70' '80'.
                           88 :CLM:A-CURR-RECIP-ID-AID-CAT-MN
                               VALUE '15' '25' '35' '55'.
                           88 :CLM:A-CURR-RECIP-ID-AID-CAT-SR
                               VALUE '10' '20' '30' '50'
                                     '60' '70' '80'.
                           88 :CLM:A-CURR-RECIP-ID-AID-CAT-BD           05410001
                               VALUE '20' '30' '70'.                    05420001
                   15 :CLM:A-CURR-RECIP-ID-NUM-LAST-8    PIC X(08).
                   15  FILLER REDEFINES
                      :CLM:A-CURR-RECIP-ID-NUM-LAST-8.
                       20 :CLM:A-CURR-RECIP-ID-NUM-5-10  PIC X(06).
                           88 :CLM:A-CURR-RECIP-ID-CASE-NUM
                               VALUE '000001' THRU '999999'.
                       20 :CLM:A-CURR-RECIP-ID-NUM-11-12 PIC X(02).
                           88 :CLM:A-CURR-RECIP-ID-NUM-CN
                               VALUE '01' THRU '49'.
                           88 :CLM:A-CURR-RECIP-ID-NUM-MN
                               VALUE '01' THRU '49'.
                           88 :CLM:A-CURR-RECIP-ID-NUM-SR
                               VALUE '01' THRU '49'.
               10  FILLER REDEFINES
                  :CLM:A-CURRENT-RECIP-ID-NUM.
                   15 :CLM:A-RECIP-ID-NUM-FIRST-4.
                       20 :CLM:A-RECIP-ID-NUM-FIRST-1    PIC X(01).
                       20  FILLER                        PIC X(03).
                   15 :CLM:A-RECIP-ID-NUM-LAST-8         PIC X(08).
               10  FILLER REDEFINES :CLM:A-CURRENT-RECIP-ID-NUM.
                   15 :CLM:A-ECPS-PERCNT-ELIGBLE         PIC 9(03).
                   15  FILLER                            PIC X(09).
               10 :CLM:A-PAT-NAME-PART.
                   15 :CLM:A-PAT-LAST-NAME-PART          PIC X(5).
                   15 :CLM:A-PAT-FIRST-INIT              PIC X(1).
               10 :CLM:A-PAT-BIRTHDATE                   PIC 9(8).
               10 :CLM:A-NEWBORN-IND                     PIC X(1).
                   88 :CLM:A-VALID-NEWBORN-IND       VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-NEWBORN                 VALUE 'Y'.
                   88 :CLM:A-NOT-NEWBORN             VALUE 'N'.
               10 :CLM:A-SERVICE-CODE.
                   15 :CLM:A-NDC.
                       20 :CLM:A-NDC-FIRST-9             PIC X(9).
                           88 :CLM:A-NDC-FIRST9-RESPITE
                               VALUE  'H0045HA  '
                                      'H0045TV22'
                                      'H004522TV'
                                      'S9125HA52'
                                      'S912552HA'
                                      'T1005HA22'
                                      'T100522HA'
                                      'T1028HA  '
                                      'T1028  HA'
                                      'T1028HA22'
                                      'T102822HA'
                                      'T2013HA22'
                                      'T201322HA'.
                           88 :CLM:A-NDC-FIRST9-RESPITE-SPECL
                               VALUE  'S9125HA52'
                                      'S912552HA'
                                      'T1028  HA'
                                      'T1028HA  '
                                      'T1028HA22'
                                      'T102822HA'.
                       20 :CLM:A-NDC-LAST-2              PIC X(2).
                   15  FILLER                            PIC X(2).
               10 :CLM:A-PROC-MOD-RE REDEFINES :CLM:A-SERVICE-CODE.
                   15 :CLM:A-PROC-CDE                PIC X(5).
                           88 :CLM:A-PROC-CDE-CCBHC1                    06350001
                               VALUE 'T1041'.
                           88 :CLM:A-PROC-CDE-PHYDRUG                   07940001
                               VALUE 'J0120' THRU 'J9999'               07940001
                                     'Q0138' THRU 'Q0139'               07940001
                                     'Q0144' THRU 'Q0181'               07940001
                                     'Q0222'                            07940001
                                     'Q2009'                            07940001
                                     'Q2017'                            07940001
                                     'Q2041' THRU 'Q2043'               07940001
                                     'Q2049' THRU 'Q2051'               07940001
                                     'Q2053' THRU 'Q2056'               07940001
                                     'Q3025' THRU 'Q3028'               07940001
                                     'Q4074'                            07940001
                                     'Q4079' THRU 'Q4081'               07940001
                                     'Q5101'
                                     'Q5103' THRU 'Q5146'
                                     'Q9945' THRU 'Q9999'.              07940001
                           88 :CLM:A-PROC-CDE-ALLERGY                   07940001
                               VALUE '95004' '95010' '95015' '95024'    07950001
                                     '95028'.                           07960001
                           88 :CLM:A-PROC-CDE-ANESTHESIA                07940001
                               VALUE '00120' '00210' '00220' '00470'    07950001
                                     '01120' '01202'.                   07960001
                           88 :CLM:A-PROC-CDE-MEDIA7-PRODUCTS           07970001
                               VALUE 'J0596' 'J1786' 'J3060' 'J3385'    07980001
                                     'J7175' 'J7188'                    07980001
                                     'J0597' 'J0598' 'J7190' 'J7191'    07980001
                                     'J7185' 'J7186' 'J7189' 'J7193'    07980001
                                     'J7195' 'J7180' 'J7183' 'J7187'    07980001
                                             'J1324' 'J3485' 'J1290'    07980001
                                     'J0221' 'J0220' 'J1744' 'J3590'    07980001
                                     'J7192' 'J7194' 'J7198' 'Q0187'    07980001
                                     'Q9995' 'S0104' 'S0140'
                                     'C9132' 'C9136' 'J3535' 'J7181'
                                     'J7168'
                                     'J7200' 'J7201' 'J7639' 'J7682'
                                     'J8499' 'J0278' 'J1580' 'J3000'
                                     'J3260' 'J3490' 'J7202' 'J7608'
                                     'J7170' 'J7203' 'J7199' 'J7182'
                                     'J7205' 'J7207' 'J7209' 'J7210'
                                     'J7211' 'J7179' 'J7175' 'J2326'
                                     'J1428' 'J0599'
                                     'J7177' 'J7178' 'J7204' 'J7208'
                                     'J7212' 'Q9975'.
                           88 :CLM:A-PROC-CDE-CASH-GRANT                07990001
                               VALUE 'T2025' 'Y9833'.                   08170099
                           88 :CLM:A-PROC-CDE-CLIA-EXCLUDE              08010001
                               VALUE '80103' '80500' '81050' '80502'    08020001
                                     '80503' '80504' '80505' '80506'    08030001
                                     '82075' '84061' '85095' '85102'    08030001
                                     '86077' '86078' '86079' '86485'    08040001
                                     '86490' '86510' '86580' '86585'    08050001
                                     '86586' '86910' '86911' '88040'    08060001
                                     '88045' '88125' '88170' '88171'    08070001
                                     '88311' '88329' '89100' '89105'    08080001
                                     '89130' '89132' '89135' '89136'    08090001
                                     '89140' '89141' '89250' '89350'    08100001
                                     '80305'.                           08100001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-A              08110001
                               VALUE '78110' '78111' '78120' '78121'    08120001
                                     '78122' '78130' '78160' '78191'    08130001
                                     '78270' '78271' '78272'.           08140001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-B              08150001
                               VALUE '88312' '88313' '88314'.           08160001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-C              08170001
                               VALUE '86891' '86927' '86930' '86931'    08180001
                                     '86932' '86945' '86950' '86965'    08190001
                                     '86985' '86999'.                   08200001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-D              08210001
                               VALUE '81002' '81025' '82270' '82962'    08220001
                                     '83026' '84830' '85013' '85651'    08230001
                                     'G0001' '86328' '87426' '87806'.
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-E              08240001
                               VALUE 'G0328' '80061' '80101' '81003'
                                     '81007' '82010' '82044' '82055'
                                     '82120' '82273' '82274' '82465'
                                     '82523' '82570' '82679' '82947'
                                     '82948' '82950' '82951' '82952'
                                     '82985' '83001' '83002' '83036'
                                     '83518' '83605' '83718' '83986'
                                     '84450' '84460' '84478' '84703'
                                     '85014' '85018' '85610' '86294'
                                     '86308' '86318' '86588' '86618'
                                     '86683' '86701' '87072' '87077'
                                     '87210' '87449' '87804' '87880'
                                     '87899'.
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-F              08360001
                               VALUE 'G0054' THRU 'G0057'               08370001
                                     'Q0116'.                           08380001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-G              08390001
                               VALUE 'G0055' 'G0056' 'G0057' '81002'    08400001
                                     '81025' '82270' '82657' '82962'    08410001
                                     '83026' '84830' '85013' '85651'.   08420001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-H              08430001
                               VALUE 'Q0111' THRU 'Q0116'               08440001
                                     '81000' '81015'.                   08450001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-J              08460001
                               VALUE 'G0026' 'G0027' '89190'.           08470001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-K              08460001
                               VALUE '80178' '82271' '82272' '83037'    08470001
                                     '83721' '83880' '85576' '86703'    08470001
                                     '87521' '87807'.                   08470001
                           88 :CLM:A-PROC-CDE-CLIA-GROUP-L              08460001
                               VALUE 'G0434' '80104'.                   08470001
                           88 :CLM:A-PROC-CDE-CLIA-INCLUDE              08480001
                               VALUE '78110' '78111' '78121' '78122'    08490001
                                     '78130' '78160' '78191' '78270'    08500001
                                     '78271'.                           08510001
                           88 :CLM:A-PROC-CDE-DAILY-RENTAL              08520001
                               VALUE 'E0193' 'E0194' 'E0935' 'X0125'    08530001
                                     'X0128'.                           08540001
                           88 :CLM:A-PROC-CDE-DME-A                     08590001
                               VALUE 'A4000' THRU 'A9999'               08600001
                                     'B4000' THRU 'B9999'               08620001
                                     'E0000' THRU 'E9999'               08630001
                                     'J0120' THRU 'J9999'               08640001
                                     'K0001' THRU 'K9999'               08650001
                                     'Q0163' THRU 'Q0180'               08660001
                                     'Q9920'                            08690001
                                     'S5497' 'S5498' 'S5501' 'S5502'    08690001
                                     'T4521' THRU 'T4535'               08670001
                                     'X0000' THRU 'X2999'               08670001
                                     'X6000' THRU 'X8999'               08680001
                                     '94772'.                           08690001
                           88 :CLM:A-PROC-CDE-DME-B                     08590001
                               VALUE 'S9140' 'S9208' THRU 'S9379'       08690001
                                     'S9560' '59025' '99500'.           08690001
                           88 :CLM:A-PROC-CDE-DME-C                     08590001
                               VALUE 'V2615'.                           08690001
                           88 :CLM:A-PROC-CDE-EPSDT-ENCOUNTER           08710001
                               VALUE '99381' THRU '99385'               08720001
                                     '99391' THRU '99395'               08730001
                                     '99431' '99460'.                   08740001
                           88 :CLM:A-PROC-CDE-EPSDT-SCREEN-A            08770001
                               VALUE 'W9060' THRU 'W9070'               08780001
                                     'W9820'.                           08810001
                           88 :CLM:A-PROC-CDE-EPSDT-SCREEN-B            08820001
                               VALUE '99381' '99382' '99391' '99392'.   08980099
                           88 :CLM:A-PROC-CDE-EPSDT-SCREEN-C            08990099
                               VALUE '99383' '99384' '99385' '99393'    09000099
                                     '99394' '99395'.                   09010099
                           88 :CLM:A-PROC-FQHC-COVID-VACCINE            08840001
                               VALUE '0001A' '0002A' '0003A' '0004A'    08850001
                                     '0011A' '0012A' '0013A' '0021A'    08850001
                                     '0022A' '0031A' '0034A' '0051A'    08860001
                                     '0052A' '0053A' '0054A' '0064A'    08860001
                                     '0071A' '0072A' '0073A'.           08860001
                           88 :CLM:A-PROC-CDE-FQHC-ENCOUNTER            08840001
                               VALUE 'D0120' 'W9840' 'W9843' 'Y3333'    08850001
                                     '90844' 'T1015' 'G0470'.           08860001
                           88 :CLM:A-PROC-CDE-FQHC-DLVRY-PMNT           09010400
                               VALUE 'W9027' 'W9031' '59409' '59514'    09010500
                                     '59612' '59620'.                   09010600
                           88 :CLM:A-PROC-CDE-FQHC-GYN-PMNT             09010400
                               VALUE '49000' '51925' '57260' '57265'    09010500
                                     '57268' '57280' '57282' '57288'    09010500
                                     '58140' '58145' '58150' '58152'    09010500
                                     '58180' '58260' '58262' '58550'    09010500
                                     '58553' '58563' '58600' '58615'    09010500
                                     '58661' '58700' '58720' '58740'    09010500
                                     '58750' '58760' '58770' '58805'    09010500
                                     '58900' '58920' '58925' '58940'    09010500
                                     '58943' '59120' '59150' '59151'    09010600
                                     '59525' '59855' 'J7296' 'J7297'    09010600
                                     'J7298' 'J7300' 'J7301' 'J7302'    09010600
                                     'J7307'.                           09010600
                           88 :CLM:A-PROC-CDE-HEARING-AID               08870001
                               VALUE 'V5000' THRU 'V5999'               08880001
                                     'Y4000' THRU 'Y4999'               09010600
                                     'L8614' THRU 'L8624'               09010600
                                     'E1399'.                           09010700
                           88 :CLM:A-PROC-CDE-HIP-GROUP-A               08900001
                               VALUE 'Z1005' '59100' '59840' '59841'    08910001
                                     '59850' '59851' '59852'.           08920001
                           88 :CLM:A-PROC-CDE-HIP-GROUP-B               08930001
                               VALUE 'Z0330' 'Z0335'.                   08940001
                           88 :CLM:A-PROC-CDE-HIP-GROUP-C               08950001
                               VALUE 'Z5005' 'Z5006' 'Z5007'.           08960001
                           88 :CLM:A-PROC-CDE-HIP-GROUP-D               08970001
                               VALUE 'Y9533' THRU 'Y9539'               08980001
                                     'Y9543'.                           08990001
                           88 :CLM:A-PROC-CDE-HIP-GROUP-E               09000001
                               VALUE 'Z1610' THRU 'Z1617'               09010001
                                     'Y3533' 'Y3534' 'Z1600' 'Z1605'    09020001
                                     'S9122' 'T1001'.                   09020001
                           88 :CLM:A-PROC-CDE-HIP-GROUP-F               09030001
                               VALUE 'A0130' 'Y0002' 'Y0010' 'Y0060'    09040001
                                     'Y0065' 'Y0070' 'Y0075' 'Y0251'    09050001
                                     'Y0252' 'Y8333' 'Y8334' 'Y8335'    09060001
                                     'Y8336' 'Y8337' 'A0425'.           09070001
                           88 :CLM:A-PROC-CDE-HOMECARE                  09080001
                               VALUE 'T2042' THRU 'T2045'.              09112003
                           88 :CLM:A-PROC-CDE-HOSPICE                   09080001
                               VALUE 'Y6333' THRU 'Y6339' 'Y6343'       09112003
                                     'T2042' THRU 'T2046' 'Z2015'.      09113003
                           88 :CLM:A-PROC-CDE-HOSPICE-E315              09080001
                               VALUE 'Y6333' THRU 'Y6339' 'Y6343'       09112003
                             'G0299' 'T2042' THRU 'T2046' 'Z2015'.      09113003
                           88 :CLM:A-PROC-CDE-HOSPICE-PRICING           09120001
                               VALUE 'T2046' 'Y6337' 'Y6338' 'Z2015'.   09310099
                           88 :CLM:A-PROC-CDE-HOSPICE-COMPLY
                               VALUE 'T2042' THRU 'T2045' 'G0299'.
                           88 :CLM:A-PROC-CDE-INVALID-COACH             09150001
                               VALUE 'A0130' 'T2001' 'Y0002' 'Y0060'    09160001
                                     'Y0065' 'Y0070' 'A0425'.           09170001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-A               09180001
                               VALUE 'Z0330' 'Z0335'.                   09190001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-B               09200001
                               VALUE 'Z5005' 'Z5006' 'Z5007'.           09210001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-C               09220001
                               VALUE 'Y9533' THRU 'Y9539'               09230001
                                     'Y9543'.                           09240001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-D               09250001
                               VALUE 'Z1830' 'Z2006'.                   09260001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-E               09270001
                               VALUE 'Z1710' THRU 'Z1745'.              09280001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-F               09290001
                               VALUE 'Y8333' THRU 'Y8337'               09300001
                                     'Y0251' 'Y0252'.                   09310001
                           88 :CLM:A-PROC-CDE-MGS-GROUP-G               09320001
                               VALUE 'Y3533' 'Y3534'.                   09330001
                           88 :CLM:A-PROC-CDE-MIDWIFE                   09340001
                               VALUE 'W9031' '59514' '59620'.           09520099
                           88 :CLM:A-PROC-CDE-OUTPATIENT                09360001
                               VALUE 'G0054' THRU 'G0060'               09370001
                                     'P0000' THRU 'P9999'
                                     'Q0111' THRU 'Q0116'
                                     'W8000' THRU 'W8899'               09400001
                                     'W8901' THRU 'W8999'               09410001
                                     '80000' THRU '89999'               09420001
                                     'G0001' 'G0026' 'G0027' 'G0123'
                                     'G0141' 'G0306' 'G0307' 'G0328'
                                     'G0430' 'G0431' 'G0461' 'G0462'
                                     'G0477' 'G0478' 'G0479' 'G0480'
                                     'G0481' 'G0482' 'G0483' 'G0659'
                                     'G2023' 'G2024'
                                     'G9784' 'G9785' 'G9786' 'G9806'
                                     'G9823' 'G9824' 'G9840' 'G9841'
                                     '36415' '36416' '36430' '36440'
                                     '36450' '36455' '36460' '0023T'
                                     'S9529' 'G0434' 'G9843' 'U0001'
                                     'U0002' 'U0003' 'U0004' 'C9803'
                                     'U0005'.
                           88 :CLM:A-PROC-CDE-EPOGEN
                               VALUE 'J0886' 'Q4055' 'Q4081'.
                           88 :CLM:A-PROC-CDE-PART-B-PRICING            09460001
                               VALUE 'A0420' 'A0422' 'A0425' 'A0427'    09470001
                                     'A0428' 'A0429' 'A0430' 'A0433'    09470001
                                     'A0434' 'Y0004'.                   09521300
                           88 :CLM:A-PROC-CDE-P-AND-O                   09490001
                               VALUE 'K0556' THRU 'K0559'               09500001
                                     'K0628' THRU 'K0649'               09500001
                                     'L0100' THRU 'L9999'               09510001
                                     'X3000' THRU 'X4999'               09520001
                                     '99082' '99241'.                   09530001
                           88 :CLM:A-PROC-CDE-PDN                       09540001
                               VALUE 'S9123' 'S9124' 'Z1710' 'Z1715'    09550001
                                     'Z1720' 'Z1725' 'Z1730' 'Z1735'    09730099
                                     'Z1740' 'Z1745'.                   09570001
                           88 :CLM:A-PROC-CDE-PPP                       09580001
                               VALUE 'Z1600' THRU 'Z1609'               09590001
                                     'Z1614' THRU 'Z1617'               09600001
                                     'S9122' 'Z1611' 'Z1612' 'T1001'.   09610001
                           88 :CLM:A-PROC-CDE-PPP-PERS-CARE             09620001
                               VALUE 'Z1610' THRU 'Z1613'               09630001
                                     'S9122' 'T1001'.                   09640001
                           88 :CLM:A-PROC-CDE-RADIOLOGY                 09650001
                               VALUE 'R0000' THRU 'R5999'               09660001
                                     'W7000' THRU 'W7999'               09670001
                                     '70000' THRU '79999'.              09680001
                           88 :CLM:A-PROC-CDE-SAI-A                     09690001
                               VALUE 'Z3333' THRU 'Z3339'               05560000
                                     'Z3343' THRU 'Z3349'               05570000
                                     'Z3353' THRU 'Z3359'               05580000
                                     'Z3363'.                           05590000
                           88 :CLM:A-PROC-CDE-SAI-B                     09740001
                               VALUE 'H0001' 'H0003' 'H0010' 'H0018'    09920099
                                     'H0020' 'H0026' 'H0035' 'H0047'    09930099
                                     'H2012' 'H2034' 'S9475' 'T1006'    09940099
                                     'T2022' '90804' '90806' '90853'    09950099
                                     '90862' '96100'.                   09960099
                           88 :CLM:A-PROC-CDE-SAI-C                     09740001
                               VALUE '90832' '90834'                    09920099
                                     '99201' THRU '99215'.              09960099
                           88 :CLM:A-PROC-CDE-SEMI                      06300001
                               VALUE 'Y9333' THRU 'Y9337'               09820001
                                     'Y9433' THRU 'Y9439'               06330002
                                     'Y3533' 'Y3534' 'Y9735'.           09840001
                           88 :CLM:A-PROC-CDE-VACCINES-OLD              09961501
                               VALUE '90712' '90659' 'W9098' 'W9335'.   09961600
                           88 :CLM:A-PROC-CDE-VACCINE-DISC
                               VALUE '90702'.                           09961800
                           88 :CLM:A-PROC-CDE-VACCINES                  06350001
                               VALUE '90632' '90633' '90647' '90648'    09961800
                                     '90655' '90656' '90657' '90658'    09890001
                                     '90669' '90672' '90680' '90700'    09962000
                                     '90702' '90707' '90710' '90713'    09962000
                                     '90714' '90715' '90716' '90723'    09962000
                                     '90732' '90743' '90744' '90746'    09962000
                                     '90748'.                           09962000
                           88 :CLM:A-PROC-CDE-VACCINE-AGE               06350001
                               VALUE '90734'.
                           88 :CLM:A-PROC-CDE-E006                      09950001
                               VALUE 'V5014' 'V5266' 'Y4200' 'Y4400'.   09960001
                           88 :CLM:A-PROC-CDE-E032                      09990001
                               VALUE 'G0026' 'G0027' 'G0054' 'P6915'    10000001
                                     '36415'.                           10010001
                           88 :CLM:A-PROC-CDE-E034                      10020001
                               VALUE 'P9615' '36415'.                   10030001
                           88 :CLM:A-PROC-CDE-E035                      10040001
                               VALUE 'T2043' 'Y6334' 'Y6343'.           10052003
                           88 :CLM:A-PROC-CDE-E086                      10060001
                               VALUE 'A0380' 'A0425' 'Y0004'.           10210099
                           88 :CLM:A-PROC-CDE-E095-A                    10080001
                               VALUE 'W9069' 'W9070'.                   10230099
                           88 :CLM:A-PROC-CDE-E095-B                    10240086
                               VALUE '99381' THRU '99385'               10090001
                                     '99391' THRU '99395'.              10260099
                           88 :CLM:A-PROC-CDE-E111                      10270099
                               VALUE 'Y8363' THRU 'Y8370'               10150001
                                     'A0425' 'T2002' 'T2003'.           10290099
                           88 :CLM:A-PROC-CDE-E112-A                    10190001
                               VALUE 'Y9834' THRU 'Y9839'               10200001
                                     'Y9843' THRU 'Y9849'               10210001
                                     'Y9853' THRU 'Y9856'               10220001
                                     'S5120' 'S5125' 'S5160' 'S5161'    10340099
                                     'S5170'.                           10350099
                           88 :CLM:A-PROC-CDE-E112-B                    10270001
                               VALUE 'S5120' 'S5125'.                   10370099
                           88 :CLM:A-PROC-CDE-E112-C                    10380099
                               VALUE 'Z0330' 'Z0335'.                   10390099
                           88 :CLM:A-PROC-CDE-E148                      10290001
                               VALUE 'T2044' 'Y6335'.                   10300001
                           88 :CLM:A-PROC-CDE-E160                      10310001
                               VALUE '00100' '00102' '00103' '00104'    10320001
                             '00120' '00124' '00126' '00140' '00142'    10320001
                             '00144' '00145' '00147' '00148' '00160'    10320001
                             '00162' '00164' '00170' '00172' '00174'    10320001
                             '00176' '00190' '00192' '00210' '00212'    10320001
                             '00214' '00215' '00216' '00218' '00220'    10320001
                             '00222' '00300' '00320' '00322' '00350'    10320001
                             '00352' '00400' '00402' '00404' '00406'    10320001
                             '00410' '00450' '00452' '00454' '00470'    10320001
                             '00472' '00474' '00500' '00520' '00522'    10320001
                             '00524' '00528' '00529' '00530' '00532'    10320001
                             '00534' '00537' '00540' '00542' '00544'    10320001
                             '00546' '00548' '00550' '00560' '00562'    10320001
                             '00563' '00566' '00580' '00600' '00604'    10320001
                             '00620' '00622' '00630' '00632' '00634'    10320001
                             '00635' '00670' '00700' '00702' '00730'    10320001
                             '00740' '00750' '00752' '00754' '00756'    10320001
                             '00770' '00790' '00792' '00794' '00796'    10320001
                             '00797' '00800' '00802' '00810' '00820'    10320001
                             '00830' '00832' '00840' '00842' '00844'    10320001
                             '00846' '00848' '00850' '00851' '00855'    10320001
                             '00857' '00860' '00862' '00864' '00865'    10320001
                             '00866' '00868' '00869' '00870' '00872'    10320001
                             '00873' '00880' '00882' '00884' '00902'    10320001
                             '00904' '00906' '00908' '00910' '00912'    10320001
                             '00914' '00916' '00918' '00920' '00922'    10320001
                             '00924' '00926' '00928' '00930' '00932'    10320001
                             '00934' '00936' '00938' '00940' '00942'    10320001
                             '00944' '00946' '00948' '00950' '00952'    10320001
                             '00955' '01112' '01120' '01130' '01140'    10320001
                             '01150' '01160' '01170' '01173' '01180'    10320001
                             '01190' '01200' '01202' '01210' '01212'    10320001
                             '01214' '01215' '01220' '01230' '01232'    10320001
                             '01234' '01250' '01260' '01270' '01272'    10320001
                             '01274' '01320' '01340' '01360' '01380'    10320001
                             '01382' '01390' '01392' '01400' '01402'    10320001
                             '01404' '01420' '01430' '01432' '01440'    10320001
                             '01442' '01444' '01462' '01464' '01470'    10320001
                             '01472' '01474' '01480' '01482' '01484'    10320001
                             '01486' '01490' '01500' '01502' '01520'    10320001
                             '01522' '01610' '01620' '01622' '01630'    10320001
                             '01632' '01634' '01636' '01638' '01650'    10320001
                             '01652' '01654' '01656' '01670' '01680'    10320001
                             '01682' '01710' '01712' '01714' '01716'    10320001
                             '01730' '01732' '01740' '01742' '01744'    10320001
                             '01756' '01758' '01760' '01770' '01772'    10320001
                             '01780' '01782' '01810' '01820' '01830'    10320001
                             '01832' '01840' '01842' '01844' '01850'    10320001
                             '01852' '01860' '01904' '01905' '01906'    10320001
                             '01908' '01910' '01912' '01914' '01916'    10320001
                             '01918' '01920' '01921' '01922' '01924'    10320001
                             '01925' '01926' '01930' '01931' '01932'    10320001
                             '01933' '01951' '01952' '01953' '01960'    10320001
                             '01961' '01962' '01963' '01964' '01967'    10320001
                             '01968' '01969' '01995' '01999'.           10320001
                           88 :CLM:A-PROC-CDE-E203                      10330001
                               VALUE 'Y0251' 'Y0252'.                   10340001
                           88 :CLM:A-PROC-CDE-E210-E221-A               10350001
                               VALUE 'P0000' THRU 'P9999'               10360001
                                     'Q0111' THRU 'Q0116'               10370001
                                     'W8000' THRU 'W8899'               10380001
                                     'W8901' THRU 'W8999'               10390001
                                     '80000' THRU '89999'               10510099
                                     'G0001' '0023T' 'S9529'
                                     'U0001' 'U0002' 'U0003'
                                     'U0004' 'G2023' 'G2024'
                                     'C9803' 'U0005'.
                           88 :CLM:A-PROC-CDE-E210-E221-B               10410001
                               VALUE 'D9220' 'D9221' '09220'.           10420001
                           88 :CLM:A-PROC-CDE-E210-E221-C               10430001
                               VALUE 'A0010' THRU 'A0999'               10570099
                                     'Y8333' THRU 'Y8337'               10460001
                                     'Y8343' THRU 'Y8349'               10470001
                                     'Y8363' THRU 'Y8370'               10600001
                                     'T2001' 'T2002' 'Y0002' 'Y0004'    10490001
                                     'Y0005' 'Y0010' 'Y0060' 'Y0065'    10500001
                                     'Y0070' 'Y0075' 'Y0250' 'Y0251'    10570601
                                     'Y0252' 'Y0255' 'Y0260' 'Y8338'
                                     'Y8339'.                           10520001
                           88 :CLM:A-PROC-CDE-E214-A                    10640001
                               VALUE 'W9025' THRU 'W9031'.              10740099
                           88 :CLM:A-PROC-CDE-E214-B                    10680001
                               VALUE 'W9027' 'W9029' 'W9030' 'W9031'.   10760099
                           88 :CLM:A-PROC-CDE-E214-C                    10700001
                               VALUE 'W9040' THRU 'W9043'.              10780044
                           88 :CLM:A-PROC-CDE-E214-D                    10720001
                               VALUE 'W9060' THRU 'W9070'.              10800099
                           88 :CLM:A-PROC-CDE-E214-E                    10740001
                               VALUE '99381' '99382' '99391' '99392'.   10790001
                           88 :CLM:A-PROC-CDE-E219                      10870001
                               VALUE 'H0035' 'Z0150' 'Z0160' 'Z0170'    10880001
                                     'Z0180'.                           10890001
                           88 :CLM:A-PROC-CDE-E221                      10900001
                               VALUE 'B9004' 'B9006' 'E0193' 'E0194'    10910001
                                     'E0424' 'E0431' 'E0434' 'E0452'    10920001
                                     'E0601' 'E0781' 'E0791' 'E0935'    10930001
                                     'E1377' 'E1378' 'E1379' 'E1380'    10940001
                                     'E1381' 'E1382' 'E1383' 'E1385'.   10950001
                           88 :CLM:A-PROC-CDE-E231                      10920099
                               VALUE 'Y9533' THRU 'Y9539'.              10930099
                           88 :CLM:A-PROC-CDE-E233                      11010001
                               VALUE '76090' '76091' '76092'            11020001
                                     '77051' '77052'
                                     '77055' '77056' '77057'
                                     'G0202' 'G0204' 'G0206'.
                           88 :CLM:A-PROC-CDE-E236                      11030001
                               VALUE '90000' THRU '99999'               11040001
                                     'Z0170' 'Z0180' 'G2066'.           11050001
                           88 :CLM:A-PROC-CDE-E237                      10990099
                               VALUE 'A4314' 'A4357'.                   11000099
                           88 :CLM:A-PROC-CDE-E246                      11060001
                               VALUE '99150' '99151' '99160'.           11070001
                           88 :CLM:A-PROC-CDE-E249-E250                 11030099
                               VALUE 'A4649' 'B9989' 'B9999' 'E1399'.   11040099
                           88 :CLM:A-PROC-CDE-E251                      11080001
                               VALUE 'L3000' THRU 'L3003'               11090001
                                     'L3215' THRU 'L3223'
                                     'L3201' THRU 'L3207'               11110001
                                     'L3010' 'L3020' 'L3030' 'L3040'    11120001
                                     'L3050' 'L3060' 'L3070' 'L3080'    11130001
                                     'L3090' 'L3230' 'L3250' 'L3252'    11140001
                                     'L3253' 'L3265'.                   11140001
                           88 :CLM:A-PROC-CDE-E254                      11150001
                               VALUE 'D2110' 'D2120' 'D2130' 'D2131'    11160001
                                     'D2330' 'D2331' 'D2332' 'D2335'    11170001
                                     '02110' '02120' '02130' '02131'    11180001
                                     '02330' '02331' '02332' '02335'.   11190001
                           88 :CLM:A-PROC-CDE-E258                      11200001
                               VALUE 'T1000' THRU 'T9999'               11210001
                                     'W1000' THRU 'W6999'               11220001
                                     '10000' THRU '69999'               11230001
                                     '90870'.                           11240001
                           88 :CLM:A-PROC-CDE-E262-A                    11250001
                               VALUE '99241' THRU '99245'               11260001
                                     '99251' THRU '99255'               11270001
                                     '99271' THRU '99275'               11280001
                                     '90600' '90605' '90610'.           11290001
                           88 :CLM:A-PROC-CDE-E262-B                    11310001
                               VALUE '90653' '99274'.                   11320001
                           88 :CLM:A-PROC-CDE-E265                      11330001
                               VALUE 'J2790' 'V2630' 'V2631' 'V2632'    11340001
                                     'V2785' '99070'.                   11350001
                           88 :CLM:A-PROC-CDE-E269-A                    11360001
                               VALUE 'T1000' THRU 'T9999'               11370001
                                     'W1000' THRU 'W6999'               11380001
                                     '10000' THRU '69999'               11390001
                                     'W9027' 'W9029' 'W9030' 'W9031'    11400001
                                     '90870'.                           11380099
                           88 :CLM:A-PROC-CDE-E269-B                    11420001
                               VALUE '36000' THRU '36004'               11430001
                                     '36006' THRU '36015'               11440001
                                     '36400' THRU '36425'               11450001
                                     '36488' THRU '36491'               11460001
                                     '62273' THRU '62282'               11470001
                                     '64400' THRU '64530'               11480001
                                     '64600' THRU '64680'               11490001
                                     '20550' '20600' '20605' '20610'    11500001
                                     '31500' '36620' '62288' '62289'    11510001
                                     '62293'.                           11520001
                           88 :CLM:A-PROC-CDE-E1270                     11550001
                               VALUE '76510' THRU '76529'               11560001
                                     '76801' THRU '76817'.              11560001
                           88 :CLM:A-PROC-CDE-E275                      11550001
                               VALUE '70000' THRU '79999'.              11560001
                           88 :CLM:A-PROC-CDE-E278                      11570001
                               VALUE '59855' '59856'.                   11580001
                           88 :CLM:A-PROC-CDE-E285                      11610001
                               VALUE 'Y6339' 'Y6343'.                   11620001
                           88 :CLM:A-PROC-CDE-E289                      11610001
                               VALUE 'G0000' THRU 'G9999'               11950001
                                     '10000' THRU '69999'               11950001
                                     '80000' THRU '89999'               11950001
                                     '91000' THRU '97799'.              11950001
                           88 :CLM:A-PROC-CDE-E358-A                    11630001
                               VALUE '42820' '42821' '42825' '42826'    11640001
                                     '42831' '42835' '42836' '42870'.   11650001
                           88 :CLM:A-PROC-CDE-E358-B                    11660001
                               VALUE '42830' '42860' '47600' '47605'    11670001
                                     '47610' '47612' '47620' '49580'.   11680001
                           88 :CLM:A-PROC-CDE-E358-C                    11690001
                               VALUE '22548' '22554' '22558' '22585'    11700001
                                     '22590' '22595' '22610' '22612'    11710001
                                     '22630' '22650' '22810' '22812'    11720001
                                     '58152' '63020' '63030' '63035'    11730001
                                     '63045' '63046' '63047' '63048'    11740001
                                     '63055' '63056' '63057' '63064'    11750001
                                     '63066' '63076' '63081' '63082'    11760001
                                     '63085' '63086' '63087' '63088'    11770001
                                     '63090' '63091' '63170' '63172'    11780001
                                     '63173' '63180' '63182' '63185'    11790001
                                     '63190' '63191' '63194' '63195'    11800001
                                     '63196' '63197' '63198' '63199'    11810001
                                     '63250' '63251' '63252' '63265'    11820001
                                     '63266' '63267' '63268' '63270'    11830001
                                     '63271' '63272' '63273' '63011'.   11840001
                           88 :CLM:A-PROC-CDE-E358-D                    11850001
                               VALUE '63020' '63030' '63191'.           11860001
                           88 :CLM:A-PROC-CDE-E358-E                    11870001
                               VALUE '49585' '56316' '56317'.           11880001
                           88 :CLM:A-PROC-CDE-E359                      11820099
                               VALUE '22840' THRU '22843'               11950001
                                     '22845' THRU '22848'               11960001
                                     '22556' '22800' '22802' '22804'    11970001
                                     '22808' '22830' '49505' '49510'    11860099
                                     '49515' '49520' '49525' '49550'    11870099
                                     '49552' '49555' '49560' '49565'    11880099
                                     '49570' '49575' '49581' '49590'    11890099
                                     '49591' '49593' '49595' '49600'
                                     '49605' '49606' '49610' '49611'
                                     '49613' '49615' '49617'
                                     '49650' '49651' '49652' '49654'    11900099
                                     '49656' '63077' '63078' '63200'.   11910099
                           88 :CLM:A-PROC-CDE-E374                      12010001
                               VALUE 'H0035' 'Z0170'.                   12020001
                           88 :CLM:A-PROC-CDE-E382                      12030001
                               VALUE '92571' THRU '92578'               12040001
                                     '97010' THRU '97039'               12050001
                                     '97110' THRU '97541'               12060001
                                     'H5300' 'W9740' 'W9730' 'Z0280'    12070001
                                     '92506' '92507' '92508' '92555'    12080001
                                     '92556' '92557'.                   12090001
                           88 :CLM:A-PROC-CDE-E390                      12100001
                               VALUE 'T2042' 'T2043' 'T2044' 'T2045'    12112003
                                     'Y6333' 'Y6334' 'G0299'.
                           88 :CLM:A-PROC-CDE-E408                      12120001
                               VALUE 'Z1851'.                           12130001
                           88 :CLM:A-PROC-CDE-E409-A                    12050099
                               VALUE 'L5000' THRU 'L9999'               12150001
                                     'X3000' THRU 'X3999'.              12160001
                           88 :CLM:A-PROC-CDE-E409-B                    12080099
                               VALUE 'K0628' THRU 'K0649'               12090099
                                     'L0100' THRU 'L4999'               12090099
                                     'X4000' THRU 'X4999'.              12100099
                           88 :CLM:A-PROC-CDE-E410                      12170001
                               VALUE '70000' THRU '79999'               12180001
                                     '99281' THRU '99285'.              12190001
                           88 :CLM:A-PROC-CDE-E411                      12200001
                               VALUE 'Y9533' THRU 'Y9539'               12210001
                                     'Y9543'.                           12220001
                           88 :CLM:A-PROC-CDE-E422                      12230001
                               VALUE 'D8080' 'Y2910'.                   12240001
                           88 :CLM:A-PROC-CDE-E539                      12250001
                               VALUE 'Y8363' THRU 'Y8370'               12260001
                                     'A0425' 'Y8336' 'Y8337'.           12270001
                           88 :CLM:A-PROC-CDE-PACT-AMHR                 12280001
                               VALUE 'Z1600' THRU 'Z1617'               12290001
                                     'Z7333' THRU 'Z7338'               12300001
                                     'Y9833' 'S9122' 'T1001'.           12310001
                           88 :CLM:A-PROC-CDE-PERSNL-CARE-MH            12320001
                               VALUE 'Z1610' THRU 'Z1613'               12330001
                                     'Z1600' 'Z1605' 'S9122' 'T1001'.   12340001
                           88 :CLM:A-PROC-CDE-E1215-BYPASS              12340001
                               VALUE 'J3490' 'J3590' 'J9999'.           12340001
                           88 :CLM:A-PROC-CDE-E1337  VALUE              12340001
                                    'G0104' 'G0127' 'G0392' 'G0393'
                                    '0190T' '0191T' '0192T'
                                    '10000' THRU    '69999'.
                           88 :CLM:A-PROC-CDE-SURG                      11360001
                               VALUE '10000' THRU '69999'               11370001
                                     'W0000' THRU 'W6999'               11390001
                                     '90870' 'W9027' 'W9029'            11390001
                                     'W9030' 'W9031' '92511' '93454'    11400001
                                     '93458' '97597' '93312'.           11400001
                           88 :CLM:A-PROC-CDE-E263   VALUE
                                    '59400', '59510', '59610', '59618',
                                    'W9030'.
                           88 :CLM:A-PROC-CDE-E242-BYPASS  VALUE
                                    'Z1605', 'Z1611', 'Z1612', 'Z1615',
                                    'Z1616', 'Z1617'.
                           88 :CLM:A-PROC-CDE-ABA          VALUE
                                   '97151' '97152' '97153' '97154'
                                   '97155' '97156' '97157' '97158'
                                   '0362T' '0373T'.
                           88 :CLM:A-PROC-CDE-EVV-2023-GRP1
                              VALUE '97597'
                                    '99601'
                                    '99602'
                                    'G0153'
                                    'G0155'
                                    'G0300'
                                    'G0299'
                                    'S9122'
                                    'S9123'
                                    'S9124'
                                    'S9127'
                                    'T1000'
                                    'T1002'
                                    'T1003'
                                    'T1030'
                                    'T1031'.
                           88 :CLM:A-PROC-CDE-EVV-2023-GRP2
                              VALUE '92507'
                                    '97110'
                                    '97129'
                                    '97130'
                                    '97535'
                                    'G0151'
                                    'G0152'
                                    'S9128'
                                    'S9129'
                                    'S9131'.
                           88 :CLM:A-PROC-CDE-EVV-2023-GRP3
                              VALUE '97151'
                                    '97152'
                                    '97153'
                                    '97154'
                                    '97155'
                                    '97156'
                                    '97157'
                                    '97158'
                                    '0362T'
                                    '0373T'.
                           88 :CLM:A-PROC-CDE-DIABETES
                              VALUE   '0403T' 'G9880' 'G9881'
                                      'G0108' 'G0109'
                                      '97802' '97803' '97804'.
                           88 :CLM:A-PROC-CDE-DIABETES-NDPP
                              VALUE   '0403T' 'G9880' 'G9881'.
                           88 :CLM:A-PROC-CDE-DIABETES-DSMES
                              VALUE   'G0108' 'G0109'.
                           88 :CLM:A-PROC-CDE-DIABETES-MNT
                              VALUE   '97802' '97803' '97804'.
                   15 :CLM:A-PROC-CDE-RE REDEFINES :CLM:A-PROC-CDE.
                       20 :CLM:A-PROC-CDE-FIRST-4        PIC X(4).
                          88 :CLM:A-PROC-CDE-FIRST4-NUM
                          VALUE '0000' THRU '9999'.
                       20 :CLM:A-PROC-CDE-LAST-1         PIC X(1).
                          88 :CLM:A-PROC-CDE-LAST1-ALPHA
                          VALUE 'U' 'M'.
                   15 :CLM:A-PROC-MOD                    PIC X(2).
                       88 :CLM:A-PROC-MOD-REGION                        12340001
                           VALUE '01' THRU '13'.                        12340001
                       88 :CLM:A-PROCMOD1-HOSPICE-REGION
                           VALUE '01' THRU '10'.
                   15 :CLM:A-PROC-MOD-SECOND             PIC X(2).
                       88 :CLM:A-PROCMOD2-HOSPICE-REGION
                           VALUE '01' THRU '10'.
                   15 :CLM:A-PROC-MOD-THIRD              PIC X(2).
                   15 :CLM:A-PROC-MOD-FOURTH             PIC X(2).
               10 :CLM:A-SERVICE-CODE-RE REDEFINES :CLM:A-SERVICE-CODE.
                   15 :CLM:A-SERVICE-CODE-9              PIC X(9).
                       88 :CLM:A-SERVICE-CODE-EVV-PCA
                           VALUE  'T1019    '
                                  'T1019HQ  '
                                  'T1019  HQ'
                                  'T1020    '
                                  'S5130    '
                                  'S5130HQ  '
                                  'S5130  HQ'
                                  'T1005    '
                                  'T1019TN  '
                                  'T1019  TN'.
                       88 :CLM:A-SERVICE-CODE-EVV-PPP
                           VALUE  'T1019SE  '
                                  'T1019  SE'
                                  'T1019SEU1'
                                  'T1019U1SE'
                                  'S5125SEHQ'
                                  'S5125HQSE'
                                  'S5125SEU3'
                                  'S5125U3SE'.
                       88 :CLM:A-SERVICE-CODE-EVV-DDD
                           VALUE  'H2016HI  '
                                  'H2016  HI'
                                  'H2016HI22'
                                  'H201622HI'
                                  'H2016HIU8'
                                  'H2016U8HI'
                                  'T1005HI  '
                                  'T1005  HI'
                                  'T1005HIU8'
                                  'T1005U8HI'
                                  'H2021HI  '
                                  'H2021  HI'
                                  'H2021HI22'
                                  'H202122HI'
                                  'H2021HI52'
                                  'H202152HI'.
                       88 :CLM:A-SERVICE-CODE-EVV-CSOC
                           VALUE  'H2015HM  '
                                  'H2015  HM'
                                  'H2015HAHN'
                                  'H2015HNHA'
                                  'H2015HAHO'
                                  'H2015HOHA'
                                  'H2016HAHN'
                                  'H2016HNHA'
                                  'H2016HAHO'
                                  'H2016HOHA'
                                  'T2021HAHN'
                                  'T2021HNHA'
                                  'T2021HAHO'
                                  'T2021HOHA'
                                  'S9125HA52'
                                  'S912552HA'
                                  'H0031HA  '
                                  'H0031  HA'
                                  'H0031HA22'
                                  'H003122HA'
                                  'H0031HAHP'
                                  'H0031HPHA'
                                  '96158HA  '
                                  '96158  HA'
                                  '96159HA  '
                                  '96159  HA'.
                       88 :CLM:A-SRV-CODE-EVV-CSOC-BDLD
                           VALUE  'H2015HAHN'
                                  'H2015HNHA'
                                  'H2016HAHN'
                                  'H2016HNHA'
                                  'T2021HAHN'
                                  'T2021HNHA'
                                  'T2021HAHO'
                                  'T2021HOHA'
                                  'H0031HA  '
                                  'H0031  HA'
                                  'H0031HA22'
                                  'H003122HA'
                                  '96158HA  '
                                  '96158  HA'
                                  '96159HA  '
                                  '96159  HA'.
                       88 :CLM:A-SRV-CODE-EVV-2023-GRP3
                          VALUE   '96156EP  '
                                  '96156  EP'
                                  '96158EP  '
                                  '96158  EP'
                                  '96159EP  '
                                  '96159  EP'
                                  '96164EP  '
                                  '96164  EP'
                                  '96165EP  '
                                  '96165  EP'
                                  '96167EP  '
                                  '96167  EP'
                                  '96168EP  '
                                  '96168  EP'
                                  '96170EP  '
                                  '96170  EP'
                                  '96171EP  '
                                  '96171  EP'.
                       88 :CLM:A-SRV-CODE-EVV-2023-GRP4
                           VALUE  '97535HI  '
                                  '97535  HI'
                                  '97535HIUN'
                                  '97535UNHI'
                                  'S8990HI  '
                                  'S8990  HI'
                                  'S8990HIUN'
                                  'S8990UNHI'
                                  '92507HI  '
                                  '92507  HI'
                                  '92507HIUN'
                                  '92507UNHI'
                                  'H0004HI22'
                                  'H000422HI'
                                  'H0004HI  '
                                  'H0004  HI'.
                       88 :CLM:A-PROC-CDE-FQHC-OBAT
                          VALUE   '90792HF  '
                                  '90792  HF'
                                  '90792HFSA'
                                  '90792SAHF'
                                  '90792HFGT'
                                  '90792GTHF'
                                  '90792HF95'
                                  '9079295HF'
                                  'H0038HF  '
                                  'H0038  HF'
                                  '99202HF  ' THRU '99205HF  '
                                  '99202  HF' THRU '99205  HF'
                                  '99211HF  ' THRU '99215HF  '
                                  '99211  HF' THRU '99215  HF'.
                     88 :CLM:A-PROC-CDE-FQHC-OBAT-PAY
                          VALUE   '90792HF  '
                                  '90792  HF'
                                  '90792HFSA'
                                  '90792SAHF'
                                  '90792HFGT'
                                  '90792GTHF'
                                  '90792HF95'
                                  '9079295HF'
                                  'H0038HF  '
                                  'H0038  HF'.
                     88 :CLM:A-PROC-CDE-EPSDT-INCENTIVE                 08750001
                          VALUE   'W9828    '                           08760001
                                  'W9828EP  '                           08760001
                                  'W9828  EP'                           08760001
                                  '99429  EP'                           08760001
                                  '99429EP  '.                          08760001
                      88 :CLM:A-SERVICE-CODE-E314
                           VALUE  'H0046TJ  '
                                  'H0046  TJ'
                                  'T2022HA  '
                                  'T2022  HA'
                                  'T2023TJ  '
                                  'T2023  TJ'
                                  'S9485TJ  '
                                  'S9485  TJ'
                                  'Z5008    '.
                      88 :CLM:A-SERVICE-CODE-DIR
                           VALUE  '96156EP  '
                                  '96156  EP'
                                  '96156EP26'
                                  '9615626EP'
                                  '96158EP  ' '96159EP  '
                                  '96158  EP' '96159  EP'
                                  '96158EPHM' '96159EPHM'
                                  '96158HMEP' '96159HMEP'
                                  '96158EPHN' '96159EPHN'
                                  '96158HNEP' '96159HNEP'
                                  '96158EPHO' '96159EPHO'
                                  '96158HOEP' '96159HOEP'
                                  '96158EPHP' '96159EPHP'
                                  '96158HPEP' '96159HPEP'
                                  '96164EP  ' '96165EP  '
                                  '96164  EP' '96165  EP'
                                  '96164EPHM' '96165EPHM'
                                  '96164HMEP' '96165HMEP'
                                  '96164EPHN' '96165EPHN'
                                  '96164HNEP' '96165HNEP'
                                  '96164EPHO' '96165EPHO'
                                  '96164HOEP' '96165HOEP'
                                  '96164EPHP' '96165EPHP'
                                  '96167EP  ' '96168EP  '
                                  '96167  EP' '96168  EP'
                                  '96167EPHM' '96168EPHM'
                                  '96167HMEP' '96168HMEP'
                                  '96167EPHN' '96168EPHN'
                                  '96167HNEP' '96168HNEP'
                                  '96167EPHO' '96168EPHO'
                                  '96167HOEP' '96168HOEP'
                                  '96167EPHP' '96168EPHP'
                                  '96170EP  ' '96171EP  '
                                  '96170  EP' '96171  EP'
                                  '96170EPHM' '96171EPHM'
                                  '96170HMEP' '96171HMEP'
                                  '96170EPHN' '96171EPHN'
                                  '96170HNEP' '96171HNEP'
                                  '96170EPHO' '96171EPHO'
                                  '96170HOEP' '96171HOEP'
                                  '96170EPHP' '96171EPHP'.
                      88 :CLM:A-PROC-CDE-SAI-D
                           VALUE  '90791HFHV' '90791HVHF'
                                  'H0010HFHV' 'H0010HVHF'
                                  'H0018HFHV' 'H0018HVHF'
                                  'H0019HFHV' 'H0019HVHF'
                                  'H2034HFHV' 'H2034HVHF'
                                  'H2036HFHV' 'H2036HVHF'
                                  'H0015HFHV' 'H0015HVHF'
                                  '90847HFHV' '90847HVHF'
                                  '90853HFHV' '90853HVHF'
                                  '90792HFHV' '90792HVHF'
                                  '99213HFHV' '99213HVHF'
                                  'H0020HGHV' 'H0020HVHG'
                                  'H0003HFHV' 'H0003HVHF'
                                  'T2022HFHV' 'T2022HVHF'.
                       88 :CLM:A-EARLY-INTVTN-CODES
                           VALUE  'T1026TL  '
                                  'T1026  TL'
                                  'T1024TL  '
                                  'T1024  TL'
                                  'T2023TL  '
                                  'T2023  TL'
                                  'T2023TL22'
                                  'T202322TL'.
                       88 :CLM:A-L-D-ANES-CODE
                           VALUES '01960AA  '
                                  '01960  AA'
                                  '01967AA  '
                                  '01967  AA'
                                  '59409AA  '
                                  '59409  AA'
                                  '59612AA  '
                                  '59612  AA'.
                   15 FILLER                             PIC X(4).
               10 :CLM:A-PROC-KEY.
                   15 :CLM:A-PROC-KEY-CDE                PIC X(5).
                   15 :CLM:A-PROC-KEY-MOD                PIC X(2).
                   15 :CLM:A-PROC-KEY-MOD-SECOND         PIC X(2).
                   15 :CLM:A-PROC-KEY-MOD-THIRD          PIC X(2).
                   15 :CLM:A-PROC-KEY-MOD-FOURTH         PIC X(2).
               10 :CLM:A-CLM-SERVICE-DTE                 PIC 9(8).
               10  FILLER
                      REDEFINES    :CLM:A-CLM-SERVICE-DTE.
                   15 :CLM:A-CLM-SERVICE-DTE-YY          PIC 9(4).
                   15 :CLM:A-CLM-SERVICE-DTE-MM          PIC 9(2).
                   15 :CLM:A-CLM-SERVICE-DTE-DD          PIC 9(2).
               10 :CLM:A-CLM-SERVICE-DTE-THRU            PIC 9(8).
               10  FILLER REDEFINES   :CLM:A-CLM-SERVICE-DTE-THRU.
                   15 :CLM:A-CLM-SERVICE-DTE-THRU-YY     PIC 9(4).
                   15 :CLM:A-CLM-SERVICE-DTE-THRU-MM     PIC 9(2).
                   15 :CLM:A-CLM-SERVICE-DTE-THRU-DD     PIC 9(2).
               10 :CLM:A-CLM-SERVICE-UNITS               PIC S9(4).
               10 :CLM:A-CLM-CYCLE-NUM.
                   15 :CLM:A-CLM-CYCLE-WEEKLY            PIC X(3).
                   15 :CLM:A-CLM-CYCLE-DAILY             PIC X(1).
               10 :CLM:A-CLM-ACTIV-DTE                   PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-CLM-PMT-DTE                     PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-ORIG-PMT-DTE                    PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-REMIT-ADVICE-NUM                PIC 9(9)
                                                           COMP-3.
               10 :CLM:A-CLM-CHRG                        PIC S9(7)V99.
               10 :CLM:A-CLM-CHRG-DOC                    PIC S9(7)V99.
               10 :CLM:A-CLM-TPL-PAID                    PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-CLM-TPL-DOC                     PIC S9(7)V99.
               10 :CLM:A-CLM-PAT-COST-SHARE              PIC S9(5)V99.
               10 :CLM:A-CLM-MCAID-COST-SHARE            PIC S9(5)V99.
               10 :CLM:A-PA-AUTHORIZED-AMT               PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-ECPS-THRESHOLD-AMT REDEFINES
                  :CLM:A-PA-AUTHORIZED-AMT               PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-SPECIAL-PRICE-AMT               PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-CUTBACK-DOLLAR-AMT              PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-CUTBACK-DAYS-UNITS              PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-CLM-PMT-AMT                     PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-MCAID-TENT-PAY                  PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-MCAID-TENT-SRC                  PIC X(1).
                   88 :CLM:A-VALID-TENT-SRC                             12760001
                       VALUE 'A' THRU 'K'.                              12770001
                   88 :CLM:A-TENT-MAN-PRICE          VALUE 'A'.
                   88 :CLM:A-TENT-SUBMIT-CHRG        VALUE 'B'.
                   88 :CLM:A-TENT-PER-DIEM           VALUE 'C'.
                   88 :CLM:A-TENT-DRG                VALUE 'D'.
                   88 :CLM:A-TENT-UCC                VALUE 'E'.
                   88 :CLM:A-TENT-MCARE-UCC          VALUE 'F'.
                   88 :CLM:A-TENT-FEE-SCH            VALUE 'G'.
                   88 :CLM:A-TENT-MAX-PRICE          VALUE 'H'.
                   88 :CLM:A-TENT-AWP-PRICE          VALUE 'I'.
                   88 :CLM:A-TENT-MAC-PRICE          VALUE 'J'.
                   88 :CLM:A-TENT-DISCOUNT-AWP-PRICE VALUE 'K'.
                   88 :CLM:A-PARTB-XOVR-BY-REPORT    VALUE 'L'.
                   88 :CLM:A-PARTB-COPAY-COINS-DED   VALUE 'M'.
                   88 :CLM:A-TENT-APR-DRG            VALUE 'O'.
                   88 :CLM:A-TENT-COPAY-433-DX       VALUE 'P'.
                   88 :CLM:A-TENT-DIRECT-PRICING     VALUE 'R'.
                   88 :CLM:A-TENT-STATE-MAC-PRICING  VALUE 'S'.
                   88 :CLM:A-TENT-WHLSALE-NET-UNIT   VALUE 'W'.
               10 :CLM:A-PRICING-ACTION-CDE              PIC X(3).
                   88 :CLM:A-VALID-PRICE-CDE                            12910001
                       VALUE '   ' '100' '200' '210' '300' '310' '400'  12920001
                             '410' '420' '500' '800' '850' '860' '870'. 12930001
                   88 :CLM:A-PERCENT-PRICE           VALUE '100'.
                   88 :CLM:A-MED-MAX-PRICE           VALUE '200'.
                   88 :CLM:A-MED-MAX-UC-PRICE        VALUE '210'.
                   88 :CLM:A-FEE-SCH-PRICE           VALUE '300'.
                   88 :CLM:A-FEE-SCH-UC-PRICE        VALUE '310'.
                   88 :CLM:A-CONTACT-PRICE           VALUE '400'.
                   88 :CLM:A-REPORT-PRICE            VALUE '410'.
                   88 :CLM:A-THERSHOLD-PRICE         VALUE '420'.
                   88 :CLM:A-COMP-RATE-PRICE         VALUE '500'.
                   88 :CLM:A-LEGEND-DISPENSING       VALUE '800'.
                   88 :CLM:A-LEGEND-NO-DISPENSING    VALUE '850'.
                   88 :CLM:A-APS-PRICING             VALUE '860'.
                   88 :CLM:A-OTC-PRICING             VALUE '870'.
               10 :CLM:A-ADJUSTMENT-REASON               PIC X(4).
               10 :CLM:A-CLM-ADJUST-AMT                  PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-CLM-PMT-DTE-FORMER              PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-CLM-RET-CHECK-AMT               PIC S9(7)V99
                                                           COMP-3.
               10 :CLM:A-FIN-REMIT-IND                   PIC X(1).
                   88 :CLM:A-VALID-FIN-REMIT-IND     VALUE 'A' 'B'.
                   88 :CLM:A-PROVIDER-REMIT          VALUE 'A'.
                   88 :CLM:A-HISTORY-ADJ-REMIT       VALUE 'B'.
               10 :CLM:A-FIN-TRANS-TYPE                  PIC X(1).
               10 :CLM:A-FAMILY-PLANNING-IND             PIC X(1).
                   88 :CLM:A-VALID-FAMILY-PLAN-IND   VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-FAMILY-PLAN             VALUE 'Y'.
                   88 :CLM:A-NO-FAMILY-PLAN          VALUE ' ' 'N'.
               10 :CLM:A-MODIFIED-COS.
                   88 :CLM:A-VALID-MODIFIED-COS                         13240001
                       VALUE '01A' '01B' '03A' '03C' '04A' '04B' '04C'  13250001
                             '08A' '08B' '08C' '08D' '20A' '20B' '22A'  13260001
                             '22B' '22C' '22E' '23A' '23B' '81A' '81B'  13270001
                             '81C' '93B' '93C'.                         13280001
                   88 :CLM:A-COS-HOSP-ACUTE          VALUE '01A'.       13290001
                   88 :CLM:A-COS-HOSP-OTHER          VALUE '01B'.       13300001
                   88 :CLM:A-COS-MENTAL-HOSP-GVMT    VALUE '03A'.       13310001
                   88 :CLM:A-COS-MENTAL-OTHER        VALUE '03C'.       13320001
                   88 :CLM:A-COS-COMM-CLINIC         VALUE '08A'.       13330001
                   88 :CLM:A-COS-MENTAL-CLINIC       VALUE '08B'.       13340001
                   88 :CLM:A-COS-CLINIC-OTHER        VALUE '08C'.       13350001
                   88 :CLM:A-COS-DRUG-LTC            VALUE '20A'.       13360001
                   88 :CLM:A-COS-DRUG-RETAIL         VALUE '20B'.       13370001
                   88 :CLM:A-COS-DAY-TRAINING        VALUE '22A'.       13380001
                   88 :CLM:A-COS-EARLY-INTERVENTION  VALUE '22B'.       13390001
                   88 :CLM:A-COS-CSOCI-NEW-PROC      VALUE '23A'.       13400001
                   88 :CLM:A-COS-CSOCI-EXISTING-SVC  VALUE '23B'.       13410001
                   88 :CLM:A-COS-SPEC-EDUC-OTHER     VALUE '22C'.       13420001
                   88 :CLM:A-COS-MOD-WAIV-I          VALUE '93A'.       13430001
                   88 :CLM:A-COS-MOD-WAIV-II         VALUE '93B'.       13440001
                   88 :CLM:A-COS-MOD-WAIV-III        VALUE '93C'.       13450001
                   15 :CLM:A-COS                         PIC X(2).
                       88 :CLM:A-COS-INPATIENT       VALUE '01'.        13470001
                       88 :CLM:A-COS-RESID-TREAT     VALUE '02'.        13480001
                       88 :CLM:A-COS-INPAT-MENTAL-HOSP VALUE '03'.      13490001
                       88 :CLM:A-COS-OUTPATIENT      VALUE '04'.        13500001
                       88 :CLM:A-COS-ICF-MR          VALUE '05'.        13510001
                       88 :CLM:A-COS-TARGETED-CASE-MGMT VALUE '06'.     13520001
                       88 :CLM:A-COS-NF              VALUE '07'.        13530001
                       88 :CLM:A-COS-CLINIC          VALUE '08'.        13540001
                       88 :CLM:A-COS-OPTICAL         VALUE '09'.        13550001
                       88 :CLM:A-COS-PHYSICIAN       VALUE '10'.        13560001
                       88 :CLM:A-COS-DENTAL          VALUE '11'.        13570001
                       88 :CLM:A-COS-ASC             VALUE '12'.        13580001
                       88 :CLM:A-COS-OPTOMETRY       VALUE '13'.        13590001
                       88 :CLM:A-COS-CHIROPRACTOR    VALUE '14'.        13600001
                       88 :CLM:A-COS-NURSE-PRACTITIONER VALUE '15'.     13610001
                       88 :CLM:A-COS-PSYCHOLOGIST    VALUE '16'.        13620001
                       88 :CLM:A-COS-PODIATRIST      VALUE '17'.        13630001
                       88 :CLM:A-COS-P-AND-O         VALUE '18'.        13640001
                       88 :CLM:A-COS-MIDWIFERY       VALUE '19'.        13650001
                       88 :CLM:A-COS-DRUGS           VALUE '20'.        13660001
                       88 :CLM:A-COS-SPECIAL-EDUCATION VALUE '22'.      13670001
                       88 :CLM:A-COS-CSOCI           VALUE '23'.        13680001
                       88 :CLM:A-COS-MEDICAL-SUPPLIES VALUE '30'.       13690001
                       88 :CLM:A-COS-DME             VALUE '31'.        13700001
                       88 :CLM:A-COS-HEARING-AID     VALUE '32'.        13710001
                       88 :CLM:A-COS-HOME-HEALTH     VALUE '40'.        13720001
                       88 :CLM:A-COS-HOSPICE         VALUE '50'.        13730001
                       88 :CLM:A-COS-LABORATORY      VALUE '60'.        13740001
                       88 :CLM:A-COS-RADIOLOGY       VALUE '65'.        13750001
                       88 :CLM:A-COS-TRANS           VALUE '70'.        13760001
                       88 :CLM:A-COS-MEDICAL-DAY-CARE VALUE '80'.       13770001
                       88 :CLM:A-COS-PERSONAL-CARE   VALUE '81'.        13780001
                       88 :CLM:A-COS-TBI             VALUE '88'.        13790001
                       88 :CLM:A-COS-DYFS-ABC-WAIVER VALUE '89'.        13800001
                       88 :CLM:A-COS-DDD             VALUE '90'.        13810001
                       88 :CLM:A-COS-CCPED           VALUE '91'.        13820001
                       88 :CLM:A-COS-ACCAP           VALUE '92'.        13830001
                       88 :CLM:A-COS-MODEL-WAIVERS   VALUE '93'.        13840001
                       88 :CLM:A-COS-GSHP            VALUE '94'.        13850001
                       88 :CLM:A-COS-PREPAID-HEALTH  VALUE '95'.        13860001
                       88 :CLM:A-COS-HOME-CARE-EXP   VALUE '96'.        13870001
                       88 :CLM:A-COS-OTHER           VALUE '99'.        13880001
                       88 :CLM:A-COS-NOT-ALLOWED-HOSPICE                13890001
                           VALUE '01' '04' '08' '09' '18' '20' '30'     13900001
                                 '31' '40' '60' '65' '70' '80' '81'.    13910001
                   15  FILLER                            PIC X(1).
               10 :CLM:A-APPROP-CDE.
                   15 :CLM:A-FIS-FISCAL-YEAR             PIC X(1).
                   15 :CLM:A-FIS-FUND-ID                 PIC X(3).
                   15 :CLM:A-FIS-PROG-SUB-CLASS          PIC X(3).
                   15 :CLM:A-FIS-FFP-IND                 PIC X(1).
                       88 :CLM:A-CURR-FFP-CAT-0      VALUE '0'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-1      VALUE '1'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-2      VALUE '2' 'A' 'E'  13470001
                                                           'I' 'M' '0'  13470001
                                                           'T' 'U' 'V'  13470001
                                                           'W'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-3      VALUE '3' '0' 'T'  13470001
                                                           'U' 'V'      13470001
                                                           'W'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-4      VALUE '4' 'B' 'F'  13470001
                                                           'J' 'N'.     13470001
                       88 :CLM:A-CURR-FFP-CAT-5      VALUE '5' 'C' 'G'  13470001
                                                           'K' 'O' '0'  13470001
                                                           'T' 'U' 'V'  13470001
                                                           'W'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-6      VALUE '6' 'R' 'S'  13470001
                                                           'P'.         13470001
                       88 :CLM:A-CURR-FFP-CAT-7      VALUE '7' 'D' 'H'  13470001
                                                           'L' 'Q'.     13470001
               10 FILL-A-FIS-FFP-IND                     PIC X(1).
               10 :CLM:A-ORIG-APPROP-CDE.
                   15 :CLM:A-ORIG-FIS-FISCAL-YEAR        PIC X(1).
                   15 :CLM:A-ORIG-FIS-FUND-ID            PIC X(3).
                   15 :CLM:A-ORIG-FIS-PROG-SUB-CLASS     PIC X(3).
                   15 :CLM:A-ORIG-FIS-FFP-IND            PIC X(1).
                       88 :CLM:A-ORIG-FFP-CAT-0      VALUE '0'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-1      VALUE '1'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-2      VALUE '2' 'A' 'E'  13470001
                                                           'I' 'M' '0'  13470001
                                                           'T' 'U' 'V'  13470001
                                                           'W'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-3      VALUE '3' '0' 'T'  13470001
                                                           'U' 'V'      13470001
                                                           'W'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-4      VALUE '4' 'B' 'F'  13470001
                                                           'J' 'N'.     13470001
                       88 :CLM:A-ORIG-FFP-CAT-5      VALUE '5' 'C' 'G'  13470001
                                                           'K' 'O' '0'  13470001
                                                           'T' 'U' 'V'  13470001
                                                           'W'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-6      VALUE '6' 'R' 'S'  13470001
                                                           'P'.         13470001
                       88 :CLM:A-ORIG-FFP-CAT-7      VALUE '7' 'D' 'H'  13470001
                                                           'L' 'Q'.     13470001
               10 FILL-A-ORIG-FIS-FFP-IND                PIC X(1).
               10 :CLM:A-CLM-RECIP-FILE-DATA.
                   15 :CLM:A-RECIP-ID-NUM                PIC X(12).
                   15 :CLM:A-ECPS-SSN-DATA                              17600012
                          REDEFINES     :CLM:A-RECIP-ID-NUM.            17600012
                       20 :CLM:A-ECPS-SSN                PIC X(9).      17610012
                       20 FILLER                         PIC X(3).      17620012
                   15 :CLM:A-COUNTY-CDE                  PIC 9(02).
                   15 :CLM:A-CNTY-INSTIT-IND             PIC X(01).
                   15 :CLM:A-PROG-STATUS-CDE             PIC 9(03).
                       88 :CLM:A-PROG-STATUS-CDE-ABD                    08070001
                           VALUE 190 THRU 230                           14070001
                                 110 120 130 290 510 520 530 590 710.   14080001
                       88 :CLM:A-PROG-STATUS-CDE-FAMCARE                08100002
                           VALUE 300 301 380 497 498 700 701 761 762    08110002
                                 763.                                   08110002
                       88 :CLM:A-PROG-STATUS-CDE-KIDCARE
                           VALUE 486 THRU 489                           14130001
                                 493 THRU 496.                          14140001
                       88 :CLM:A-PROG-STATUS-CDE-MN-A                   14090099
                           VALUE 170 180 270 280 570 580.               14100099
                       88 :CLM:A-PROG-STATUS-CDE-MN-B                   14110099
                           VALUE 170 180 270 280 340 350 360 370 570    14120099
                                 580.                                   14130099
                       88 :CLM:A-PROG-STATUS-CDE-MN-C
                           VALUE 180 280 580.
                       88 :CLM:A-PROG-STATUS-CDE-MN-D
                           VALUE 170 180 270 280 360 370 570 580.
                       88 :CLM:A-PROG-STATUS-CDE-MN-E
                           VALUE 360 370.
                       88 :CLM:A-PROG-STATUS-CDE-NO-MANC
                           VALUE 295 391.
                       88 :CLM:A-PROG-STATUS-CDE-NON-SEMI               08300003
                           VALUE 130 140 150 160 230 240 250 260 300    08450002
                                 301 391 430 440 450 451 452 461 462    08450002
                                 470 486 487 488 489 493 494 495 496    08460002
                                 497 498 530 540 550 560 640 641 650    08470002
                                 700 701 710 730 740 750 760 761 762    08470002
                                 763 770 780 800 830 840.               08480002
                       88 :CLM:A-PSC-NON-SEMI-ACA                       08300003
                           VALUE 130 140 150 160 230 240 250 260 300    08450002
                                 301 391 430 440 450 451 452 470 486    08450002
                                 487 488 489 493 494 495 496 497 498    08460002
                                 530 540 550 560 640 641 650 700 701    08470002
                                 710 730 740 750 760 761 763 770 780    08470002
                                 800 830 840.                           08480002
                       88 :CLM:A-PROG-STATUS-CDE-E506-BYP               08620002
                           VALUE 140 240 430 540 640.                   08630002
                       88 :CLM:A-PROG-STATUS-CDE-E506                   08640002
                           VALUE 130 140 160 170 230 240 260 270 340    08650002
                                 360 390 530 540 570 640 650 710 800.   08660002
                       88 :CLM:A-PROG-STATUS-CDE-E506-ACA               08640002
                           VALUE 130 140 160 170 230 240 260 270 340    08650002
                         360 390 530 540 570 640 650 710 800.           08660002
                       88 :CLM:A-PROG-STATUS-CDE-E531-BYP               08620002
                           VALUE 320 380 762.                           08630002
                       88 :CLM:A-PROG-STAT-CDE-P-JUL09                  08300003
                           VALUE  110 120 170 180 190 210 220 270 280   08450002
                                  290 291 292 293 294 295 310 320 330   08450002
                                  340 350 360 370 390 410 420 460 461   08460002
                                  462 480 481 482 483 485 490 491 492   08470002
                                  510 520 570 580 590 591 592 593 594   08470002
                                  600 620 630 761 763.                  08480002
                       88 :CLM:A-PROG-STAT-CDE-T19                      08300003
                           VALUE  110 120 170 180 190 210 220 270 280   08450002
                                  290 291 292 293 294 295 310 320 330   08450002
                                  340 350 360 370 380 390 410 420 460   08460002
                                  461 462 480 481 482 483 484 485 490   08470002
                                  491 492 510 520 570 580 590 591 592   08470002
                                  593 594 600 620 630 762.              08480002
                       88 :CLM:A-PROG-STAT-CDE-M19
                           VALUE  110 120 190 210 220 290 291 292 293
                                  294 295 310 320 330 380 390 410 420
                                  460 461 462 480 481 482 483 484 485
                                  490 491 492 510 520 590 591 592 593
                                  594 600 620 630 762.
                       88 :CLM:A-PROG-STAT-CDE-T21
                           VALUE 380                                    14130001
                                 485 THRU 489                           14130001
                                 493 THRU 499.                          14140001
                   15 :CLM:A-SPECIAL-PROG-CDE            PIC 9(02).
                       88 :CLM:A-SPECIAL-PROG-CDE-ALIENS                14270001
                           VALUE 10 11 18.                              14280001
                       88 :CLM:A-SPECIAL-PROG-CDE-PSP                   09570001
                           VALUE 50 THRU 59.                            09580001
                       88 :CLM:A-SPECIAL-PROG-CDE-E506                  08690002
                           VALUE 03 THRU 11                             14350001
                                 28 THRU 31                             14360001
                                 34 THRU 36                             14360001
                                 13 18 22.                              14370001
                       88 :CLM:A-SPC-TBI-WAIVER                         09570001
                           VALUE 17.                                    09580001
                       88 :CLM:A-SPECIAL-PROG-CDE-CCS                   09570001
                           VALUE 07 46 60 62.                           09580001
                   15 :CLM:A-SPECIAL-PROG-CDE-2          PIC 9(02).
                       88 :CLM:A-SPECIAL-PROG-CDE-2-CSS                 09570001
                           VALUE 19 20 21 23 24 25 26 39.               09580001
                   15 :CLM:A-SPECIAL-PROG-CDE-3          PIC 9(02).
                   15 :CLM:A-RECIP-RACE-CDE              PIC X(01).
                   15 :CLM:A-RECIP-SEX-CDE               PIC X(01).
                   15 :CLM:A-DTE-OF-BIRTH                PIC 9(8).
                   15 :CLM:A-DATE-OF-DEATH               PIC 9(8).
                   15 :CLM:A-PAT-LTC-IND                 PIC X(1).
                       88 :CLM:A-VALID-PAT-LTC-IND  VALUE 'Y' 'N'.
                   15 :CLM:A-PAT-CALC-AGE                PIC 9(3)
                                                           COMP-3.
                   15 :CLM:A-ELIG-EXTENSION-CDE          PIC X(01).
                   15 :CLM:A-TPL-IND                     PIC X(01).
                       88 :CLM:A-VALID-TPL-IND      VALUE ' ' 'Y' 'N'.
                       88 :CLM:A-YES-TPL-IND        VALUE 'Y'.
                   15 :CLM:A-RECIP-NAME.
                       20 :CLM:A-RECIP-NAME-LAST         PIC X(12).
                       20 :CLM:A-RECIP-NAME-FIRST        PIC X(7).
                       20 :CLM:A-RECIP-NAME-MI           PIC X(1).
               10 :CLM:A-CLM-PROV-FILE-DATA.
                   15 :CLM:A-PROV-TYPE                   PIC 9(2).
                       88 :CLM:A-PROV-TYPE-FQHC
                           VALUE 43.
                       88 :CLM:A-PROV-TYPE-TBI
                           VALUE 20 24 34 44.
                       88 :CLM:A-PROV-TYPE-CLINIC
                           VALUE 20 60 65 70.
                       88 :CLM:A-PROV-TYPE-PRENATAL-BYP
                           VALUE 20 23 24 25 43 60.
                       88 :CLM:A-PROV-TYPE-HOSPICE
                           VALUE 63.
                   15 :CLM:A-SPECIALTY-CDE               PIC 9(3).
                       88 :CLM:A-SPECIALTY-CDE-TCM
                           VALUE 813 819 822 824.
                       88 :CLM:A-SPECIALTY-CDE-DDD
                           VALUE 871 878 882 883 885 974 975.
                       88 :CLM:A-SPECIALTY-CDE-OBAT
                           VALUE 967 968.
                       88 :CLM:A-SPEC-CDE-NDPP
                           VALUE 731 734.
                       88 :CLM:A-SPEC-CDE-DSMES
                           VALUE 732.
                       88 :CLM:A-SPEC-CDE-MNT
                           VALUE 733.
                   15 :CLM:A-PROV-COUNTY-CDE             PIC 9(2).
                   15 :CLM:A-FACILITY-CNTRL-CDE          PIC 9(1).
                   15 :CLM:A-MULT-ADDR-LOC               PIC 9(2).
                   15 :CLM:A-MULT-SERV-COUNTY            PIC 9(2).
                   15 :CLM:A-PROV-SERV-STATE             PIC X(2).
                   15 :CLM:A-LAB-CERT-CDE                PIC 9(3).
                   15 :CLM:A-GROUP-BED-SIZE              PIC 9(4).
                   15 :CLM:A-PROV-NAME                   PIC X(30).
               10 :CLM:A-CLM-PA-IND                      PIC X(1).
             07  :CLM:COMMON-TABLE-1.
               10 :CLM:A-PA-NUM-FIELD.
                   15 :CLM:A-PA-NUM                      PIC X(10)
                   OCCURS 2 INDEXED BY :CLM:A-PA-INDX.                  14730001
               10 :CLM:A-EPCS-RULE REDEFINES :CLM:A-PA-NUM-FIELD.
                   15 :CLM:A-ECPS-30PRCNT-IND            PIC X(03).
                   15 FILLER                             PIC X(17).
             07  :CLM:COMMON-GROUP-2.
               10 :CLM:A-CLM-EMERGENCY-IND               PIC X(1).
                   88 :CLM:A-VALID-EMERGENCY-IND     VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-EMERGENCY               VALUE 'Y'.
                   88 :CLM:A-NON-EMERGENCY           VALUE 'N'.
               10 :CLM:A-CLM-OTHER-INSURANCE-IND         PIC X(1).
                   88 :CLM:A-VALID-OTHER-INS-IND     VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-OTHER-INS               VALUE 'Y'.
                   88 :CLM:A-NO-OTHER-INS            VALUE 'N'.
               10 :CLM:A-CLM-PAT-EMPLOYMENT-IND          PIC X(1).
                   88 :CLM:A-VALID-EMPLOYMENT-IND    VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-EMPLOYED                VALUE 'Y'.
                   88 :CLM:A-NOT-EMPLOYED            VALUE 'N'.
               10 :CLM:A-CLM-ACCIDENT-IND                PIC X(1).
                   88 :CLM:A-VALID-ACCIDENT-IND      VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-ACCIDENT                VALUE 'Y'.
                   88 :CLM:A-NO-ACCIDENT             VALUE 'N'.
               10 :CLM:A-LIFE-BEN-EXHAUSTED-IND          PIC X(1).
               10 :CLM:A-TPL-POTENTIAL-DISABLE           PIC X(1).
               10 :CLM:A-CLM-TRAUMA-CDE                  PIC X(1).
               10 :CLM:A-PEND-ACTION-CDE                 PIC X(1).
                   88 :CLM:A-VALID-PEND-ACTION-CDE   VALUE ' ' 'C' 'D'. 14940001
                   88 :CLM:A-PEND-DENY-CDE           VALUE 'D'.         14950001
                   88 :CLM:A-PEND-CCF-CDE            VALUE 'C'.         14960001
               10 :CLM:A-CLM-EPSDT-RELATED               PIC X(1).
                   88 :CLM:A-VALID-EPSDT-RELATED-IND VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-EPSDT-RELATED           VALUE 'Y'.
                   88 :CLM:A-NOT-EPSDT-RELATED       VALUE 'N'.
               10 :CLM:A-CLM-GSHP-RELATED                PIC X(1).
                   88 :CLM:A-VALID-GSHP-RELATED                         15020001
                       VALUE '0' THRU '9'.                              15030001
                   88 :CLM:A-GSHP-NON-RELATED        VALUE '0'.
                   88 :CLM:A-GSHP-ENCOUNTER-CLAIM    VALUE '1'.
                   88 :CLM:A-GSHP-REF-INPLAN-CAP     VALUE '2'.
                   88 :CLM:A-GSHP-REF-OUTPLAN        VALUE '3'.
                   88 :CLM:A-GSHP-NONPCM-REF-OUTPLAN VALUE '4'.
                   88 :CLM:A-GSHP-CAP-CLAIM          VALUE '5'.
                   88 :CLM:A-GSHP-REF-INPATIENT      VALUE '6'.
                   88 :CLM:A-GSHP-PCM-CAP-CLAIM      VALUE '7'.
                   88 :CLM:A-GSHP-REF-INPLAN-NONCAP  VALUE '8'.
                   88 :CLM:A-GSHP-INPLAN-NONCAP      VALUE '9'.
                   88 :CLM:A-CLM-GSHP-RELATED-COS                       15140001
                       VALUE '5' THRU '9'                               15150001
                             '1' '2'.                                   15160001
             07  :CLM:COMMON-TABLE-2.
               10 :CLM:A-CARRIER-DATA
                       OCCURS 5 INDEXED BY  :CLM:A-CARR-INDX.
                   15 :CLM:A-CARRIER-CDE                 PIC X(3).
                   15 FILL-A-CARRIER-CDE                 PIC X(6).
                   15 :CLM:A-CARRIER-BILLED              PIC X(1).
                   15 FILL-A-CARR-APPROVED-AMOUNT        PIC 9(2).
                   15 :CLM:A-CARR-APPROVED-AMOUNT        PIC S9(7)V99.
                   15 FILL-A-CARR-PAID-AMOUNT            PIC 9(2).
                   15 :CLM:A-CARR-PAID-AMOUNT            PIC S9(7)V99.
                   15 FILL-A-CARR-PARTA-EXHAUST-CHGS     PIC 9(4).
                   15 :CLM:A-CARR-PARTA-EXHAUST-CHGS     PIC S9(5)V99.
                   15 :CLM:A-CARR-COINS-OR-COPAY         PIC S9(5)V99.
                   15 :CLM:A-CARR-DEDUCT                 PIC S9(5)V99.
                   15 :CLM:A-CARR-BEN-EXHAUST-DTE        PIC 9(8).
                   15 FILLER                             PIC X(36).
             07  :CLM:COMMON-TABLE-3.
               10 :CLM:A-CLM-ATTACHMENT                  PIC 9(2)
                       OCCURS 4 INDEXED BY  :CLM:A-ATT-INDX.
               10 :CLM:A-ADDL-ATTACHMENT-DATA            PIC X(12).
             07  :CLM:COMMON-GROUP-3.
               10 :CLM:A-CLM-LINES                       PIC 9(2).
               10 :CLM:A-CLM-ERROR-ALL.
                   15 :CLM:A-CLM-ERROR-LOCATION          PIC X(2).
                       88 :CLM:A-MED-REVIEW-LOC      VALUE '19'.
                       88 :CLM:A-PROVIDER-CCF-LOC    VALUE '78'.
                       88 :CLM:A-AUTO-RECYCLE-LOC                       15280001
                           VALUE '89' '90' '91' '94' '98'.              15290001
                       88 :CLM:A-DO-NOT-TOUCH-LOC    VALUE '97'.
                   15 :CLM:A-CLM-ERROR-COUNT             PIC 9(2).
                   15 :CLM:A-CLM-ERROR                                  15320001
                       OCCURS 10 INDEXED BY   :CLM:A-ERR-INDX.          15330001
                       20 :CLM:A-CLM-ERROR-CDE           PIC 9(4)       *NEW*RNE
                                                           COMP-3.
                           88 :CLM:A-CLM-ERROR-CDE-CSOCI                *NEW*RNE
                               VALUE 242 304 370 385.                   15370001
                       20 :CLM:A-CLM-ERROR-FLAG          PIC X(1).
             07  :CLM:COMMON-HIST-ERROR-GROUP.
               10 :CLM:A-CLM-HIST-ERROR-ALL.
                   15 :CLM:A-CLM-HIST-ERROR-COUNT        PIC 9(2).
                 12 :CLM:COMMON-TABLE-4.
                   15 :CLM:A-CLM-HIST-ERROR                             15410001
                       OCCURS 10 INDEXED BY  :CLM:A-HST-INDX.           15420001
                       20 :CLM:A-CLM-HIST-ERROR-CDE      PIC 9(4)       *NEW*RNE
                                                           COMP-3.
                       20 :CLM:A-CLM-HIST-ERROR-FLAG     PIC X(1).
             07  :CLM:COMMON-GROUP-4.
               10 :CLM:A-CLM-PEND-COUNT                  PIC 9(3).
             07  :CLM:COMMON-OVERRIDE-GROUP.
               10 :CLM:A-CLM-OVERRIDE-ALL.
                   15 :CLM:A-CLM-OVERRIDE-COUNT          PIC 9(2).
                 12 :CLM:COMMON-TABLE-5.
                   15 :CLM:A-CLM-OVERRIDE-CDE            PIC 9(4)       *NEW*RNE
                                                           COMP-3
                       OCCURS 10 INDEXED BY  :CLM:A-OVER-INDX.          15510001
                       88 :CLM:A-CLM-OVERRIDE-CSOCI                     *NEW*RNE
                           VALUE 242 304 370 385.                       15530001
             07  :CLM:COMMON-GROUP-5.
               10 :CLM:A-PEND-DAYS-AUTO-RECYCLE          PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-PEND-DAYS-MED-REVIEW            PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-PEND-DAYS-STATE                 PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-CLM-ENTRY-DTE                   PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-RECYCLE-NUM                     PIC 9(2).
               10 :CLM:A-OPERATOR-ID                     PIC X(4).
               10 :CLM:A-CLERK-CDE                       PIC X(3).
               10 :CLM:A-CCF-IND                         PIC X(1).
               10 :CLM:A-ICN-CCF                         PIC 9(15)
                                                           COMP-3.
               10 :CLM:A-ICN-ATTACHMENT                                 18910012
                   REDEFINES      :CLM:A-ICN-CCF PIC 9(15)              18910012
                                                         COMP-3.        18920012
               10 :CLM:A-CLM-AUTO-RECYCLE-DATE           PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-CLM-AUTO-RECYCLE-COUNT          PIC 9(2).
               10 :CLM:A-CLM-MULT-SURG-EXCEPT            PIC X(1).
               10 :CLM:A-CLM-DUP-EXCEPT                  PIC X(1).
               10 :CLM:A-CLM-HIST-YEARS                  PIC X(1).
               10 :CLM:A-CLM-SIGN-IND                    PIC X(1).
                   88 :CLM:A-VALID-SIGN-IND          VALUE ' ' 'Y' 'N'.
                   88 :CLM:A-SIGNATURE               VALUE 'Y'.
                   88 :CLM:A-NO-SIGNATURE            VALUE 'N'.
               10 :CLM:A-CLM-SIGN-DTE                    PIC 9(8).
               10 :CLM:A-CPAS-CNTL-NUM                   PIC 9(6).
               10 :CLM:A-CPAS-REVIEW-TYPE                PIC X(1).
               10 :CLM:A-CLM-TEST-RECIP                  PIC X(1).
                   88 :CLM:A-VALID-TEST-RECIP        VALUE ' ' 'T' 'U'.
                   88 :CLM:A-NOT-TEST-RECIP          VALUE ' '.
                   88 :CLM:A-TEST-RECIP              VALUE 'T'.
                   88 :CLM:A-UNDERCOVER-RECIP        VALUE 'U'.
               10 :CLM:A-CLM-TEST-PROV                   PIC X(1).
                   88 :CLM:A-VALID-TEST-PROV         VALUE ' ' 'T'.
                   88 :CLM:A-TEST-PROV               VALUE 'T'.
                   88 :CLM:A-NOT-TEST-PROV           VALUE ' '.
               10  :CLM:A-PAT-ACCOUNT-FULL.                             19150012
                   15  :CLM:A-PAT-ACCOUNT-NUM.                          19160012
                       20  :CLM:A-PAT-ACCOUNT-16         PIC X(16).     19170012
                       20  :CLM:A-PAT-ACCOUNT-4          PIC X(04).     19180012
                   15  FILLER                            PIC X(11).     19190012
               10  FILLER REDEFINES     :CLM:A-PAT-ACCOUNT-FULL.        15970001
                   15  FILLER                            PIC X(16).     19210012
                   15  :CLM:A-ICN-CONVERT                PIC X(15).     19220012
               10  :CLM:A-PEND-DENY-REASON               PIC 9(4).      *NEW*RNE
               10  :CLM:A-DUPE-ICN                       PIC 9(15)
                                                           COMP-3.
               10  :CLM:A-DUPE-RA-DATE                   PIC 9(8)
                                                           COMP-3.
             07  :CLM:COMMON-TABLE-6.
               10  :CLM:A-DIAG-ALL.
                   15 FILLER
                       OCCURS 17 INDEXED BY  :CLM:A-DIAG-INDX.
                       88  :CLM:A-E1310-DIAG-DENTAL-BYPASS              16080001
                           VALUE '2902 ' '2938 ' '2939 '
                                 '299  ' '3013 ' '3080 '
                                 '310  ' '3129 ' '314  '
                                 '3155 ' '3158 ' '3159 '
                                 '317  ' '318  ' '319  '
                                 '3318 ' '330  ' '3334 '
                                 '3335 ' '343  ' '345  '
                                 '3483 ' '359  ' '758  '
                                 '75983' '7607 '
                                 '76071'  THRU   '76075'
                                 '7679 ' '7803 '
                                 '850  '  THRU   '854  '.
                       88  :CLM:A-E1310-DENTAL-BYPSS-ICD10
                           VALUE 'E75    ' THRU 'E759999',
                                 'F03    ' THRU 'F039999',
                                 'F06    ' THRU 'F099999',
                                 'F48    ' THRU 'F489999',
                                 'F53    ' THRU 'F539999',
                                 'F60    ' THRU 'F609999',
                                 'F70    ' THRU 'F799999',
                                 'F84    ' THRU 'F919999',
                                 'G10    ' THRU 'G109999',
                                 'G25    ' THRU 'G259999',
                                 'G31    ' THRU 'G319999',
                                 'G40    ' THRU 'G409999',
                                 'G71    ' THRU 'G809999',
                                 'G93    ' THRU 'G939999',
                                 'P04    ' THRU 'P041999',
                                 'P043   ' THRU 'P049999',
                                 'Q86    ' THRU 'Q869999',
                                 'Q90    ' THRU 'Q999999',
                                 'R56    ' THRU 'R569999',
                                 'S06    ' THRU 'S069999',
                                 'F819   ' 'I6783  ' 'P154   ',
                                 'P158   ' 'P159   '.
                       88  :CLM:A-E1303-BYPASS
                          VALUE 'Z603   ' THRU 'Z609999'
                                'Z600   ', 'Z644   '
                                'Z658   ', 'Z659   '.
                       88  :CLM:A-E1303-DIAG-INVALID                    16080001
                          VALUE 'V11  ' THRU 'V1199'                    16090001
                                'V40  ' THRU 'V4099'                    16090001
                                'V710 ' THRU 'V7199'                    16090001
                                '2902 ' THRU '29029'                    16090001
                                '29042' THRU '29079'                    16090001
                                '2910 ' THRU '29109'                    16090001
                                '2913 ' THRU '29281'                    16090001
                                '29283' THRU '29289'                    16090001
                                '2938 ' THRU '29399'                    16090001
                                '2950 ' THRU '319  '                    16090001
                                '6483 ' THRU '64834'                    16090001
                                '6484 ' THRU '64844'                    16090001
                                '7992 ' THRU '79929'                    16090001
                                'V170 ', 'V610 ',                       16090001
                                'V611 ', 'V6121',                       16090001
                                'V6141', 'V663 ',                       16090001
                                'V673 ', 'V701 ',                       16090001
                                'V702 ', 'V790 ',                       16090001
                                'V791 ', '9678 '.                       16090001
                       88  :CLM:A-E251-DIAG-VALID                       16080001
                          VALUE '3430 ' THRU '3439 '                    16090001
                                '7070 ' THRU '7079 '                    16100001
                                '7110 ' THRU '7129 '                    16110001
                                '7150 ' THRU '7229 '                    16120001
                                '7240 ' THRU '7289 '                    16130001
                                '7300 ' THRU '7379 '                    16140001
                                '7542 ' THRU '75479'                    16150001
                                '7550 ' THRU '75539'                    16160001
                                '7556 ' THRU '75569'                    16170001
                                '7561 ' THRU '75619'                    16180001
                                '7568 ' THRU '75689'                    16190001
                                '8920 ' THRU '8977 '                    16200001
                                '3556 ' '7140 '.                        16210001
                       88  :CLM:A-HAC-VALID-DIAG                        16080001
                          VALUE '1122 ',                                16090001
                                '24910' THRU '24911'                    16090001
                                '24920' THRU '24921'                    16090001
                                '25010' THRU '25013'                    16090001
                                '25020' THRU '25023'                    16090001
                                '2510 ',                                16090001
                                '59010', '59011',                       16090001
                                '5902 ', '5903 ',                       16090001
                                '59080', '59081',                       16090001
                                '5950 ', '5970 ', '5990 ',              16090001
                                '70723', '70724',                       16090001
                                '800  ' THRU '829  '                    16090001
                                '830  ' THRU '839  '                    16090001
                                '850  ' THRU '854  '                    16090001
                                '925  ' THRU '929  '                    16090001
                                '940  ' THRU '949  '                    16090001
                                '991  ' THRU '994  '                    16090001
                                '99664',                                16090001
                                '9984', '9987',                         16090001
                                '9991', '9996',                         16090001
                                '99931'.                                16090001
                       88  :CLM:A-HAC-VALID-DIAG-2012                   16080001
                          VALUE '99960' THRU '99963',                   16090001
                                '99969',                                16090001
                                'E8765' THRU 'E8767'.                   16090001
                       88  :CLM:A-HAC-VALID-DIAG-2013                   16080001
                          VALUE '99932' THRU '99933'.                   16090001
                       88  :CLM:A-VALID-DIAG-COMBO1                     16080001
                          VALUE '5192 '.                                16090001
                       88  :CLM:A-VALID-DIAG-COMBO2                     16080001
                          VALUE '99667', '99859'.                       16090001
                       88  :CLM:A-VALID-DIAG-COMBO3                     16080001
                          VALUE '27801', '99859'.                       16090001
                       88  :CLM:A-VALID-DIAG-COMBO3-2012                16080001
                          VALUE '53901', '53981'.                       16090001
                       88  :CLM:A-VALID-DIAG-COMBO4                     16080001
                          VALUE '41511', '41519',                       16090001
                                '45340' THRU '45342'.                   16090001
                       88  :CLM:A-VALID-DIAG-COMBO4-2012                16080001
                          VALUE '41513'.                                16090001
                       88  :CLM:A-VALID-DIAG-COMBO5-2013                16080001
                          VALUE '99661' '99859'.                        16090001
                       88  :CLM:A-VALID-DIAG-COMBO6-2013                16080001
                          VALUE '5121 '.                                16090001
                       88  :CLM:A-VALID-EXEMPT-DIAG                     16080001
                          VALUE '137  ' THRU '1398 ',                   16090001
                                '2681 ', '326  ', '412  ',              16090001
                                '438  ' THRU '4389 ', '650  ',          16090001
                                '6607 ' THRU '66074', '677  ',          16090001
                                '905  ' THRU '9099 ',                   16090001
                                'V02  ' THRU 'V079 ',                   16090001
                                'V10  ' THRU 'V149 ',                   16090001
                                'V1501' THRU 'V1509',                   16090001
                                'V151 ' THRU 'V157 ',                   16090001
                                'V1580' THRU 'V1586',                   16090001
                                'V1588' THRU 'V1589', 'V159 ',          16090001
                                'V16  ' THRU 'V299 ',                   16090001
                                'V30  ' THRU 'V392 ',                   16090001
                                'V42  ' THRU 'V469 ',                   16090001
                                'V4960' THRU 'V4977',                   16090001
                                'V4981' THRU 'V4984',                   16090001
                                'V50  ' THRU 'V629 ',                   16090001
                                'V64  ' THRU 'V861 ', 'V8732',          16090001
                                'V874 ' THRU 'V8749',                   16090001
                                'V88  ' THRU 'V8909',                   16090001
                                'V90  ' THRU 'V905 ',                   16090001
                                'E000 ' THRU 'E030 ',                   16090001
                                'E800 ' THRU 'E8079',                   16090001
                                'E810 ' THRU 'E8199',                   16090001
                                'E820 ' THRU 'E8259',                   16090001
                                'E826 ' THRU 'E8299',                   16090001
                                'E830 ' THRU 'E8389',                   16090001
                                'E840 ' THRU 'E8459',                   16090001
                                'E846 ' THRU 'E8489',                   16090001
                                'E8490' THRU 'E8496',                   16090001
                                'E8498' THRU 'E8499',                   16090001
                                'E8831', 'E8832',                       16090001
                                'E8840', 'E8841',                       16090001
                                'E8850', 'E8851',                       16090001
                                'E8852', 'E8853',                       16090001
                                'E8854', 'E8860',                       16090001
                                'E8900' THRU 'E8909',                   16090001
                                'E8930', 'E8932',                       16090001
                                'E894 ', 'E895 ', 'E897 ',              16090001
                                'E8980' THRU 'E8981',                   16090001
                                'E9170' THRU 'E9172',                   16090001
                                'E9175' THRU 'E9176',                   16090001
                                'E9190' THRU 'E9191',                   16090001
                                'E9193' THRU 'E9199',                   16090001
                                'E9210' THRU 'E9219',                   16090001
                                'E9220' THRU 'E9229',                   16090001
                                'E9262',                                16090001
                                'E9280' THRU 'E9288',                   16090001
                                'E9290' THRU 'E9299', 'E959 ',          16090001
                                'E970 ' THRU 'E978 ',                   16090001
                                'E979 ' THRU 'E9799',                   16090001
                                'E9810' THRU 'E9818',                   16090001
                                'E9820' THRU 'E9829',                   16090001
                                'E9850' THRU 'E9857',                   16090001
                                'E9870', 'E9872', 'E989 ',              16090001
                                'E990 ' THRU 'E9991'.                   16090001
                       88  :CLM:A-VALID-EXEMPT-DIAG-2011                16080001
                          VALUE 'E9241'.                                16090001
                       88  :CLM:A-VALID-EXEMPT-DIAG-2012                16080001
                          VALUE '7400 ' THRU '7402 ',                   16090001
                                '74100' THRU '74103',                   16090001
                                '74190' THRU '74193',                   16090001
                                '7420 ' THRU '7424 ',                   16090001
                                '74251' THRU '74253', '74259',          16090001
                                '7428 ' THRU '7429 ',                   16090001
                                '74300' THRU '74306',                   16090001
                                '74310' THRU '74312',                   16090001
                                '74320' THRU '74322',                   16090001
                                '74330' THRU '74339',                   16090001
                                '74341' THRU '74349',                   16090001
                                '74351' THRU '74359',                   16090001
                                '74361' THRU '74369',                   16090001
                                '7438 ' THRU '7439 ',                   16090001
                                '74400' THRU '74405', '74409',          16090001
                                '74421' THRU '74424', '74429', '7441 ', 16090001
                                '74441' THRU '74443', '7443 ',          16090001
                                '74446', '74447', '74449', '7445 ',     16090001
                                '74481' THRU '74484', '74489',          16090001
                                '7449 ', '7450 ',                       16090001
                                '74510' THRU '74512', '74519',          16090001
                                '7452 ' THRU '7455 ',                   16090001
                                '74560', '74561', '74569',              16090001
                                '7457 ' THRU '7459 ',                   16090001
                                '74600' THRU '74602', '74609'           16090001
                                '7461 ' THRU '7467 ',                   16090001
                                '74681' THRU '74689',                   16090001
                                '7469 ', '7470 ',                       16090001
                                '74710' THRU '74711',                   16090001
                                '74720' THRU '74722', '74729',          16090001
                                '74731' THRU '74732', '74739',          16090001
                                '74740' THRU '74742', '74749', '7475 ', 16090001
                                '74760' THRU '74764', '74769',          16090001
                                '74781' THRU '74783', '74789', '7479 ', 16090001
                                '7480 ' THRU '7485 ',                   16090001
                                '74860', '74861', '74869',              16090001
                                '7488 ' THRU '7489 ',                   16090001
                                '74900' THRU '74904',                   16090001
                                '74910' THRU '74914',                   16090001
                                '74920' THRU '74925', '7500 ',          16090001
                                '75010' THRU '75013',                   16090001
                                '75015', '75016', '75019',              16090001
                                '75021' THRU '75027', '75029',          16090001
                                '7503 ' THRU '7509 ',                   16090001
                                '7510 ' THRU '7515 ',                   16090001
                                '75160' THRU '75162', '75169',          16090001
                                '7517 ' THRU '7519 ', '7520 ',          16090001
                                '75210', '75211', '75219', '7522 ',     16090001
                                '75231' THRU '75236', '75239',          16090001
                                '75240' THRU '75247', '75249',          16090001
                                '75251' THRU '75252',                   16090001
                                '75261' THRU '75265', '75269', '7527 ', 16090001
                                '75281', '75289', '7529 ', '7530 ',     16090001
                                '75310' THRU '75317', '75319',          16090001
                                '75320' THRU '75323', '75329',          16090001
                                '7533 ' THRU '7539 ',                   16090001
                                '7540 ' THRU '7542 ',                   16090001
                                '75430' THRU '75433', '75435',          16090001
                                '75440' THRU '75444',                   16090001
                                '75450' THRU '75453', '75459',          16090001
                                '75460' THRU '75462', '75469',          16090001
                                '75470', '75471', '75479',              16090001
                                '75481', '75482', '75489',              16090001
                                '75500' THRU '75502',                   16090001
                                '75510' THRU '75514',                   16090001
                                '75520' THRU '75529',                   16090001
                                '75530' THRU '75539', '7554',           16090001
                                '75550' THRU '75559',                   16090001
                                '75560' THRU '75569',                   16090001
                                '7558 ', '7559 ', '7560 ',              16090001
                                '75610' THRU '75619',                   16090001
                                '7562 ', '7563 ', '7564 ',              16090001
                                '75650' THRU '75659', '7566 ',          16090001
                                '75670' THRU '75673', '75679',          16090001
                                '75681' THRU '75683', '75689', '7569 ', 16090001
                                '7570 ' THRU '7572 ',                   16090001
                                '75731' THRU '75733', '75739',          16090001
                                '7574 ' THRU '7576 ', '7578 ', '7579 ', 16090001
                                '7580 ' THRU '7582 ',                   16090001
                                '75831' THRU '75833', '75839',          16090001
                                '7584 ' THRU '7587 ',                   16090001
                                '75881', '75889', '7589 ',              16090001
                                '7590 ' THRU '7597 ',                   16090001
                                '75981' THRU '75983', '75989', '7599 ', 16090001
                                'E9811', 'V4985',                       16090001
                                'V9081', 'V9083', 'V9089', 'V909 ',     16090001
                                'V9100' THRU 'V9103', 'V9109',          16090001
                                'V9110' THRU 'V9112', 'V9119',          16090001
                                'V9120' THRU 'V9122', 'V9129',          16090001
                                'V9190' THRU 'V9192', 'V9199'.          16090001
                       88  :CLM:A-E479-INVALID-DIAG-ICD10
                          VALUE 'F01    ' THRU 'F099999',
                                'F20    ' THRU 'F999999'.
                       88  :CLM:A-VALID-PSYCH-DIAG                      16080001
                          VALUE 'V11  ' THRU 'V119 ', 'V170 ',          16090001
                                'V402 ' THRU 'V409 ', 'V6121',          16090001
                                'V6123' THRU 'V6129',                   16090001
                                'V6141' THRU 'V6149',                   16090001
                                'V618 ' THRU 'V619 ', 'V624 ',          16090001
                                'V6281' THRU 'V629 ', 'V6542',          16090001
                                'V663 ', 'V673 ', 'V701 ', 'V702 ',     16090001
                                'V7101' THRU 'V7109', 'V790 ',          16090001
                                'V798 ' THRU 'V799 ',                   16090001
                                '2911 ' THRU '2918 ',                   16090001
                                '29182' THRU '2919 ',                   16090001
                                '2921 ' THRU '2929 ',                   16090001
                                '2938 ' THRU '2939 ', '29421',          16090001
                                '2948 ' THRU '2989 ',                   16090001
                                '300  ' THRU '3050 ',                   16090001
                                '3052 ' THRU '3069 ',                   16090001
                                '3070 ' THRU '30758',                   16090001
                                '3076 ' THRU '3099 ',                   16090001
                                '311  ' THRU '3149 ',                   16090001
                                '6483 ' THRU '64844',                   16090001
                                '7992 ' THRU '79929' .                  16090001
                       88  :CLM:A-VALID-PSYCH-DIAG-ICD10
                          VALUE 'F05    ' THRU 'F069999',
                                'F10    ' THRU 'F169999',
                                'F18    ' THRU 'F481999',
                                'F488   ' THRU 'F549999',
                                'F558   ' THRU 'F699999',
                                'F88    ' THRU 'F981999',
                                'F983   ' THRU 'F999999',
                                'O99310 ' THRU 'O993259',
                                'O99340 ' THRU 'O993459',
                                'R450   ' THRU 'R450999',
                                'R45850 ' THRU 'R458999',
                                'Z603   ' THRU 'Z609999',
                                'Z69    ' THRU 'Z699999',
                                'Z714   ' THRU 'Z715299',
                                'Z7381  ' THRU 'Z738199',
                                'F0391  ', 'F552   ',
                                'R453   ', 'R454   ', 'R4681  ',
                                'Z046   ', 'Z600   ',
                                'Z644   ', 'Z658   ',
                                'Z659   ', 'Z72810 ', 'Z72811 ',
                                'Z811   ', 'Z813   ', 'Z814   ',
                                'Z818   ', 'Z8651  ', 'Z8659  ',
                                'Z87890 ', 'Z9183  '.
                      20  :CLM:A-DIAG-CDE                PIC X(7).
                      20  :CLM:A-DIAG-CDE-RED-3
                                       REDEFINES :CLM:A-DIAG-CDE.
                        25 :CLM:A-DIAG-CDE-3             PIC X(3).
                           88 :CLM:A-DIAG-CDE-3-NDPP
                              VALUES 'E66', 'R73'.
                           88 :CLM:A-DIAG-CDE-3-DSMES-MNT
                              VALUES 'E08', 'E09', 'E10', 'E11',
                                     'E13', 'O24'.
                        25 FILLER                        PIC X(4).
                      20  :CLM:A-DIAG-CDE-RED-4
                                       REDEFINES :CLM:A-DIAG-CDE.
                        25 :CLM:A-DIAG-CDE-4             PIC X(4).
                           88 :CLM:A-DIAG-CDE-4-NDPP
                              VALUES 'Z131', 'Z683', 'Z684', 'Z713'.
                           88 :CLM:A-DIAG-CDE-4-DSMES-MNT
                              VALUE  'Z794'.
                        25 FILLER                        PIC X(3).
                      20  :CLM:A-DIAG-CDE-RED-5
                                       REDEFINES :CLM:A-DIAG-CDE.
                        25 :CLM:A-DIAG-CDE-5             PIC X(5).
                           88 :CLM:A-DIAG-CDE-5-NDPP
                              VALUE  'E8881'.
                           88 :CLM:A-DIAG-CDE-5-DSMES-MNT
                              VALUE  'Z7984'.
                        25 FILLER                        PIC X(2).
             07  :CLM:COMMON-GROUP-6.
               10 :CLM:A-GSHP-PCM                        PIC 9(7).
               10 :CLM:A-RECYCLE-EDIT                    PIC 9(4)       *NEW*RNE
                                                           COMP-3.
               10 :CLM:A-VOL-STER-IND                    PIC X(1).
               10 :CLM:A-MED-CRIT-IND                    PIC X(01).     09290000
               10 :CLM:A-DIAG-EMERGENCY-IND              PIC X(01).     09320002
               10 :CLM:A-GSHP-EMERGENCY-IND REDEFINES                   09330002
                  :CLM:A-DIAG-EMERGENCY-IND              PIC X(01).     09340002
               10 :CLM:A-CLM-REPROC-IND                  PIC X(01).     09330000
               10 :CLM:A-CNTY-OF-RES                     PIC X(02).
               10 :CLM:A-PEND-DAYS-DO-NOT-TOUCH          PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-PEND-DAYS-PROVIDER-CCF          PIC 9(3)
                                                           COMP-3.
               10 :CLM:A-ORIGINAL-PEND-DATE              PIC 9(8)
                                                           COMP-3.
               10 :CLM:A-CLM-MANAGED-CARE-DATA.
                   15 :CLM:A-CLM-MC-PLAN.
                       20 :CLM:A-CLM-MC-PLAN-CODE        PIC X(03).
                           88  A-CLM-MC-PLAN-CODE-GHI VALUES
                  '078' '082' '086' '092' '093' '200' '201' '202' '203'
                        '204' '205' '097'.
                       20 :CLM:A-CLM-MC-PLAN-GUARANTEE   PIC X(01).
                           88  NOT-GUARANTEE       VALUE 'N'.
                           88  GUARANTEE           VALUE 'Y'.
                       20 :CLM:A-CLM-MHC-PAYMENT-CODE REDEFINES         09500001
                          :CLM:A-CLM-MC-PLAN-GUARANTEE   PIC X(01).     09510001
                           88 :CLM:A-CLM-MHC-PAYMENT-CODE-DDD
                               VALUE 'B' THRU 'D'                       16470001
                                     'I' THRU 'K'                       16480001
                                     'E' 'S' 'U'
                                     'W' 'X' 'Z' '4'.                   16480001
                           88 :CLM:A-CLM-MHC-PMT-ANGIOEDEMA
                               VALUE '1'.                               16470001
                           88 :CLM:A-CLM-MHC-PMT-ANGIO-HEMO
                               VALUE '2'.                               16470001
                           88 :CLM:A-CLM-MHC-PMT-ANGIO-AIDS
                               VALUE '3'.                               16470001
                           88 :CLM:A-CLM-MHC-PMT-ANGIO-DDD
                               VALUE '4'.                               16470001
                                                                        16470001
                   15 :CLM:A-CLM-MC-CAP-CODE.                           10350002
                       88 :CLM:A-CLM-MC-CAP-PHYDRUG                     10350002
                               VALUE '28499' '48399' '48499' '49399'    10350002
                                     '49499' '71099' '711R1' '711R2'    10350002
                                     '711R3' '77399' '79599' '79699'
                                     '80399' '81099' '81299'            10350002
                                     '813R1' '813R2' '813R3' '823R1'    10350002
                                     '823R2' '823R3' '863R1' '863R2'    10350002
                                     '863R3' '87399' '89599'.           10350002
                       20 :CLM:A-CLM-MC-RISK-ADJUSTED-IND PIC X(03).    10360002
                           88 :CLM:A-CLM-MC-RISK-ADJUSTED-CAP           10370002
                               VALUE '493' '710' '810'.                 10380002
                           88 :CLM:A-CLM-MC-RISK-ADJ-CAP-0501           10370002
                               VALUE '494' '812'.                       10380002
                       20  FILLER                        PIC X(02).     10390002
                   15 :CLM:A-CLM-MC-HBI-CODE             PIC X(05).
                           88  :CLM:A-CLM-MC-HBI-PHYDRUG
                               VALUE 'H2000' 'K2000' 'S2000'.
                   15 :CLM:A-CLM-MC-IN-PLAN              PIC X(01).
                       88  IN-PLAN                 VALUE 'Y'.
                       88  OUT-OF-PLAN             VALUE 'N'.
                       88  UNABLE-TO-DETERMINE     VALUE 'U'.
               10 :CLM:A-HMO-FAMILY-PLANNING-IND         PIC X(01).
                   88  HMO-FAMILY-PLAN             VALUE 'Y'.
                   88  NOT-HMO-FAMILY-PLAN         VALUE ' ' 'N'.
               10 :CLM:A-RETRIEVAL-NUM-MONTHS-X          PIC X(01).
               10 :CLM:A-RETRIEVAL-NUM-MONTHS-N REDEFINES
                  :CLM:A-RETRIEVAL-NUM-MONTHS-X          PIC 9(01).
               10 :CLM:A-CLM-GA-ADJUSTMENT-IND           PIC X(01).
               10 :CLM:A-CLM-MC-ENROLL-DATE              PIC 9(08)
                                                         COMP-3.
               10 :CLM:A-CLM-CSOCI-ENROLLED              PIC X(01).     10751000
                   88  CSOCI-ENROLLED              VALUE 'Y'.           10752000
                   88  NOT-CSOCI-ENROLLED          VALUE 'N'.           10753000
                   88  CSOCI-ENROLLED-NFM          VALUE 'C'.
                   88  :CLM:CSOCI-ENROLLED-ALL     VALUE
                       'Y' 'C' 'I' 'L' 'M' 'H' 'S'.
               10 :CLM:A-CLM-CSOCI-COVERED               PIC X(01).     10754000
                   88  CSOCI-COVERED-MENTAL-HEALTH VALUE 'M'.           10755000
                   88  CSOCI-COVERED-SUBSTANCE-ABUSE                    10755100
                                                   VALUE 'S'.           10755200
                   88  NOT-CSOCI-COVERED           VALUE 'N'.           10756000
                   88  CSOCI-UNKNOWN               VALUE 'U'.           12190001
               10 :CLM:A-CLM-XREF-BYPASS-SW              PIC X(01).     10754000
                   88  BYPASS-ON                   VALUE 'O'.           10755000
                   88  BYPASS-USED                 VALUE 'U'.           10755100
                   88  NO-BYPASS                   VALUE ' '.           10756000
               10 :CLM:A-CLM-CLIA-NUM                    PIC X(10).     19511512
               10 :CLM:A-HIPAA-SUBMIT-SVC-CDE.
                   15 :CLM:A-HIPAA-SUBMIT-PROC-CDE       PIC X(05).
                   15 :CLM:A-HIPAA-SUBMIT-PROC-MOD1      PIC X(02).
                   15 :CLM:A-HIPAA-SUBMIT-PROC-MOD2      PIC X(02).
                   15 :CLM:A-HIPAA-SUBMIT-PROC-MOD3      PIC X(02).
                   15 :CLM:A-HIPAA-SUBMIT-PROC-MOD4      PIC X(02).
               10 :CLM:A-CLM-SEMI-PLCM-CDE               PIC X(01).     19511912
               10 :CLM:A-HIPAA-INTERCHG-CTL-NUM          PIC X(09).     19512012
               10 :CLM:A-PHASE-II-PASSTHRU-IND           PIC X(01).     16900001
               10 :CLM:A-SUBMITTED-RECIP-ID-NUM          PIC X(12).     16900001
               10 :CLM:A-TAXONOMY-CDE                    PIC X(10).
               10 :CLM:A-STATE-INIT-ADJ-IND              PIC X(01).
               10 :CLM:A-CLM-CHK-PASSTHRU-IND            PIC X(01).
               10 :CLM:A-CLM-CHK-PASSTHRU-DTE            PIC 9(08).
               10 :CLM:A-TAXONOMY-CDE-SVC                PIC X(10).
               10 :CLM:A-ZIP-CODE-SVC-ALL                PIC 9(09).
               10 FILLER REDEFINES :CLM:A-ZIP-CODE-SVC-ALL.
                   15 :CLM:A-ZIP-CODE-SVC                PIC 9(05).
                   15 :CLM:A-ZIP-CODE-SVC-4              PIC 9(04).
               10 :CLM:A-ZIP-CODE-BILLING-ALL            PIC 9(09).
               10 FILLER REDEFINES :CLM:A-ZIP-CODE-BILLING-ALL.
                   15 :CLM:A-ZIP-CODE-BILLING            PIC 9(05).
                   15 :CLM:A-ZIP-CODE-BILLING-4          PIC 9(04).
               10 :CLM:A-NPI-XREF-DATE-BILL              PIC 9(08).
               10 :CLM:A-NPI-XREF-DATE-SVC               PIC 9(08).
               10  :CLM:FILLER-5                         PIC X(05).     19512200
               10 :CLM:A-HIPAA-ISA-CLM-SEQ-NBR REDEFINES                16930001
                   :CLM:FILLER-5                         PIC 9(05).     16940001
               10 :CLM:A-HIPAA-VERSION                   PIC X(4).
               10 :CLM:A-ICD-VERSION-INDICATOR           PIC X.
                   88 :CLM:A-ICD10               VALUE '0'.
                   88 :CLM:A-ICD9                VALUE '9' ' '.
                   88 :CLM:A-ICD-BOTH            VALUE 'B'.
               10 :CLM:A-RECYCLE-PRR-NUM                 PIC 9(5).
               10 :CLM:A-SUBMITTED-FACILITY-CD           PIC X(2).
               10 :CLM:A-SUBMITTED-BILL-FREQ             PIC X.
               10 :CLM:A-PRITY-PAYER-PLAN-ID             PIC X(3).
               10 :CLM:A-PRITY-PAYR-PLCYHLDR-LNAM        PIC X(12).
               10 :CLM:A-PRITY-PAYR-PLCYHLDR-FNAM        PIC X(7).
               10 :CLM:A-FMAP-MARS-RPT-SW                PIC X.
               10 :CLM:A-GHI-COBA-ID                     PIC X(05).
               10 :CLM:A-ENHANCED-FFP-AMT-CURR           PIC S9(7)V99
                                                         COMP-3.
               10 :CLM:A-ENHANCED-FFP-AMT-PREV           PIC S9(7)V99
                                                         COMP-3.
               10  FILLER                                PIC X(150).
             07 :CLM:COMMON-RECORD-LENGTH.
               10 :CLM:A-RECORD-LENGTH                   PIC 9(04).
           05  :CLM:CLM-MCARE-PARTA-SEGMENT.
               10 :CLM:TT-A-CLM-MCARE-PARTA-DATA.
                   15 :CLM:TT-A-MCARE-PROV-NUM-X10       PIC X(10).
                   15 FILLER   REDEFINES
                          :CLM:TT-A-MCARE-PROV-NUM-X10.
                       20 :CLM:TT-A-MCARE-PROV-NUM       PIC 9(9).
                       20 FILLER                         PIC X.
                   15 FILLER                             PIC X(5).
                   15 :CLM:TT-A-MCARE-DEDUCT             PIC S9(5)V99.
                   15 :CLM:TT-A-MCARE-COINS              PIC S9(5)V99.
                   15 :CLM:TT-A-MCARE-CHRG-ALLOW         PIC S9(7)V99.
                   15 :CLM:TT-A-MCARE-CHRG-NON-ALLOW     PIC S9(7)V99.
                   15 :CLM:TT-A-MCARE-BILLED-AMT         PIC S9(7)V99.
                   15 :CLM:TT-A-MCARE-PAID               PIC S9(7)V99.
                   15 :CLM:TT-A-MCARE-PAID-DTE           PIC 9(8).
                   15 :CLM:TT-A-MCARE-CLM-NUM            PIC X(14).
                   15 :CLM:TT-A-HIC-NUM                  PIC X(12).
                   15 :CLM:TT-A-MCARE-BLD-DEDUCT         PIC S9(5)V99.
                   15 :CLM:TT-A-MCARE-CLM-TYPE           PIC 9(2).
                       88 :CLM:TT-A-VALID-CLM-TYPE    VALUE 01 02 03.   17100001
                       88 :CLM:TT-A-INPATIENT         VALUE 01.
                       88 :CLM:TT-A-LTC               VALUE 02.
                       88 :CLM:TT-A-OUTPATIENT        VALUE 03.
                   15 :CLM:TT-A-MCARE-PROV-EIN           PIC X(11).
                   15 :CLM:TT-A-MCARE-PROV-SSN           PIC X(11).
                   15 :CLM:TT-A-MCARE-CONTRACTOR-ID      PIC X(5).
                   15 :CLM:TT-A-MCAID-ALLOW              PIC S9(7)V99.
                   15  FILLER                            PIC X(55).
               10 :CLM:TT-A-CLM-OUT-XOVER-SEG.
                 12 :CLM:TTAO-GROUP-1.
                   15 :CLM:TT-A-O-TYPE-BILL-CDE.
                       88 :CLM:TT-A-O-VALID-TYPE-BILL-CDE               17170001
                           VALUE '130' THRU '135' '137' '138'           17180001
                                 '13F' '13G' '13H' '13I' '13J'          17180001
                                 '13K' '13M' '13P'                      17180001
                                 '140' THRU '145' '147' '148'           17190001
                                 '14F' '14G' '14H' '14I' '14J'          17180001
                                 '14K' '14M' '14P'                      17180001
                                 '720' THRU '725' '727' '728' '729'     17200001
                                 '72F' '72G' '72H' '72I' '72J'          17180001
                                 '72K' '72M' '72P'                      17180001
                                 '740' THRU '745' '747' '748'           17210001
                                 '74F' '74G' '74H' '74I' '74J'          17180001
                                 '74K' '74M' '74P'                      17180001
                                 '830' THRU '835' '837' '838'           17220001
                                 '83F' '83G' '83H' '83I' '83J'          17180001
                                 '83K' '83M' '83P'.                     17180001
                       88 :CLM:TT-A-O-RENAL-TYPE-BILL-CDE
                           VALUE '720' THRU '725'
                                 '727' THRU '729'
                                 '72F' '72G' '72H' '72I' '72J'
                                 '72K' '72M' '72P'.
                       20 :CLM:TT-A-O-TYPE-BILL-CLASS    PIC 9(2).
                       20 :CLM:TT-A-O-TYPE-BILL-FREQ     PIC 9(1).
                   15 :CLM:TT-A-O-PAT-ADMIT-TYPE         PIC X(1).
                       88 :CLM:TT-A-O-PAT-VALID-ADMIT-TYP
                           VALUE '1' THRU '3' '5' '9'.                  17310001
                       88 :CLM:TT-A-O-PAT-EMER-ADMIT-TYP
                           VALUE '1' '2' '5'.                           17310001
                   15 :CLM:TT-A-O-PAT-ADMIT-HOUR         PIC 9(2).
                       88 :CLM:TT-A-O-VALID-ADMIT-HOUR                  17330001
                           VALUE 00 THRU 24                             17340001
                                 99.                                    17350001
                   15 :CLM:TT-A-O-PAT-STATUS             PIC 9(2).
                       88 :CLM:TT-A-O-VALID-PAT-STATUS
                           VALUE 01 THRU 19                             17380001
                                 21 THRU 99.                            17390001
                       88 :CLM:TT-A-O-OUTPAT-STATUS  VALUE 01 20 30.    17400001
                 12 :CLM:TTAO-TABLE-1.
                   15 :CLM:TT-A-O-CLM-REV-XOVER-DATA                    17410001
                       OCCURS 45 INDEXED BY                             17420001
                               :CLM:TTAO-INDX   :CLM:TTAO-INDX2.        17420001
                       20 FILL-TT-A-O-REV-CDE            PIC 9.
                       20 :CLM:TT-A-O-REV-CDE            PIC 9(3).
                           88 :CLM:TT-A-O-LAB-REV-CDE                   17440001
                               VALUE 300 THRU 319                       17450001
                                     380 THRU 399.                      17460001
                           88 :CLM:TT-A-O-RENAL-REV-CDE                 17460001
                               VALUE 821 829 831 839                    17460001
                                     841 849 851 859 881.               17460001
                           88 :CLM:TT-A-O-SURG-REV-CDE
                               VALUE 360 361 369 370 374 379 490 499
                                     710 719.
                       20 :CLM:TT-A-O-REV-UNITS          PIC 9(3).
                       20 :CLM:TT-A-O-REV-CHRG           PIC S9(7)V99.
                       20 :CLM:TT-A-O-REV-DTE            PIC 9(8).
                       20 :CLM:TT-A-O-REV-DTE-THRU       PIC 9(8).
                       20 :CLM:TT-A-O-PROC-CDE           PIC X(5).
                           88 :CLM:TT-A-O-VALID-CDE                     17520001
                               VALUE 'G0054' THRU 'G0060'               09370001
                                     'P0000' THRU 'P9999'
                                     'Q0111' THRU 'Q0116'               17540001
                                     'W8000' THRU 'W8899'               17550001
                                     'W8901' THRU 'W8999'               17560001
                                     '80000' THRU '89999'               09420001
                                     'G0001' 'G0026' 'G0027' 'G0123'
                                     'G0141' 'G0306' 'G0307' 'G0328'
                                     'G0430' 'G0431' 'G0461' 'G0462'
                                     'G0477' 'G0478' 'G0479' 'G0480'
                                     'G0481' 'G0482' 'G0483' 'G0659'
                                     'G9784' 'G9785' 'G9786' 'G9806'
                                     'G9823' 'G9824' 'G9840' 'G9841'
                                     '36415' '36416' '36430' '36440'
                                     '36450' '36455' '36460' '0023T'
                                     'S9529' 'G0434' 'G9843' 'G2023'
                                     'G2024' 'U0001' 'U0002' 'U0003'
                                     'U0004' 'C9803' 'U0005'.
                       20 :CLM:TT-A-O-PROC-CDE-RE REDEFINES
                                                 :CLM:TT-A-O-PROC-CDE.
                          25 :CLM:TT-A-O-PROC-CDE-FIRST-4  PIC X(4).
                                88 :CLM:TT-A-O-PRC-CD-FIRST4-NUM
                                  VALUE '0000' THRU '9999'.
                          25 :CLM:TT-A-O-PROC-CDE-LAST-1   PIC X(1).
                                88 :CLM:TT-A-O-PROC-CDE-LAST1-AL
                                  VALUE 'U' 'M'.
                       20 :CLM:TT-A-O-CLINIC-ALL.
                           25 :CLM:TT-A-O-CLINIC-CDE     PIC X(2)       17590001
                               OCCURS 4 INDEXED BY                      17600001
                                    :CLM:TTAO-CLIN-INDX.                17600001
                 12 :CLM:TTAO-GROUP-2.
                   15 :CLM:TT-A-O-REV-CDE-CTR            PIC 9(2).
                   15  FILLER                            PIC X(23).
                 12 :CLM:TTAO-TABLE-2.
                   15 :CLM:TT-A-O-CLM-SURG-DATA-ALL.
                       20 :CLM:TT-A-O-CLM-SURG-DATA                     17640001
                           OCCURS 6 INDEXED BY :CLM:TTAO-SURG-INDX.
                           25 :CLM:TT-A-O-SURG-PROC      PIC X(5).
                           25 FILL-TT-A-O-SURG-PROC      PIC X(2).
                           25 :CLM:TT-A-O-SURG-DTE       PIC 9(8).
                 12 :CLM:TTAO-TABLE-3.
                   15 :CLM:TT-A-O-CLM-OCCUR-DATA-ALL.
                       20 :CLM:TT-A-O-CLM-OCCUR-DATA                    17690001
                           OCCURS 8 INDEXED BY                          17700001
                                :CLM:TTAO-OCCUR-INDX.                   17700001
                           25 :CLM:TT-A-O-OCCUR-CDE      PIC X(2).
                               88 :CLM:TT-A-O-VALID-OCCUR-CDE
                                   VALUE '01' THRU '06'                 17730001
                                    '  ' 'A1' 'A2' 'A3' 'B1' 'B2'       17740001
                                    'B3' 'C1' 'C2' 'C3' 'M3' 'M4' '09'  17750001
                                    '10' '11' '16' '17' '18' '19'       17760001
                                    '20' '23' '24' '25' '28' '29' '30'  17760001
                                    '32' '33' '35' '37' '38' '39' '40'  17780001
                                    '41' '43' '45' '46' '50' '51' '52'  17780001
                                    '54' '55' '70' '74' '79'.           17790001
                               88 :CLM:TT-A-O-UB04EX-OCCUR-CDE
                                   VALUE 'MR' 'M0' THRU 'M4'            17730001
                                         '70' THRU '80'.                17730001
                           25 :CLM:TT-A-O-OCCUR-DTE      PIC 9(8).
                 12 :CLM:TTAO-TABLE-4.
                   15 :CLM:TT-A-O-COND-CDE-ALL.
                       20 :CLM:TT-A-O-COND-CDE           PIC X(2)
                           OCCURS 11 INDEXED BY :CLM:TTAO-COND-INDX.    17830001
                           88 :CLM:TT-A-O-VALID-COND-CDE
                               VALUE '  '                               17850001
                                     'AA' THRU 'AN'                     17850001
                                     'A0' 'A2' 'A3'                     17920001
                                     'A5' THRU 'A9'                     17920001
                                     'B0' THRU 'B3'                     17860001
                                     'C1' THRU 'C7'                     17860001
                                     'DR'                               17860001
                                     'D0' THRU 'D9'                     17860001
                                     'E0' 'G0' 'H0'                     17860001
                                     '01' THRU '34'                     17860001
                                     '36' THRU '44'                     17890001
                                     '46' THRU '48'                     17890001
                                     '55' THRU '58'                     17890001
                                     '60' THRU '79' '81' '84' '85'.     17900001
                           88 :CLM:TT-A-O-VALID-COND-CDE-EMC
                               VALUE '  '                               17960001
                                     'AA' THRU 'AN'                     17960001
                                     'A0' 'A2' 'A3'                     18020001
                                     'A5' THRU 'A9'                     18020001
                                     'B0' THRU 'B3'                     17860001
                                     'C1' THRU 'C7'                     17860001
                                     'D0' THRU 'D9'                     17860001
                                     'E0' 'G0' 'H0'                     18030001
                                     '01' THRU '34'                     17970001
                                     '36' THRU '44'                     17990001
                                     '46' THRU '48'                     17990001
                                     '55' THRU '58'                     17990001
                                     '60' THRU '79' '85'.               18000001
                           88 :CLM:TT-A-O-UB04EX-COND-CDE
                               VALUE 'A7' 'A8' '47' '85'.               17850001
                           88 :CLM:TT-A-O-UB04IN-COND-CDE
                               VALUE '49' '50'.                         17850001
                           88 :CLM:TT-A-O-LIBAL-COND-CDE
                               VALUE '01' '02' '03' '05' '08' '10'.     18060001
                           88 :CLM:TT-A-O-DIAL-COND-CDE
                               VALUE '71' THRU '76' '84'.
                 12 :CLM:TTAO-TABLE-5.
                   15 :CLM:TT-A-O-PAT-PAYOR-ID-ALL.
                       20 :CLM:TT-A-O-PAT-PAYOR-ID       PIC X(3)
                           OCCURS 5 INDEXED BY :CLM:TTAO-PAY-INDX.
                 12 :CLM:TTAO-GROUP-3.
                   15 :CLM:TT-A-O-HOSP-PROG-IND          PIC X(2).
                       88 :CLM:TT-A-O-VALID-HOSP-PROG-IND
                           VALUE '01' THRU '09'                         18120001
                                 '  '.                                  18130001
                   15 :CLM:TT-A-O-CLM-AHS-IND            PIC X(1).
                   15 :CLM:TT-A-O-STER-HYST-CONST-DTE    PIC 9(8).
                   15 :CLM:TT-A-O-STER-CONST-DAYS        PIC 9(3).
                   15 :CLM:TT-A-O-STER-INTERP-IND        PIC X(1).
                   15 :CLM:TT-A-O-STER-RACE              PIC X(1).
                   15 :CLM:TT-A-O-STER-TIME-REASON       PIC 9(1).
                   15 :CLM:TT-A-O-CLM-ABORT-CDE          PIC X(1).
                   15 :CLM:TT-A-O-CLM-ABORT-REASON       PIC X(1).
                   15 :CLM:TT-A-O-PHYS-ATTENDING         PIC X(7).
                   15 :CLM:TT-A-O-PHYS-OTHER             PIC X(7).
                   15 :CLM:TT-A-O-PHYS-ATTEND-NPI        PIC X(10).
                   15 :CLM:TT-A-O-PHYS-OTHER-NPI         PIC X(10).
                   15 :CLM:TT-A-O-BLD-UNITS              PIC 9(2).
                   15 :CLM:TT-A-O-BLD-UNITS-REPL         PIC 9(2).
                   15 :CLM:TT-A-O-BLD-UNITS-NOT-REPL     PIC 9(2).
                   15 :CLM:TT-A-O-BLD-UNITS-DED          PIC 9(2).
                   15 :CLM:TT-A-O-MED-RECORD-NUM         PIC X(16).
                   15 :CLM:TT-A-O-UB-VERSION             PIC X(02).
                      88 :CLM:TT-A-O-UB04  VALUE '04'.
                 12 :CLM:TTAO-TABLE-6.
                   15 :CLM:TT-A-O-OCCUR-SPAN-DATA-ALL.
                      20 :CLM:TT-A-O-OCCUR-SPAN-DATA
                          OCCURS 4 INDEXED BY :CLM:TTAO-SPAN-INDX.
                         25 :CLM:TT-A-O-OCCUR-SPAN-CDE   PIC X(02).
                            88 :CLM:TT-A-O-UB04-VALID-SPAN-CDE
                              VALUE 'MR'
                                    'M0' THRU 'M4'
                                    '70' THRU '80'.
                         25 :CLM:TT-A-O-OCCUR-SPAN-FDTE  PIC X(08).
                         25 :CLM:TT-A-O-OCCUR-SPAN-TDTE  PIC X(08).
                 12 :CLM:TTAO-TABLE-7.
                   15 :CLM:TT-A-O-PAT-RSN-VISIT-ALL.
                      20 :CLM:TT-A-O-PAT-RSN-VISIT-DATA
                          OCCURS 3 INDEXED BY :CLM:TTAO-PAT-INDX.
                         25 :CLM:TT-A-O-PAT-RSN-VISIT    PIC X(07).
                 12 :CLM:TTAO-TABLE-8.
                   15 :CLM:TT-A-O-EIC-CDES-ALL.
                      20 :CLM:TT-A-O-EIC-CDES-DATA
                          OCCURS 3 INDEXED BY :CLM:TTAO-EIC-INDX.
                         25 :CLM:TT-A-O-EIC-CDE          PIC X(07).
                 12 :CLM:TTAO-GROUP-5.
                   15  FILLER                            PIC X(17).
                   15 :CLM:TT-A-O-PHYS-OPERATING-1       PIC X(7).
                   15 :CLM:TT-A-O-PHYS-OPER1-NPI         PIC X(10).
                   15 :CLM:TT-A-O-PHYS-OPERATING-2       PIC X(7).
                   15 :CLM:TT-A-O-PHYS-OPER2-NPI         PIC X(10).
                   15 :CLM:TT-A-O-PHYS-REFERRING         PIC X(7).
                   15 :CLM:TT-A-O-PHYS-REFER-NPI         PIC X(10).
                   15 :CLM:TT-A-O-NDC-CODE               PIC X(11).
                   15 :CLM:TT-A-O-UNIT-OF-MEASURE        PIC X(2).
                   15 :CLM:TT-A-O-METRIC-UNITS           PIC S9(8)V999
                                                         COMP-3.
                   15 :CLM:TT-A-O-DRUG-COST-ALLOWANCE    PIC S9(7)V99
                                                         COMP-3.
                   15 :CLM:TT-A-O-ATTEND-TAXOMY-CD       PIC X(10).
                   15 :CLM:TT-A-O-CLM-DRUG-PRICE         PIC S9(7)V9(6)
                                                             COMP-3.
                   15 :CLM:TT-A-O-DOSE-FORM-IND          PIC X(1).
                      88 :CLM:TT-A-O-DOSE-IS-TAB-OR-CAP      VALUE 'Y'.
                   15 :CLM:TT-A-O-DRUG-CLASS             PIC X(1).
                   15 :CLM:TT-A-O-GENERIC-CNTL-NUM       PIC X(5).
                   15 :CLM:TT-A-O-GENERIC-SEQ-NUM        PIC X(6).
                   15 :CLM:TT-A-O-MAC-PRICE              PIC S9(7)V9(6)
                                                             COMP-3.
                   15 :CLM:TT-A-O-REBATE-IND             PIC X(1).
                   15 :CLM:TT-A-O-STATE-MAC-PRICE        PIC S9(7)V9(6)
                                                             COMP-3.
                   15 :CLM:TT-A-O-THERAPEUTIC-CLS-GN     PIC X(2).
                   15 :CLM:TT-A-O-THERAPEUTIC-CLS-SP     PIC X(3).
                   15 :CLM:TT-A-O-ICD-ALLOWED-IND        PIC X(1).
                   15  FILLER                            PIC X(299).
               10 :CLM:TT-A-CLM-INP-XOVER-RED REDEFINES                 18300001
                  :CLM:TT-A-CLM-OUT-XOVER-SEG.                          18310001
                11 :CLM:TT-A-CLM-INP-XOVER-SEG.                         18300001
                 12 :CLM:TTAI-GROUP-1.
                   15 :CLM:TT-A-I-TYPE-BILL-CDE.
                       88 :CLM:TT-A-I-VALID-TYPE-BILL-CDE               18330001
                           VALUE '110' THRU '115' '117' '118'           18340001
                                 '11F' '11G' '11H' '11I' '11J'          17180001
                                 '11K' '11M' '11P'                      17180001
                                 '120' THRU '125' '127' '128'           18350001
                                 '12F' '12G' '12H' '12I' '12J'          17180001
                                 '12K' '12M' '12P'                      17180001
                                 '180' THRU '185' '187' '188'           18360001
                                 '18F' '18G' '18H' '18I' '18J'          17180001
                                 '18K' '18M' '18P'.                     17180001
                       20 :CLM:TT-A-I-TYPE-BILL-CLASS    PIC 9(2).
                       20 :CLM:TT-A-I-TYPE-BILL-FREQ     PIC 9(1).
                   15 :CLM:TT-A-I-PAT-ADMIT-DTE          PIC 9(8).
                   15 :CLM:TT-A-I-PAT-ADMIT-HOUR         PIC 9(2).
                       88 :CLM:TT-A-I-VALID-ADMIT-HOUR                  18420001
                           VALUE 00 THRU 24                             18430001
                                 99.                                    18440001
                   15 :CLM:TT-A-I-PAT-ADMIT-TYPE         PIC X(1).
                       88 :CLM:TT-A-I-PAT-VALID-ADMIT-TYP
                           VALUE '1' THRU '5' '9'.                      18470001
                       88 :CLM:TT-A-I-PAT-NBORN-ADMIT-TYP
                           VALUE '4'.                                   18500001
                       88 :CLM:TT-A-I-PAT-EMER-ADMIT-TYP
                           VALUE '1' '2' '4' '5'.                       18500001
                   15 :CLM:TT-A-I-PAT-ADMIT-SOURCE       PIC X(1).
                       88 :CLM:TT-A-I-PAT-VALID-ADMIT-SRC
                           VALUE '1' THRU '9'.                          18530001
                       88 :CLM:TT-A-I-PAT-NBORN-ADMIT-SRC
                           VALUE '1' THRU '6'.                          18550001
                       88 :CLM:TT-A-I-UB04EX-ADMIT-SRC
                           VALUE '3'.                                   18530001
                       88 :CLM:TT-A-I-UB04EX-NBRN-ADM-SRC
                           VALUE '1' THRU '4'.                          18530001
                       88 :CLM:TT-A-I-VALID-ADM-SRC-E068
                           VALUE '1' '2' '4' '5' '6' '8' '9'
                                 'D' 'E' 'F' 'G'.
                   15 :CLM:TT-A-I-PAT-STATUS             PIC 9(2).
                       88 :CLM:TT-A-I-VALID-PAT-STATUS
                           VALUE 01 THRU 19                             18580001
                                 21 THRU 99.                            18590001
                       88 :CLM:TT-A-I-INPAT-STATUS
                           VALUE 01 THRU 07                             18610001
                                 81 THRU 95
                           20 21 30 43 50 51 61 62 63 64 65 66 69 70.   18620001
                       88 :CLM:TT-A-I-INPAT-PAT-STATUS VALUE 30.        18630001
                       88 :CLM:TT-A-I-UB04EX-INPAT-STATUS
                           VALUE 08.                                    18610001
                   15 :CLM:TT-A-I-PAT-ILLNESS-SEVER      PIC X(1).
                   15 :CLM:TT-A-I-PAT-BIRTHWEIGHT        PIC 9(5).
                       88 :CLM:TT-A-I-VALID-BIRTHWEIGHT
                           VALUE 00200 THRU 09000.                      18670001
                 12 :CLM:TTAI-TABLE-1.
                   15 :CLM:TT-A-I-CLM-REV-XOVER-DAT-A.
                       20 :CLM:TT-A-I-CLM-REV-XOVER-DATA                18690001
                           OCCURS 45 INDEXED BY                         18700001
                                :CLM:TTAI-INDX   :CLM:TTAI-INDX2.       18700001
                           25 FILL-TT-A-I-REV-CDE        PIC 9.
                           25 :CLM:TT-A-I-REV-CDE        PIC 9(3).
                               88 :CLM:TT-A-I-REV-CDE-E1647             21790001
                                   VALUE  183 185  190 THRU 196.        21800001
                           25 :CLM:TT-A-I-REV-UNITS      PIC 9(3).
                           25 :CLM:TT-A-I-REV-CHRG       PIC S9(7)V99.
                           25 :CLM:TT-A-I-REV-MCAID-CHRG PIC S9(7)V99.
                 12 :CLM:TTAI-GROUP-2.
                   15 :CLM:TT-A-I-REV-MCAID-CHG-DOC      PIC S9(7)V99.
                   15 :CLM:TT-A-I-REV-CDE-CTR            PIC 99.
                   15 :CLM:TT-A-I-MCARE-COINS-DAYS       PIC S9(03)
                                                           COMP-3.
                   15 :CLM:TT-A-I-MCARE-LIF-RSRV-DYS     PIC S9(03)
                                                           COMP-3.
                   15  FILLER                            PIC X(06).
                   15 :CLM:TT-A-I-DRG-CDE-SEV            PIC X(1).
                   15 :CLM:TT-A-I-DRG-CDE                PIC X(3).
                       88 :CLM:TT-A-I-NEWBORN-DRG-CDE
                       VALUE '600' THRU '635' '641'.                    21800001
                   15 :CLM:TT-A-I-DAYS-ACUTE             PIC 9(3).
                   15 :CLM:TT-A-I-DAYS-SNF               PIC 9(3).
                   15 :CLM:TT-A-I-DAYS-ICF               PIC 9(3).
                   15 :CLM:TT-A-I-DAYS-RESIDENTIAL       PIC 9(3).
                   15 :CLM:TT-A-I-DAYS-COVERED           PIC 9(3).
                   15 :CLM:TT-A-I-DAYS-NON-COVERED       PIC 9(3).
                   15 :CLM:TT-A-I-OUTLIER-IND            PIC X(1).
                   15 :CLM:TT-A-I-HOSP-EXEMPT-IND        PIC X(1).
                   15 :CLM:TT-A-I-HOSP-PROG-IND          PIC X(2).
                       88 :CLM:TT-A-I-VALID-HOSP-PROG-IND
                           VALUE '01' THRU '09'                         18950001
                                 '  '.                                  18960001
                   15 :CLM:TT-A-I-CLM-AHS-IND            PIC X(1).
                   15 :CLM:TT-A-I-HOSP-EXEMPT-RATE       PIC S9(3)V99.
                   15 :CLM:TT-A-I-NY-HOSP-RATE-CDE       PIC 9(4).
                   15  FILLER                            PIC X(8).
                   15 :CLM:TT-A-I-CLM-POA-DATA-ALL.
                       20 :CLM:TT-A-I-CLM-POA-DATA
                          OCCURS 17 INDEXED BY :CLM:TTAI-POA-INDX.
                           25 :CLM:TT-A-I-POA-IND        PIC X(1).
                               88 :CLM:TT-A-I-VALID-POA-IND
                                  VALUE 'N' 'U' 'W' 'Y' '1'.
                               88 :CLM:TT-A-I-VALID-MAPRGRPR-POA
                                  VALUE 'W' 'Y'.
                               88 :CLM:TT-A-I-VALID-N-U-POA
                                  VALUE 'N' 'U'.
                               88 :CLM:TT-A-I-VALID-1-POA
                                  VALUE '1'.
                 12 :CLM:TTAI-TABLE-2.
                   15 :CLM:TT-A-I-CLM-SURG-DATA-ALL.
                       20 :CLM:TT-A-I-CLM-SURG-DATA                     19020001
                           OCCURS 6 INDEXED BY :CLM:TTAI-SURG-INDX.
                           25 :CLM:TT-A-I-SURG-PROC      PIC X(7).      *NEW*RNE
                               88 :CLM:TT-A-I-VALID-SURG-COMBO1
                                   VALUE '3610 ' THRU '3619 '.          17730001
                               88 :CLM:TT-A-I-VALID-SURG-COMBO2
                                   VALUE '8101 ' THRU '8108 ',          17730001
                                         '8123 ' THRU '8124 ',          17730001
                                         '8131 ' THRU '8138 ',          17730001
                                         '8183 ', '8185 '.              17730001
                               88 :CLM:TT-A-I-VALID-SURG-COMBO3
                                   VALUE '4438 ', '4439 ', '4495 '.     17730001
                               88 :CLM:TT-A-I-VALID-SURG-COMBO4
                                   VALUE '0085 ' THRU '0087 ',          17730001
                                         '8151 ' THRU '8152 ',          17730001
                                         '8154 '.                       17730001
                               88 :CLM:TT-A-I-VAL-SURG-CMBO5-2013
                                VALUE '0050 ' THRU '0054 ',             17730001
                                      '3780 ' THRU '3783 ',             17730001
                                      '3785 ' THRU '3787 ',             17730001
                                      '3794 ', '3796', '3798',          17730001
                                      '3774 ' THRU '3777',              17730001
                                      '3779 '.                          17730001
                               88 :CLM:TT-A-I-VAL-SURG-CMBO6-2013
                                VALUE '3893 '.                          17730001
                           25 :CLM:TT-A-I-SURG-DTE       PIC 9(8).      *NEW*RNE
                 12 :CLM:TTAI-GROUP-3.
                   15 :CLM:TT-A-I-BLD-UNITS              PIC 9(2).
                   15 :CLM:TT-A-I-BLD-UNITS-REPL         PIC 9(2).
                   15 :CLM:TT-A-I-BLD-UNITS-NOT-REPL     PIC 9(2).
                   15 :CLM:TT-A-I-BLD-UNITS-DED          PIC 9(2).
                 12 :CLM:TTAI-TABLE-3.
                   15 :CLM:TT-A-I-CLM-OCCUR-DATA-ALL.
                       20 :CLM:TT-A-I-CLM-OCCUR-DATA                    19110001
                           OCCURS 8 INDEXED BY :CLM:TTAI-OCCUR-INDX.    19120001
                           25 :CLM:TT-A-I-OCCUR-CDE      PIC X(2).
                               88 :CLM:TT-A-I-VALID-OCCUR-CDE
                                   VALUE '01' THRU '06'                 19150001
                                         '16' THRU '26'                 19160001
                                         '31' THRU '39'                 19170001
                                         '  ' 'A1' 'A2' 'A3' 'A4' 'B1'  19180001
                                         'B2' 'B3' 'C1' 'C2' 'C3' 'M3'  19180001
                                         'M4' '09' '10' '11' '42' '43'  19190001
                                         '45' '46' '47' '50' '52' '54'  19200001
                                         '55' '60' '61' '70' '71' '74'  19200001
                                         '79'.
                               88 :CLM:TT-A-I-UB04EX-OCCUR-CDE
                                   VALUE 'MR' 'M0' THRU 'M4' '60' '61'  17730001
                                         '70' THRU '80'.                17730001
                           25 :CLM:TT-A-I-OCCUR-DTE      PIC 9(8).
                 12 :CLM:TTAI-TABLE-4.
                   15 :CLM:TT-A-I-COND-CDE-ALL.
                       20 :CLM:TT-A-I-COND-CDE           PIC X(2)
                           OCCURS 11 INDEXED BY :CLM:TTAI-COND-INDX.    19250001
                           88 :CLM:TT-A-I-VALID-COND-CDE
                               VALUE '  '                               19270001
                                     'AA' THRU 'AN'                     19270001
                                     'A0' 'A2' 'A3'                     19270001
                                     'A5' THRU 'A9'                     19340001
                                     'B0' THRU 'B3'                     17860001
                                     'C1' THRU 'C7'                     17860001
                                     'DR'                               19280001
                                     'D0' THRU 'D9'                     17860001
                                     'E0' 'H0'                          17860001
                                     '01' THRU '34'                     19310001
                                     '36' THRU '40' '42' '43'           19310001
                                     '46' THRU '48'                     19310001
                                     '55' THRU '58'                     19320001
                                     '60' THRU '69'                     19320001
                                     '71' THRU '80' '81'.               19330001
                           88 :CLM:TT-A-I-VALID-COND-CDE-EMC
                               VALUE '  '                               19380001
                                     'AA' THRU 'AN'                     19380001
                                     'A0' 'A2' 'A3'                     19440001
                                     'A5' THRU 'A9'                     19440001
                                     'B0' THRU 'B3'                     17860001
                                     'C1' THRU 'C7'                     19450001
                                     'D0' THRU 'D9'                     17860001
                                     'E0' 'H0'                          17860001
                                     '01' THRU '34'                     19390001
                                     '36' THRU '40' '42' '43'           19410001
                                     '46' THRU '48'                     19420001
                                     '55' THRU '58'                     19420001
                                     '60' THRU '69'                     19420001
                                     '71' THRU '80'.                    19430001
                           88 :CLM:TT-A-I-UB04EX-COND-CDE
                               VALUE 'A7' 'A8' '47'.                    19270001
                           88 :CLM:TT-A-I-UB04IN-COND-CDE
                               VALUE '49' '50'.                         19270001
                           88 :CLM:TT-A-I-LIBAL-COND-CDE
                               VALUE '01' '02' '03' '05' '08' '10'.     19480001
                 12 :CLM:TTAI-TABLE-5.
                   15 :CLM:TT-A-I-PAT-PAYOR-ID-ALL.
                       20 :CLM:TT-A-I-PAT-PAYOR-ID       PIC X(3)
                           OCCURS 5 INDEXED BY :CLM:TTAI-PAY-INDX.
                 12 :CLM:TTAI-GROUP-4.
                   15 :CLM:TT-A-I-STER-HYST-CONST-DTE    PIC 9(8).
                   15 :CLM:TT-A-I-STER-CONST-DAYS        PIC 9(3).
                   15 :CLM:TT-A-I-STER-INTERP-IND        PIC X(1).
                   15 :CLM:TT-A-I-STER-RACE              PIC X(1).
                   15 :CLM:TT-A-I-STER-TIME-REASON       PIC 9(1).
                   15 :CLM:TT-A-I-CLM-ABORT-CDE          PIC X(1).
                   15 :CLM:TT-A-I-CLM-ABORT-REASON       PIC X(1).
                   15 :CLM:TT-A-I-PHYS-ATTENDING         PIC X(7).
                   15 :CLM:TT-A-I-PHYS-OTHER             PIC X(7).
                   15 :CLM:TT-A-I-PHYS-ATTEND-NPI        PIC X(10).
                   15 :CLM:TT-A-I-PHYS-OTHER-NPI         PIC X(10).
                   15 :CLM:TT-A-I-PSRO-UR-THRU-DTE       PIC 9(8).
                   15 :CLM:TT-A-I-PSRO-UR-APPROV-IND     PIC X(1).
                       88 :CLM:TT-A-I-VALID-PSRO-UR-APROV
                           VALUE '1' THRU '6'                           19640001
                                 ' '.                                   19650001
                       88 :CLM:TT-A-I-INPAT-PSRO-UR-APROV
                           VALUE '3'.                                   19670001
                   15 :CLM:TT-A-I-PSRO-UR-FROM-DTE       PIC 9(8).
                   15 :CLM:TT-A-I-MED-RECORD-NUM         PIC X(16).
                   15 :CLM:TT-A-I-UB-VERSION             PIC X(02).
                      88 :CLM:TT-A-I-UB04  VALUE '04'.
                 12 :CLM:TTAI-TABLE-6.
                   15 :CLM:TT-A-I-OCCUR-SPAN-DATA-ALL.
                      20 :CLM:TT-A-I-OCCUR-SPAN-DATA
                          OCCURS 4 INDEXED BY :CLM:TTAI-SPAN-INDX.
                         25 :CLM:TT-A-I-OCCUR-SPAN-CDE   PIC X(02).
                            88 :CLM:TT-A-I-UB04-VALID-SPAN-CDE
                              VALUE 'MR' '82'
                                    'M0' THRU 'M4'
                                    '70' THRU '80'.
                         25 :CLM:TT-A-I-OCCUR-SPAN-FDTE  PIC X(08).
                         25 :CLM:TT-A-I-OCCUR-SPAN-TDTE  PIC X(08).
                 12 :CLM:TTAI-GROUP-5.
                   15 FILLER                             PIC X(05).
                   15 :CLM:TT-A-I-ADMIT-DIAGNOSIS        PIC X(07).
                 12 :CLM:TTAI-TABLE-7.
                   15 :CLM:TT-A-I-PAT-RSN-VISIT-ALL.
                      20 :CLM:TT-A-I-PAT-RSN-VISIT-DATA
                          OCCURS 3 INDEXED BY :CLM:TTAI-PAT-INDX.
                         25 :CLM:TT-A-I-PAT-RSN-VISIT    PIC X(07).
                 12 :CLM:TTAI-TABLE-8.
                   15 :CLM:TT-A-I-EIC-CDES-ALL.
                      20 :CLM:TT-A-I-EIC-CDES-DATA
                          OCCURS 3 INDEXED BY :CLM:TTAI-EIC-INDX.
                         25 :CLM:TT-A-I-EIC-CDE          PIC X(07).
                 12 :CLM:TTAI-GROUP-6.
                   15  FILLER                            PIC X(17).
                   15 :CLM:TT-A-I-PHYS-OPERATING-2       PIC X(7).
                   15 :CLM:TT-A-I-PHYS-OPER2-NPI         PIC X(10).
                   15 :CLM:TT-A-I-PHYS-REFERRING         PIC X(7).
                   15 :CLM:TT-A-I-PHYS-REFER-NPI         PIC X(10).
                   15 :CLM:TT-A-I-ORIG-DRG-CDE           PIC X(3).
                   15 :CLM:TT-A-I-PHYS-OPERATING-1       PIC X(7).
                   15 :CLM:TT-A-I-PHYS-OPER1-NPI         PIC X(10).
                   15 :CLM:TT-A-I-ATTEND-TAXOMY-CD       PIC X(10).
                   15 :CLM:TT-A-FILLER-CCB280            PIC X(04).
                   15 FILLER REDEFINES :CLM:TT-A-FILLER-CCB280.
                      20 :CLM:TT-A-I-SPC-FROM-DATE       PIC 9(8) COMP.
                   15 :CLM:TT-A-I-ORIG-DRG-CDE-SEV       PIC X(1).
                   15 :CLM:TT-A-I-CURRENT-PSC            PIC 9(03).
                   15 FILLER                             PIC X(02).
                11 FILLER                                PIC X(1153).   18300001
               10 :CLM:TT-A-CLM-LTC-CLM-RED     REDEFINES               19710001
                  :CLM:TT-A-CLM-OUT-XOVER-SEG.                          19720001
                11 :CLM:TT-A-CLM-LTC-CLM-SEGMENT.                       19710001
                 12 :CLM:TTAL-GROUP-1.
                   15 :CLM:TT-A-LTC-ADMIT-DTE            PIC 9(8).
                   15 :CLM:TT-A-LTC-ADMIT-CDE            PIC X(1).
                   15 :CLM:TT-A-LTC-PHARM-CAP-DAY        PIC 9(3).
                   15 :CLM:TT-A-LTC-BEGIN-DAYS-PAID      PIC 9(3).
                   15 :CLM:TT-A-LTC-END-DAYS-PAID        PIC 9(3).
                   15 :CLM:TT-A-LTC-PROV-RATE-AMT        PIC S9(4)V99.
                   15 :CLM:TT-A-LTC-LEVEL-OF-CARE        PIC X(1).
                   15 :CLM:TT-A-LTC-GEN-STATUS-CDE       PIC X(1).
                       88 TT-A-LTC-GEN-STATUS-DISCHARGED
                           VALUE '1' THRU '4'
                                 '6' '8' '9'.
                   15 :CLM:TT-A-LTC-PAT-PMT              PIC S9(5)V99.
                   15 :CLM:TT-A-LTC-OTHER-PMT            PIC S9(5)V99.
                   15 :CLM:TT-A-LTC-COUNTY-OF-CHRG       PIC 9(2).
                       88 :CLM:TT-A-LTC-VALID-CNTY-OF-CHG
                           VALUE 01 THRU 21.                            19850001
                   15 :CLM:TT-A-LTC-MCARE-COINS-DAYS     PIC 9(3).
                   15 :CLM:TT-A-LTC-PD-LV-DAYS-HOSP      PIC 9(2).
                   15 :CLM:TT-A-LTC-PD-LV-DAYS-THERP     PIC 9(2).
                   15 :CLM:TT-A-LTC-THERP-DAYS-USED      PIC 9(2).
                 12 :CLM:TTAL-TABLE-1.
                   15 :CLM:TT-A-LTC-CLM-LV-DATA-ALL.
                       20 :CLM:TT-A-LTC-CLM-LV-DATA                     19910001
                           OCCURS 5 INDEXED BY :CLM:TTAL-LV-INDX.       19920001
                           25 :CLM:TT-A-LTC-LV-TYPE      PIC X(1).
                               88 :CLM:TT-A-LTC-VALID-LV-TYPE
                                   VALUE 'H' 'M' 'T'.                   19950001
                           25 :CLM:TT-A-LTC-LV-DTE       PIC 9(8)
                                                             COMP-3.
                           25 :CLM:TT-A-LTC-LV-DTE-THRU  PIC 9(8)
                                                             COMP-3.
                           25 :CLM:TT-A-LTC-LV-PAID      PIC 9(2).
                          25  FILLER                    PIC X(2).
                12 :CLM:TTAL-GROUP-2.
                  15 :CLM:TT-A-LTC-PHYS-ATTENDING       PIC X(7).
                  15 :CLM:TT-A-LTC-PHYS-ATTEND-NPI      PIC X(10).
                  15 :CLM:TT-A-LTC-PA3L-NET-INCOME      PIC S9(5)V99.
                  15 :CLM:TT-A-LTC-PA3L-TAPE-EFF-DTE    PIC 9(6).
                  15 :CLM:TT-A-LTC-PEER-GROUP-PMT       PIC S9(7)V99.
                  15 :CLM:TT-A-LTC-PAY-BED-HOLD-DAYS    PIC 9(3).
                  15 :CLM:TT-A-LTC-REF-NUM              PIC 9(4).
                  15 :CLM:TT-A-LTC-COTTAGE-NUM          PIC X(7).
                  15 :CLM:TT-A-LTC-MED-RECORD-NUM       PIC X(16).
                  15 :CLM:TT-A-LTC-BENEFIT-EX-IND       PIC X(1).
                  15 :CLM:TT-A-LTC-CLM-TAD-SERVICES.
                      20 :CLM:TT-A-LTC-TAD-TRACHEOSTOMY PIC X(1).
                      20 :CLM:TT-A-LTC-TAD-RESP-THERAPY PIC X(1).
                      20 :CLM:TT-A-LTC-TAD-IV-THERAPY   PIC X(1).
                      20 :CLM:TT-A-LTC-TAD-HEAD-TRAUMA  PIC X(1).
                      20 :CLM:TT-A-LTC-TAD-OXY-THERAPY  PIC X(1).
                      20 :CLM:TT-A-LTC-TAD-NG-TUBE-FEED PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-WOUND-CARE   PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-PHYS-THERAPY PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-SPCH-THERAPY PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-OCCUP-THERAPY PIC X(1).     20210001
                       20 :CLM:TT-A-LTC-TAD-FUTURE-1     PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-FUTURE-2     PIC X(1).
                       20 :CLM:TT-A-LTC-TAD-FUTURE-3     PIC X(1).
                   15  FILLER REDEFINES
                       :CLM:TT-A-LTC-CLM-TAD-SERVICES.
                       20 :CLM:TT-A-LTC-PED-FROM-DATE PIC 9(8) COMP.
                       20 :CLM:TT-A-LTC-PED-THRU-DATE PIC 9(8) COMP.
                       20 :CLM:TT-A-LTC-SPC-FROM-DATE PIC 9(8) COMP.
                       20 FILLER                      PIC X(1).
                   15 :CLM:TT-A-LTC-ASSESS-BEGIN-DTE     PIC 9(8).
                   15  FILLER REDEFINES
                       :CLM:TT-A-LTC-ASSESS-BEGIN-DTE.
                       20 :CLM:TT-A-LTC-ASSESS-BG-DTE-YY PIC 9(4).
                       20 :CLM:TT-A-LTC-ASSESS-BG-DTE-MM PIC 9(2).
                       20 :CLM:TT-A-LTC-ASSESS-BG-DTE-DD PIC 9(2).
                   15 :CLM:TT-A-LTC-ASSESS-END-DTE       PIC 9(8).
                   15  FILLER REDEFINES
                       :CLM:TT-A-LTC-ASSESS-END-DTE.
                       20 :CLM:TT-A-LTC-AS-END-DTE-YY    PIC 9(4).
                       20 :CLM:TT-A-LTC-AS-END-DTE-MM    PIC 9(2).
                       20 :CLM:TT-A-LTC-AS-END-DTE-DD    PIC 9(2).
                   15 :CLM:TT-A-LTC-PAT-RESP-APPLIED
                                               PIC S9(5)V99 COMP-3.
                   15 :CLM:TT-A-LTC-ATTEND-TAXOMY-CD     PIC X(10).
                   15  FILLER                            PIC X(09).
                11 FILLER                                PIC X(2652).   19710001
           05  :CLM:CLM-MCARE-PARTB-RED     REDEFINES                   20360001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            20370001
             07  :CLM:CLM-MCARE-PARTB-SEGMENT.                          20360001
               10 :CLM:TT-B-CLM-MCARE-PARTB-DATA.
                   15 :CLM:TT-B-MCARE-PROV-NUM-X10       PIC X(10).
                   15  FILLER    REDEFINES
                         :CLM:TT-B-MCARE-PROV-NUM-X10.
                       20 :CLM:TT-B-MCARE-PROV-NUM       PIC 9(9).
                       20 FILLER                         PIC X.
                   15 FILLER                             PIC X(05).
                   15 :CLM:TT-B-MCARE-DEDUCT             PIC S9(5)V99.
                   15 :CLM:TT-B-MCARE-COINS              PIC S9(5)V99.
                   15 :CLM:TT-B-MCARE-BLD-DEDUCT         PIC S9(5)V99.
                   15 :CLM:TT-B-MCARE-CHRG-ALLOW         PIC S9(7)V99.
                   15 :CLM:TT-B-MCARE-CHRG-NON-ALLOW     PIC S9(7)V99.
                   15 :CLM:TT-B-MCARE-BILLED-AMT         PIC S9(7)V99.
                   15 :CLM:TT-B-MCARE-PAID               PIC S9(7)V99.
                   15 :CLM:TT-B-MCARE-PAID-DTE           PIC 9(8).
                   15 :CLM:TT-B-MCARE-CLM-NUM            PIC X(14).
                   15 :CLM:TT-B-HIC-NUM                  PIC X(12).
                   15 :CLM:TT-B-MCARE-CLM-TYPE           PIC 9(2).
                       88 :CLM:TT-B-VALID-CLM-TYPE                      20510001
                           VALUE 07 THRU 10                             20520001
                                 16 THRU 19                             20530001
                                 04 05 21 22 23.                        20540001
                       88 :CLM:TT-B-PROFESSIONAL                        20550001
                           VALUE 16 THRU 19                             20560001
                                 04 05 09 10 21 22 23.                  20570001
                       88 :CLM:TT-B-PHYSICIAN        VALUE 04.          20580001
                       88 :CLM:TT-B-CHIROPRACTOR     VALUE 05.          20590001
                       88 :CLM:TT-B-TRANSPORTATION   VALUE 07.          20600001
                       88 :CLM:TT-B-VISION           VALUE 08.          20610001
                       88 :CLM:TT-B-SUPPLIES-DME     VALUE 09.          20620001
                       88 :CLM:TT-B-PODIATRY         VALUE 10.          20630001
                       88 :CLM:TT-B-LABORATORY       VALUE 16.          20640001
                       88 :CLM:TT-B-P-AND-O          VALUE 17.          20650001
                       88 :CLM:TT-B-INDEPENDENT-CLINIC VALUE 18.        20660001
                       88 :CLM:TT-B-PSYCHOLOGIST     VALUE 19.          20670001
                       88 :CLM:TT-B-OPTOMETRIST      VALUE 21.          20680001
                       88 :CLM:TT-B-NURSE-MIDWIFE    VALUE 22.          20690001
                       88 :CLM:TT-B-HEARING-AID      VALUE 23.          20700001
                   15 :CLM:TT-B-MCARE-PROV-EIN           PIC X(11).
                   15 :CLM:TT-B-MCARE-PROV-SSN           PIC X(11).
                   15 :CLM:TT-B-MCAID-ALLOW              PIC S9(7)V99.
                   15  FILLER                            PIC X(28).
               10 :CLM:TT-B-CLM-PROF-CLM-SEGMENT.
                   15 :CLM:TT-B-CLM-TYPE-OF-SERVICE      PIC X(1).
                       88 :CLM:TT-B-CLM-VALID-TOS                       20740001
                           VALUE 'A' THRU 'I'                           20750001
                                 '0' THRU '9'                           20760001
                                 'M' 'Y' 'Z'.                           20770001
                   15 :CLM:TT-B-SURG-PCT                 PIC X(1).
                   15 :CLM:TT-B-DMERC-PROF-NUM           PIC S9(10)
                                                           COMP-3.
                   15  FILLER                            PIC X(3).
                   15 :CLM:TT-B-ANESTH-BASE-UNITS        PIC 9(4).
                   15 :CLM:TT-B-PLACE-OF-SVC             PIC X(1).
                       88 :CLM:TT-B-VALID-PLACE-OF-SVC
                           VALUE '0' THRU '9'.                          20850001
                   15 :CLM:TT-B-LAB-IND                  PIC X(1).
                       88 :CLM:TT-B-VALID-LAB-IND    VALUE ' ' 'Y' 'N'. 20870001
                   15 :CLM:TT-B-CLM-AHS-IND              PIC X(1).
                   15 :CLM:TT-B-POSTOP-DAY-LIMIT         PIC S9(3)
                                                           COMP-3.
                   15 :CLM:TT-B-PREOP-DAY-LIMIT          PIC S9(3)
                                                           COMP-3.
                   15 :CLM:TT-B-STER-HYST-CONST-DTE      PIC 9(8).
                   15 :CLM:TT-B-STER-CONST-DAYS          PIC 9(3).
                   15 :CLM:TT-B-STER-INTERP-IND          PIC X(1).
                   15 :CLM:TT-B-STER-RACE                PIC X(1).
                   15 :CLM:TT-B-STER-TIME-REASON         PIC 9(1).
                   15 :CLM:TT-B-CLM-ABORT-CDE            PIC X(1).
                   15 :CLM:TT-B-CLM-ABORT-REASON         PIC X(1).
                   15 :CLM:TT-B-PHYS-REFERRING           PIC X(7).
                   15 :CLM:TT-B-SHCF-NUM                 PIC X(7).
                   15 :CLM:TT-B-PHYS-REFER-NPI           PIC X(10).
                   15 :CLM:TT-B-SHCF-NUM-NPI             PIC X(10).
                   15 :CLM:TT-B-MED-RECORD-NUM           PIC X(16).
                   15 :CLM:TT-B-ASC-LVL-NUM              PIC X(1).
                   15 FILL-TT-B-ASC-LVL-NUM              PIC X(1).
                   15 :CLM:TT-B-MCARE-CONTRACTOR-ID      PIC X(5).
                   15 :CLM:TT-B-MCARE-NDC-CDE            PIC X(11).
                   15 :CLM:TT-B-SUBMIT-METRIC-UNITS  PIC S9(8)V999
                                                         COMP-3.
                   15 :CLM:TT-B-CNVRTD-METRIC-UNITS  PIC S9(8)V999
                                                         COMP-3.
                   15 :CLM:TT-B-SUBMIT-METRIC-UOM        PIC X(02).
                   15 :CLM:TT-B-SUBMITTED-MJ-UNITS       PIC S9(5).
                   15 :CLM:TT-B-PHYS-SUPERVISING         PIC X(7).
                   15 :CLM:TT-B-PHYS-SUPERVISING-NPI     PIC X(10).
                   15  FILLER                            PIC X(20).
               10 :CLM:TT-B-CLM-TRANS-CLM-RED     REDEFINES             21050001
                  :CLM:TT-B-CLM-PROF-CLM-SEGMENT.                       21060001
                 12 :CLM:TT-B-CLM-TRANS-CLM-SEGMENT.                    21050001
                   15  FILLER                            PIC X(5).
                   15 :CLM:TT-B-TR-TRANS-ORIGIN-CDE      PIC X(1).
                       88 :CLM:TT-B-TR-VALID-ORIGIN-CDE
                           VALUE '0' THRU '9'.                          21100001
                   15 :CLM:TT-B-TR-TRANS-DEST-CDE        PIC X(1).
                       88 :CLM:TT-B-TR-VALID-DEST-CDE
                           VALUE '0' THRU '9'.                          21130001
                   15  FILLER                            PIC X(32).
                 12 FILLER                               PIC X(123).    21050001
               10 :CLM:TT-B-VISION-CLM-RED     REDEFINES                21150001
                  :CLM:TT-B-CLM-PROF-CLM-SEGMENT.                       21160001
                 12 :CLM:TT-B-VISION-CLM-SEGMENT.                       21150001
                   15 :CLM:TT-B-DMERC-VISION-PROV        PIC S9(10)
                                                           COMP-3.
                   15  FILLER                            PIC X(4).
                   15 :CLM:TT-B-VI-PHYS-REFERRING        PIC X(7).
                   15 :CLM:TT-B-VI-PHYS-REFER-NPI        PIC X(10).
                   15 :CLM:TT-B-VI-PREVIOUS-EXAM         PIC 9(8).
                   15 :CLM:TT-B-VI-CURRENT-EXAM          PIC 9(8).
                   15 :CLM:TT-B-VI-PHYS-PRESCRIBER       PIC X(7).
                   15 :CLM:TT-B-VI-SHCF-NUM              PIC X(7).
                   15 :CLM:TT-B-VI-PHYS-PRESCR-NPI       PIC X(10).
                   15 :CLM:TT-B-VI-SHCF-NUM-NPI          PIC X(10).
                   15 :CLM:TT-B-VI-PLACE-OF-SVC          PIC X(1).
                       88 :CLM:TT-B-VI-VALID-PLACE-OF-SVC
                           VALUE '0' THRU '9'.                          21270001
                   15 :CLM:TT-B-VI-DISP-DTE              PIC 9(8).
                   15  FILLER                            PIC X(25).
                 12 FILLER                               PIC X(51).     21150001
             07  FILLER                                  PIC X(2770).   20360001
           05  :CLM:CLM-INPATIENT-CLM-RED     REDEFINES                 21300001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            21310001
            06 :CLM:CLM-INPATIENT-CLM-SEGMENT.                          21300001
             07 :CLM:HNI-GROUP-1.
               10 :CLM:HNI-TYPE-BILL-CDE.
                   88 :CLM:HNI-VALID-TYPE-BILL-CDE                      21330001
                       VALUE '111' THRU '114' '117' '118'               21340001
                             '121' THRU '124' '127' '128'               21350001
                             '181' THRU '184' '187' '188'.              21360001
                   15 :CLM:HNI-TYPE-BILL-CLASS           PIC 9(2).
                   15 :CLM:HNI-TYPE-BILL-FREQ            PIC 9(1).
               10 :CLM:HNI-PAT-ADMIT-DTE                 PIC 9(8).
               10 :CLM:HNI-PAT-ADMIT-HOUR                PIC 9(2).
                   88 :CLM:HNI-VALID-ADMIT-HOUR      VALUE 00 THRU 24.
                   88 :CLM:HNI-PAT-UNKNOWN-HOUR      VALUE 99.
               10 :CLM:HNI-PAT-ADMIT-TYPE                PIC X(1).
                   88 :CLM:HNI-PAT-VALID-ADMIT-TYPE
                       VALUE '1' THRU '5' '9'.                          21460001
                   88 :CLM:HNI-PAT-NBORN-ADMIT-TYP                      21480001
                       VALUE '4'.                                       21490001
                   88 :CLM:HNI-PAT-EMER-ADMIT-TYP                       21480001
                       VALUE '1' '2' '4' '5'.                           21490001
               10 :CLM:HNI-PAT-ADMIT-SOURCE              PIC X(1).
                   88 :CLM:HNI-PAT-VALID-ADMIT-SRC                      21510001
                       VALUE '1' THRU '9'.                              21520001
                   88 :CLM:HNI-PAT-NBORN-ADMIT-SRC                      21530001
                       VALUE '1' THRU '6'.                              21540001
                   88 :CLM:HNI-PAT-UNKNOWN-ADMIT-SRC                    21550001
                       VALUE '9'.                                       21560001
                   88 :CLM:HNI-UB04EX-ADMIT-SRC                         21510001
                       VALUE '3'.                                       21520001
                   88 :CLM:HNI-UB04EX-NBRN-ADMIT-SRC                    21530001
                       VALUE '1' THRU '4'.                              21520001
                   88 :CLM:HNI-VALID-ADMIT-SRC-E068
                       VALUE '1' '2' '4' '5' '6' '8' '9'
                             'D' 'E' 'F' 'G'.
               10 :CLM:HNI-PAT-STATUS                    PIC 9(2).
                   88 :CLM:HNI-VALID-PAT-STATUS                         21580001
                       VALUE 01 THRU 19                                 21590001
                             21 THRU 99.                                21600001
                   88 :CLM:HNI-INPAT-STATUS                             21610001
                       VALUE 01 THRU 07                                 21620001
                             81 THRU 95
                       20 21 30 43 50 51 61 62 63 64 65 66 69 70.       18620001
                   88 :CLM:HNI-INPAT-PAT-STATUS      VALUE 30.          21640001
                   88 :CLM:HNI-UB04EX-INPAT-STATUS                      21610001
                       VALUE 08.                                        21620001
               10 :CLM:HNI-PAT-ILLNESS-SEVER             PIC X(1).
               10 :CLM:HNI-PAT-BIRTHWEIGHT               PIC 9(5).
                   88 :CLM:HNI-VALID-BIRTHWEIGHT                        21670001
                       VALUE 00200 THRU 09000.                          21680001
             07 :CLM:HNI-TABLE-1.
               10 :CLM:HNI-CLM-REV-CDE-DATA-ALL.
                   15 :CLM:HNI-CLM-REV-CDE-DATA                         21700001
                       OCCURS 45 INDEXED BY                             21710001
                            :CLM:HNI-INDX     :CLM:HNI-INDX2.           21710001
                       20 FILL-HNI-REV-CDE               PIC 9.
                       20 :CLM:HNI-REV-CDE               PIC 9(3).
                           88 :CLM:HNI-REV-CDE-E1647                    21790001
                              VALUE  183 185  190 THRU 196.             21800001
                       20 :CLM:HNI-REV-UNITS             PIC 9(3).
                       20 :CLM:HNI-REV-CHRG              PIC S9(7)V99.
                       20 :CLM:HNI-REV-MCAID-CHRG        PIC S9(7)V99.
             07 :CLM:HNI-GROUP-2.
               10 :CLM:HNI-REV-MCAID-CHG-DOC             PIC S9(7)V99.
               10 :CLM:HNI-REV-CDE-CTR                   PIC 99.
               10 :CLM:HNI-DRG-CDE                       PIC X(3).
                   88 :CLM:HNI-NEWBORN-DRG-CDE                          21790001
                       VALUE '600' THRU '635' '641'.                    21800001
               10 :CLM:HNI-DAYS-ACUTE                    PIC 9(3).
               10 :CLM:HNI-DAYS-SNF                      PIC 9(3).
               10 :CLM:HNI-DAYS-ICF                      PIC 9(3).
               10 :CLM:HNI-DAYS-RESIDENTIAL              PIC 9(3).
               10 :CLM:HNI-DAYS-COVERED                  PIC 9(3).
               10 :CLM:HNI-DAYS-NON-COV                  PIC 9(3).
               10 :CLM:HNI-OUTLIER-IND                   PIC X(1).
               10 :CLM:HNI-HOSP-EXEMPT-IND               PIC X(1).
               10 :CLM:HNI-HOSP-PROG-IND                 PIC X(2).
                   88 :CLM:HNI-VALID-HOSP-PROG-IND
                       VALUE '01' THRU '09'                             21910001
                             '  '.                                      21920001
               10 :CLM:HNI-CLM-AHS-IND                   PIC X(1).
               10 :CLM:HNI-SECOND-OPINION-IND            PIC X(1).
               10 :CLM:HNI-DRG-CDE-SEV                   PIC X(1).
               10  FILLER                                PIC X(4).
               10 :CLM:HNI-NY-HOSP-RATE-CDE              PIC 9(4).
               10  FILLER                                PIC X(8).
               10 :CLM:HNI-CLM-POA-DATA-ALL.
                   15 :CLM:HNI-CLM-POA-DATA
                      OCCURS 17 INDEXED BY :CLM:HNI-POA-INDX.
                       20 :CLM:HNI-POA-IND               PIC X(1).
                           88 :CLM:HNI-VALID-POA-IND
                              VALUE 'N' 'U' 'W' 'Y' '1'.
                           88 :CLM:HNI-VALID-MAPRGRPR-POA
                              VALUE 'W' 'Y'.
                           88 :CLM:HNI-VALID-N-U-POA
                              VALUE 'N' 'U'.
                           88 :CLM:HNI-VALID-1-POA
                              VALUE '1'.
             07 :CLM:HNI-TABLE-2.
               10 :CLM:HNI-CLM-SURG-DATA-ALL.
                   15 :CLM:HNI-CLM-SURG-DATA                            21990001
                       OCCURS 6 INDEXED BY   :CLM:HNI-SURG-INDX.
                       20 :CLM:HNI-SURG-PROC             PIC X(7).
                           88 :CLM:HNI-VALID-SURG-COMBO1
                               VALUE '3610 ' THRU '3619 '.              17730001
                           88 :CLM:HNI-VALID-SURG-COMBO2
                                VALUE '8101 ' THRU '8108 ',             17730001
                                      '8123 ' THRU '8124 ',             17730001
                                      '8131 ' THRU '8138 ',             17730001
                                      '8183 ', '8185 '.                 17730001
                           88 :CLM:HNI-VALID-SURG-COMBO3
                                VALUE '4438 ', '4439 ', '4495 '.        17730001
                           88 :CLM:HNI-VALID-SURG-COMBO4
                                VALUE '0085 ' THRU '0087 ',             17730001
                                      '8151 ' THRU '8152 ',             17730001
                                      '8154 '.                          17730001
                           88 :CLM:HNI-VALID-SURG-COMBO5-2013
                                VALUE '0050 ' THRU '0054 ',             17730001
                                      '3780 ' THRU '3783 ',             17730001
                                      '3785 ' THRU '3787 ',             17730001
                                      '3794 ', '3796', '3798',          17730001
                                      '3774 ' THRU '3777',              17730001
                                      '3779 '.                          17730001
                           88 :CLM:HNI-VALID-SURG-COMBO6-2013
                                VALUE '3893 '.                          17730001
                       20 :CLM:HNI-SURG-DTE.
                           25 :CLM:HNI-SURG-DTE-Y        PIC 9(4).
                           25 :CLM:HNI-SURG-DTE-MD       PIC 9(4).
             07 :CLM:HNI-GROUP-3.
               10 :CLM:HNI-BLD-UNITS                     PIC 9(2).
               10 :CLM:HNI-BLD-UNITS-REPL                PIC 9(2).
               10 :CLM:HNI-BLD-UNITS-NOT-REPL            PIC 9(2).
               10 :CLM:HNI-BLD-UNITS-DED                 PIC 9(2).
             07 :CLM:HNI-TABLE-3.
               10 :CLM:HNI-CLM-OCCUR-DATA-ALL.
                   15 :CLM:HNI-CLM-OCCUR-DATA                           22100001
                       OCCURS 8 INDEXED BY  :CLM:HNI-OCCUR-INDX.        22110001
                       20 :CLM:HNI-OCCUR-CDE             PIC X(2).
                           88 :CLM:HNI-VALID-OCCUR-CDE
                               VALUE '01' THRU '06'                     22140001
                                         '16' THRU '26'                 19160001
                                         '31' THRU '39'                 19170001
                                         '  ' 'A1' 'A2' 'A3' 'A4' 'B1'  19180001
                                         'B2' 'B3' 'C1' 'C2' 'C3' 'M3'  19180001
                                         'M4' '09' '10' '11' '42' '43'  19190001
                                         '45' '46' '47' '50' '52' '54'  19200001
                                         '55' '60' '61' '70' '74' '79'. 19200001
                           88 :CLM:HNI-UB04EX-OCCUR-CDE
                                   VALUE 'MR' 'M0' THRU 'M4' '60' '61'  17730001
                                         '70' THRU '80'.                17730001
                       20 :CLM:HNI-OCCUR-DTE             PIC 9(8).
             07 :CLM:HNI-TABLE-4.
               10 :CLM:HNI-COND-CDE-ALL.
                   15 :CLM:HNI-COND-CDE                  PIC X(2)
                       OCCURS 11 INDEXED BY   :CLM:HNI-COND-INDX.       22240001
                       88 :CLM:HNI-VALID-COND-CDE
                           VALUE '  '                                   22260001
                                 'AA' THRU 'AN'                         22260001
                                 'A0' THRU 'A9'                         22270001
                                 'B0' THRU 'B3'                         17860001
                                 'C2' THRU 'C4' 'C6' 'C7'               19450001
                                 'D0' THRU 'D9'                         17860001
                                 'DR'                                   22270001
                                 'E0' 'H0'                              17860001
                                 'M2' 'M3' 'M4'                         17860001
                                 '01' THRU '11'                         22280001
                                 '17' THRU '34'                         22290001
                                 '36' THRU '40' '42' '43'               22310001
                                 '46' THRU '48'                         22310001
                                 '55' THRU '58'                         22310001
                                 '60' THRU '63'                         22320001
                                 '66' THRU '79' '81'                    22320001
                                 '82' THRU '84'.                        22350001
                       88 :CLM:HNI-UB04EX-COND-CDE
                           VALUE 'A7' 'A8' '47'                         22260001
                                 '82' THRU '84'.                        22260001
                       88 :CLM:HNI-UB04IN-COND-CDE
                           VALUE '49' '50'.                             22260001
                       88 :CLM:HNI-LIBAL-COND-CDE
                           VALUE '01' '02' '03' '05' '08' '10'.         22380001
             07 :CLM:HNI-TABLE-5.
               10 :CLM:HNI-PAT-PAYOR-ID-ALL.
                   15 :CLM:HNI-PAT-PAYOR-ID              PIC X(3)
                       OCCURS 5 INDEXED BY   :CLM:HNI-PAY-INDX.
                   88 :CLM:HNI-VALID-PAYOR-ID
                       VALUE '011'.
             07 :CLM:HNI-GROUP-4.
               10 :CLM:HNI-STER-HYST-CONST-DTE           PIC 9(8).
               10 :CLM:HNI-STER-CONST-DAYS               PIC 9(3).
               10 :CLM:HNI-STER-INTERP-IND               PIC X(1).
               10 :CLM:HNI-STER-RACE                     PIC X(1).
               10 :CLM:HNI-STER-TIME-REASON              PIC 9(1).
               10 :CLM:HNI-CLM-ABORT-CDE                 PIC X(1).
               10 :CLM:HNI-CLM-ABORT-REASON              PIC X(1).
               10 :CLM:HNI-PHYS-ATTENDING                PIC X(7).
               10 :CLM:HNI-PHYS-OTHER                    PIC X(7).
               10 :CLM:HNI-PHYS-ATTEND-NPI               PIC X(10).
               10 :CLM:HNI-PHYS-OTHER-NPI                PIC X(10).
               10 :CLM:HNI-PSRO-UR-THRU-DTE              PIC 9(8).
               10 :CLM:HNI-PSRO-UR-APPROV-IND            PIC X(1).
                   88 :CLM:HNI-VALID-PSRO-UR-APROV
                       VALUE '1' THRU '6'.                              22540001
                   88 :CLM:HNI-INPAT-PSRO-UR-APROV   VALUE '3'.         22550001
               10 :CLM:HNI-PSRO-UR-FROM-DTE              PIC 9(8).
               10 :CLM:HNI-MED-RECORD-NUM                PIC X(16).
               10 :CLM:HNI-SNF-DAYS-PD                   PIC 9(03).
               10 :CLM:HNI-ICF-DAYS-PD                   PIC 9(03).
               10 :CLM:HNI-ORIG-DRG-CDE                  PIC X(03).
               10 :CLM:HNI-GESTATION-IND                 PIC X(01).
               10 :CLM:HNI-MCAID-ALLOW                   PIC S9(7)V99.
               10 :CLM:HNI-UB-VERSION                    PIC X(02).
                  88  :CLM:HNI-UB04      VALUE '04'.
             07 :CLM:HNI-TABLE-6.
               10 :CLM:HNI-OCCUR-SPAN-DATA-ALL.
                  15 :CLM:HNI-OCCUR-SPAN-DATA
                      OCCURS 4 INDEXED BY :CLM:HNI-SPAN-INDX.
                     20 :CLM:HNI-OCCUR-SPAN-CDE          PIC X(02).
                        88 :CLM:HNI-UB04-VALID-SPAN-CDE
                              VALUE 'MR' '82'
                                    'M0' THRU 'M4'
                                    '70' THRU '80'.
                     20 :CLM:HNI-OCCUR-SPAN-FDTE         PIC X(08).
                     20 :CLM:HNI-OCCUR-SPAN-TDTE         PIC X(08).
             07 :CLM:HNI-GROUP-5.
               10 FILLER                                 PIC X(05).
               10 :CLM:HNI-ADMIT-DIAGNOSIS               PIC X(07).
             07 :CLM:HNI-TABLE-7.
               10 :CLM:HNI-PAT-REASON-VISIT-ALL.
                  15 :CLM:HNI-PAT-RSN-VISIT-DATA
                      OCCURS 3 INDEXED BY :CLM:HNI-PAT-INDX.
                     20 :CLM:HNI-PAT-RSN-VISIT           PIC X(07).
             07 :CLM:HNI-TABLE-8.
               10 :CLM:HNI-EIC-CDES-ALL.
                  15 :CLM:HNI-EIC-CDES-DATA
                      OCCURS 3 INDEXED BY :CLM:HNI-EIC-INDX.
                     20 :CLM:HNI-EIC-CDE                 PIC X(07).
             07 :CLM:HNI-GROUP-6.
               10  FILLER                                PIC X(16).
               10 :CLM:HNI-ORIG-DRG-CDE-SEV              PIC X(01).
               10 :CLM:HNI-PHYS-OPERATING-2              PIC X(7).
               10 :CLM:HNI-PHYS-OPER-2-NPI               PIC X(10).
               10 :CLM:HNI-PHYS-REFERRING                PIC X(7).
               10 :CLM:HNI-PHYS-REFER-NPI                PIC X(10).
               10 :CLM:HNI-PHYS-OPERATING-1              PIC X(7).
               10 :CLM:HNI-PHYS-OPER1-NPI                PIC X(10).
               10 :CLM:HNI-ATTEND-TAXOMY-CD              PIC X(10).
               10 :CLM:HNI-FILLER-CCB280                 PIC X(04).
               10 FILLER REDEFINES :CLM:HNI-FILLER-CCB280.
                  15 :CLM:HNI-SPC-FROM-DATE              PIC 9(8) COMP.
               10  :CLM:HNI-CURRENT-PSC                  PIC 9(03).
               10  FILLER                                PIC X(06).
            06 FILLER                                    PIC X(1343).   21300001
           05  :CLM:CLM-OUTPATIENT-CLM-RED     REDEFINES                22630001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            22640001
            06 :CLM:CLM-OUTPATIENT-CLM-SEGMENT.                         22630001
             07 :CLM:OP-GROUP-1.
               10 :CLM:OP-TYPE-BILL-CDE.
                   88 :CLM:OP-VALID-TYPE-BILL-CDE                       22660001
                       VALUE '131' THRU '135' '137' '138'               22670001
                             '141' THRU '144' '147' '148'               22680001
                             '721' THRU '725' '727' '728' '729'         22690001
                             '741' THRU '744' '747' '748'               22700001
                             '831' THRU '834' '837' '838'.              22710001
                   88 :CLM:OP-RENAL-TYPE-BILL-CDE                       22730001
                       VALUE '721' THRU '725'                           22740001
                             '727' '728' '729'.                         22750001
                   15 :CLM:OP-TYPE-BILL-CLASS            PIC 9(2).
                   15 :CLM:OP-TYPE-BILL-FREQ             PIC 9(1).
               10 :CLM:OP-PAT-ADMIT-TYPE                 PIC X(1).
                   88 :CLM:OP-PAT-VALID-ADMIT-TYPE
                       VALUE '1' THRU '3' '5' '9'.                      22800001
                   88 :CLM:OP-PAT-EMER-ADMIT-TYPE
                       VALUE '1' '2' '5'.                               22800001
               10 :CLM:OP-PAT-ADMIT-HOUR                 PIC 9(2).
                   88 :CLM:OP-VALID-ADMIT-HOUR                          22820001
                       VALUE 00 THRU 24                                 22830001
                             99.                                        22840001
               10 :CLM:OP-PAT-STATUS                     PIC 9(2).
                       88 :CLM:OP-VALID-PAT-STATUS                      22860001
                           VALUE 01 THRU 19                             22870001
                                 21 THRU 99.                            22880001
                       88 :CLM:OP-OUTPAT-STATUS      VALUE 01 20 30.
               10 :CLM:OP-CLM-REV-CDE-DATA.
                   15 FILL-OP-REV-CDE                    PIC 9.
                   15 :CLM:OP-REV-CDE                    PIC 9(3).
                       88 :CLM:OP-LAB-REV-CDE                           22920001
                           VALUE 300 THRU 319                           22930001
                                 380 THRU 399.                          22940001
                       88 :CLM:OP-DENT-EXCEPT                           22920001
                           VALUE 360 THRU 369.                          22930001
                       88 :CLM:OP-RENAL-REV-CDE
                           VALUE 821 829 831 839                        22960001
                                 841 849 851 859 881.                   22960001
                       88 :CLM:OP-ULTRA-REV-CDE
                           VALUE 881.
                       88 :CLM:OP-VALID-HCPCS-REV-CDE                   22970001
                           VALUE 300 THRU 329                           22980001
                                 340 THRU 369                           22990001
                                 380 THRU 389                           23000001
                                 400 THRU 499                           23010001
                                 510 THRU 529                           23020001
                                 540 THRU 549                           23030001
                                 610 THRU 619                           23040001
                                 700 THRU 719                           23050001
                                 730 THRU 769                           23060001
                                 790 THRU 799                           23070001
                                 910 THRU 929                           23080001
                                 940 THRU 949                           23090001
                                 260 261 269 331 333 335 623 624 636    23100001
                                 771 900 901 904.                       23110001
                       88 :CLM:OP-VALID-MICU-REV-CDE                    23120001
                           VALUE 542 543.                               23130001
                       88 :CLM:OP-NDC-ON-UB-REV-CDE                     22920001
                           VALUE 631 THRU 637.                          22940001
                       88 :CLM:OP-SURG-REV-CDE
                           VALUE 360 361 369 370 374 379 490 499
                                 710 719.
                   15 :CLM:OP-REV-UNITS                  PIC 9(3).
                   15 :CLM:OP-REV-CHRG                   PIC S9(7)V99.
             07 :CLM:OP-TABLE-1.
               10 :CLM:OP-CLINIC-ALL.
                   15 :CLM:OP-CLINIC-CDE                 PIC X(2)
                       OCCURS 4 INDEXED BY   :CLM:OP-CLIN-INDX.         23180001
             07 :CLM:OP-GROUP-2.
               10 :CLM:OP-HIPAA-SUBMIT-REV-CDE           PIC 9(04).
               10  FILLER                                PIC X(21).
             07 :CLM:OP-TABLE-2.
               10 :CLM:OP-CLM-SURG-DATA-ALL.
                   15 :CLM:OP-CLM-SURG-DATA                             23220001
                       OCCURS 6 INDEXED BY    :CLM:OP-SURG-INDX.
                       20 :CLM:OP-SURG-PROC              PIC X(5).
                       20 FILL-OP-SURG-PROC              PIC X(2).
                       20 :CLM:OP-SURG-DTE               PIC 9(8).
             07 :CLM:OP-TABLE-3.
               10 :CLM:OP-CLM-OCCUR-DATA-ALL.
                   15 :CLM:OP-CLM-OCCUR-DATA                            23270001
                       OCCURS 8 INDEXED BY   :CLM:OP-OCCUR-INDX.        23280001
                       20 :CLM:OP-OCCUR-CDE              PIC X(2).
                           88 :CLM:OP-VALID-OCCUR-CDE
                               VALUE '01' THRU '06'                     23310001
                                    '  ' 'A1' 'A2' 'A3' 'B1' 'B2'       17740001
                                    'B3' 'C1' 'C2' 'C3' 'M3' 'M4' '09'  17750001
                                    '10' '11' '16' '17' '18' '19'       17760001
                                    '20' '23' '24' '25' '28' '29' '30'  17760001
                                    '32' '33' '35' '37' '38' '39' '40'  17780001
                                    '41' '43' '45' '46' '50' '51' '52'  17780001
                                    '54' '55' '70' '74' '79'.           17790001
                           88 :CLM:OP-UB04EX-OCCUR-CDE
                                   VALUE 'MR' 'M0' THRU 'M4'            17730001
                                         '70' THRU '80'.                17730001
                       20 :CLM:OP-OCCUR-DTE              PIC 9(8).
             07 :CLM:OP-TABLE-4.
               10 :CLM:OP-COND-CDE-ALL.                                 *NEW*RNE
                   15 :CLM:OP-COND-CDE                   PIC X(2)
                       OCCURS 11 INDEXED BY   :CLM:OP-COND-INDX.        23410001
                       88 :CLM:OP-VALID-COND-CDE
                           VALUE '  '                                   23430001
                                 'AA' THRU 'AN'                         23430001
                                 'A0' THRU 'A9'                         23440001
                                 'B0' THRU 'B3'                         17860001
                                 'C2' THRU 'C4' 'C6' 'C7'               19450001
                                 'D0' THRU 'D9'                         17860001
                                 'DR'                                   23440001
                                 'E0' 'G0' 'H0'                         17860001
                                 'M2' 'M3' 'M4'                         17860001
                                 '01' THRU '11'                         23450001
                                 '17' THRU '34'                         23460001
                                 '36' THRU '44'                         23480001
                                 '46' THRU '48'                         23480001
                                 '55' THRU '58'                         23480001
                                 '60' THRU '63'                         23490001
                                 '66' THRU '79' '81'                    23490001
                                 '82' THRU '85'.                        23510001
                       88 :CLM:OP-UB04EX-COND-CDE
                           VALUE 'A7' 'A8' '47'                         23430001
                                 '82' '83' '85'.                        23430001
                       88 :CLM:OP-UB04IN-COND-CDE
                           VALUE '49' '50'.                             23430001
                       88 :CLM:OP-LIBAL-COND-CDE
                           VALUE '01' '02' '03' '05' '08' '10'.         23550001
                       88 :CLM:OP-DIAL-COND-CDE
                           VALUE '71' THRU '76' '84'.
             07 :CLM:OP-TABLE-5.
               10 :CLM:OP-PAT-PAYOR-ID-ALL.
                   15 :CLM:OP-PAT-PAYOR-ID               PIC X(3)
                       OCCURS 5 INDEXED BY   :CLM:OP-PAY-INDX.
             07 :CLM:OP-GROUP-3.
               10 :CLM:OP-HOSP-PROG-IND                  PIC X(2).
                   88 :CLM:OP-VALID-HOSP-PROG-IND
                       VALUE '01' THRU '09'                             23610001
                             '  '.                                      23620001
               10 :CLM:OP-CLM-AHS-IND                    PIC X(1).
               10 :CLM:OP-SECOND-OPINION-IND             PIC X(1).
               10 :CLM:OP-STER-HYST-CONST-DTE            PIC 9(8).
               10 :CLM:OP-STER-CONST-DAYS                PIC 9(3).
               10 :CLM:OP-STER-INTERP-IND                PIC X(1).
               10 :CLM:OP-STER-RACE                      PIC X(1).
               10 :CLM:OP-STER-TIME-REASON               PIC 9(1).
               10 :CLM:OP-CLM-ABORT-CDE                  PIC X(1).
               10 :CLM:OP-CLM-ABORT-REASON               PIC X(1).
               10 :CLM:OP-PHYS-ATTENDING                 PIC X(7).
               10 :CLM:OP-PHYS-OTHER                     PIC X(7).
               10 :CLM:OP-PHYS-ATTEND-NPI                PIC X(10).
               10 :CLM:OP-PHYS-OTHER-NPI                 PIC X(10).
               10 :CLM:OP-OPD-STATEMENT-DTE              PIC 9(8).
               10 :CLM:OP-OPD-STATEMENT-DTE-THRU         PIC 9(8).
               10 :CLM:OP-BLD-UNITS                      PIC 9(2).
               10 :CLM:OP-BLD-UNITS-REPL                 PIC 9(2).
               10 :CLM:OP-BLD-UNITS-NOT-REPL             PIC 9(2).
               10 :CLM:OP-BLD-UNITS-DED                  PIC 9(2).
               10 :CLM:OP-MED-RECORD-NUM                 PIC X(16).
               10 :CLM:OP-MCARE-COV-IND                  PIC X(1).
               10 :CLM:OP-GESTATION-IND                  PIC X(1).
               10 :CLM:OP-MCAID-ALLOW                    PIC S9(7)V99.
               10 :CLM:OP-UB-VERSION                     PIC X(02).
                  88 :CLM:OP-UB04      VALUE '04'.
             07 :CLM:OP-TABLE-6.
               10 :CLM:OP-OCCUR-SPAN-DATA-ALL.
                  15 :CLM:OP-OCCUR-SPAN-DATA
                      OCCURS 4 INDEXED BY :CLM:OP-SPAN-INDX.
                     20 :CLM:OP-OCCUR-SPAN-CDE           PIC X(02).
                        88 :CLM:OP-UB04-VALID-SPAN-CDE
                              VALUE 'MR'
                                    'M0' THRU 'M4'
                                    '70' THRU '80'.
                     20 :CLM:OP-OCCUR-SPAN-FDTE          PIC X(08).
                     20 :CLM:OP-OCCUR-SPAN-TDTE          PIC X(08).
             07 :CLM:OP-TABLE-7.
               10 :CLM:OP-PAT-REASON-VISIT-ALL.
                  15 :CLM:OP-PAT-RSN-VISIT-DATA
                      OCCURS 3 INDEXED BY :CLM:OP-PAT-INDX.
                     20 :CLM:OP-PAT-RSN-VISIT            PIC X(07).
             07 :CLM:OP-TABLE-8.
               10 :CLM:OP-EIC-CDES-ALL.
                  15 :CLM:OP-EIC-CDES-DATA
                      OCCURS 3 INDEXED BY :CLM:OP-EIC-INDX.
                     20 :CLM:OP-EIC-CDE                  PIC X(07).
             07 :CLM:OP-GROUP-5.
               10  FILLER                                PIC X(17).
               10 :CLM:OP-PHYS-OPERATING-1               PIC X(7).
               10 :CLM:OP-PHYS-OPER1-NPI                 PIC X(10).
               10 :CLM:OP-PHYS-OPERATING-2               PIC X(7).
               10 :CLM:OP-PHYS-OPER2-NPI                 PIC X(10).
               10 :CLM:OP-PHYS-REFERRING                 PIC X(7).
               10 :CLM:OP-PHYS-REFER-NPI                 PIC X(10).
               10 :CLM:OP-ATTEND-TAXOMY-CD               PIC X(10).
               10 :CLM:OP-NDC-CDE                        PIC X(11).
               10 :CLM:OP-NDC-UNIT-MEASURE               PIC X(02).
                       88 :CLM:OP-NDC-ON-UB-UNIT-MEASURE                22920001
                           VALUE 'F2' 'GR' 'ML' 'UN'.                   22930001
               10 :CLM:OP-NDC-METRIC-UNITS        PIC S9(8)V999 COMP-3.
               10 :CLM:OP-DRUG-COST-ALLOWANCE      PIC S9(7)V99  COMP-3.
               10 :CLM:OP-CLM-DRUG-PRICE                 PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:OP-DOSE-FORM-IND                  PIC X(1).
                   88 :CLM:OP-DOSE-IS-TAB-OR-CAP             VALUE 'Y'.
               10 :CLM:OP-DRUG-CLASS                     PIC X(1).
               10 :CLM:OP-GENERIC-CNTL-NUM               PIC X(5).
               10 :CLM:OP-GENERIC-SEQ-NUM                PIC X(6).
               10 :CLM:OP-MAC-PRICE                      PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:OP-REBATE-IND                     PIC X(1).
               10 :CLM:OP-STATE-MAC-PRICE                PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:OP-THERAPEUTIC-CLASS-GN           PIC X(2).
               10 :CLM:OP-THERAPEUTIC-CLASS-SP           PIC X(3).
               10 :CLM:OP-ICD-ALLOWED-IND                PIC X(1).
               10  FILLER                                PIC X(05).
            06 FILLER                                    PIC X(2466).   22630001
           05  :CLM:CLM-HOME-HEALTH-RED     REDEFINES                   23840001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            23850001
            06 :CLM:CLM-HOME-HEALTH-SEGMENT.                            23840001
             07 :CLM:HH-GROUP-1.
               10 :CLM:HH-TYPE-BILL-CDE.
                   88 :CLM:HH-VALID-TYPE-BILL-CDE                       23870001
                       VALUE '321' THRU '324' '327' '328'               23880001
                             '331' THRU '334' '337' '338'               23890001
                             '341' THRU '344' '347' '348'.              23900001
                   15 :CLM:HH-TYPE-BILL-CLASS            PIC 9(2).
                   15 :CLM:HH-TYPE-BILL-FREQ             PIC 9(1).
               10  FILLER                                PIC X(2).
               10 :CLM:HH-CLM-REV-CDE-DATA.
                   15 FILL-HH-REV-CDE                    PIC 9.
                   15 :CLM:HH-REV-CDE                    PIC 9(3).
                       88 :CLM:HH-VALID-HCPCS-REV-CDE                   23970001
                           VALUE 270 420 430 440 550 560 570.           23980001
                       88 :CLM:HH-REV-CDE-EVV-2023
                           VALUE 420 430 440 550 560 570.
                   15 :CLM:HH-REV-UNITS                  PIC 9(3).
                   15 :CLM:HH-REV-CHG                    PIC 9(7)V99.
               10 :CLM:HH-HIPAA-SUBMIT-REV-CDE           PIC 9(04).     26410612
               10  FILLER                                PIC X(21).     26410712
             07 :CLM:HH-TABLE-1.
               10 :CLM:HH-CLM-OCCUR-DATA-ALL.
                   15 :CLM:HH-CLM-OCCUR-DATA                            24040001
                       OCCURS 8 INDEXED BY   :CLM:HH-OCCUR-INDX.        24050001
                       20 :CLM:HH-OCCUR-CDE              PIC X(2).
                           88 :CLM:HH-VALID-OCCUR-CDE
                               VALUE '01' THRU '06'                     24080001
                                     '16' THRU '20'                     24080001
                                     '  ' 'A1' 'A2' 'A3' 'B1' 'B2'      24090001
                                     'B3' 'C1' 'C2' 'C3' 'M3' 'M4'      24100001
                                     '09' '12' '23' '24' '25' '27'      24110001
                                     '32' '35' '38' '39' '44' '46'      24120001
                                     '50' '52' '54' '55' '70' '74'      24120001
                                     '79'.                              24120001
                           88 :CLM:HH-UB04EX-OCCUR-CDE
                                   VALUE 'MR' 'M0' THRU 'M4'            17730001
                                         '70' THRU '80'.                17730001
                       20 :CLM:HH-OCCUR-DTE              PIC 9(8).
             07 :CLM:HH-TABLE-2.
               10 :CLM:HH-COND-CDE-ALL.
                   15 :CLM:HH-COND-CDE                   PIC X(2)
                       OCCURS 11 INDEXED BY   :CLM:HH-COND-INDX.        24160001
                       88 :CLM:HH-VALID-COND-CDE
                           VALUE '  '                                   24180001
                                 'AA' THRU 'AN'                         24180001
                                 'A0' 'A2' 'A3'                         24260001
                                 'A5' THRU 'A9'                         24180001
                                 'B0' THRU 'B3'                         17860001
                                 'C1' THRU 'C7'                         17860001
                                 'D0' THRU 'D9'                         17860001
                                 'E0' 'H0'                              17860001
                                 'M2' 'M3' 'M4'                         17860001
                                 '01' THRU '11'                         24190001
                                 '17' THRU '30'                         24200001
                                 '40' THRU '42'                         24220001
                                 '46' THRU '47'                         24220001
                                 '56' THRU '58'                         24220001
                                 '62' THRU '63'                         24230001
                                 '67' THRU '69'                         24230001
                                 '77' THRU '79' '81'                    24240001
                                 '82' THRU '84'.                        24250001
                       88 :CLM:HH-UB04EX-COND-CDE
                           VALUE 'A7' 'A8' '47'                         24180001
                                 '82' THRU '84'.                        24250001
                       88 :CLM:HH-UB04IN-COND-CDE
                           VALUE '49' '50'.                             24180001
                       88 :CLM:HH-LIBAL-COND-CDE
                           VALUE '01' '02' '03' '05' '08' '10'.         24300001
             07 :CLM:HH-TABLE-3.
               10 :CLM:HH-PAT-PAYOR-ID-ALL.
                   15 :CLM:HH-PAT-PAYOR-ID               PIC X(3)
                       OCCURS 5 INDEXED BY   :CLM:HH-PAY-INDX.
             07 :CLM:HH-GROUP-2.
               10 :CLM:HH-HOSP-PROG-IND                  PIC X(2).
                   88 :CLM:HH-VALID-HOSP-PROG-IND
                       VALUE '01' THRU '09'                             24360001
                             '  '.                                      24370001
               10 :CLM:HH-PHYS-ATTENDING                 PIC X(7).
               10 :CLM:HH-PHYS-OTHER                     PIC X(7).
               10 :CLM:HH-PHYS-ATTEND-NPI                PIC X(10).
               10 :CLM:HH-PHYS-OTHER-NPI                 PIC X(10).
               10 :CLM:HH-OPD-STATEMENT-DTE              PIC 9(8).
               10 :CLM:HH-OPD-STATEMENT-DTE-THRU         PIC 9(8).
               10 :CLM:HH-MED-RECORD-NUM                 PIC X(16).
               10 :CLM:HH-UB-VERSION                     PIC X(02).
                  88 :CLM:HH-UB04     VALUE '04'.
             07 :CLM:HH-TABLE-4.
               10 :CLM:HH-OCCUR-SPAN-DATA-ALL.
                  15 :CLM:HH-OCCUR-SPAN-DATA
                      OCCURS 4 INDEXED BY :CLM:HH-SPAN-INDX.
                     20 :CLM:HH-OCCUR-SPAN-CDE           PIC X(02).
                        88 :CLM:HH-UB04-VALID-SPAN-CDE
                              VALUE 'MR'
                                    'M0' THRU 'M4'
                                    '70' THRU '80'.
                     20 :CLM:HH-OCCUR-SPAN-FDTE          PIC X(08).
                     20 :CLM:HH-OCCUR-SPAN-TDTE          PIC X(08).
             07 :CLM:HH-TABLE-5.
               10 :CLM:HH-PAT-REASON-VISIT-ALL.
                  15 :CLM:HH-PAT-RSN-VISIT-DATA
                      OCCURS 3 INDEXED BY :CLM:HH-PAT-INDX.
                     20 :CLM:HH-PAT-RSN-VISIT            PIC X(07).
             07 :CLM:HH-TABLE-6.
               10 :CLM:HH-EIC-CDES-ALL.
                  15 :CLM:HH-EIC-CDES-DATA
                      OCCURS 3 INDEXED BY :CLM:HH-EIC-INDX.
                     20 :CLM:HH-EIC-CDE                  PIC X(07).
             07 :CLM:HH-GROUP-4.
               10  FILLER                                PIC X(17).
               10 :CLM:HH-PHYS-OPER2-NPI                 PIC X(10).
               10 :CLM:HH-PHYS-REFERRING                 PIC X(7).
               10 :CLM:HH-PHYS-REFER-NPI                 PIC X(10).
               10 :CLM:HH-PHYS-OPER1-NPI                 PIC X(10).
               10 :CLM:HH-ATTEND-TAXOMY-CD               PIC X(10).
               10  FILLER                                PIC X(13).
            06 FILLER                                    PIC X(2675).   23840001
           05  :CLM:CLM-LTC-RED   REDEFINES                             24440001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            24450001
            06 :CLM:CLM-LTC-SEGMENT.                                    24440001
             07 :CLM:LTC-GROUP-1.
               10 :CLM:LTC-ADMIT-DTE                     PIC 9(8).
               10 :CLM:LTC-ADMIT-CDE                     PIC X(1).
                   88 :CLM:LTC-VALID-ADMIT-CDE                          24480001
                       VALUE '1' THRU '9'                               24490001
                             'A'.                                       24500001
               10 :CLM:LTC-PHARM-CAP-DAY                 PIC 9(3).
               10 :CLM:LTC-PHARM-PROV                    PIC 9(07).
               10 :CLM:LTC-PHARM-PROV-NPI                PIC X(10).
               10  FILLER                                PIC X(05).
               10 :CLM:LTC-LEVEL-OF-CARE                 PIC X(1).
               10 :CLM:LTC-FACILITY-CERT-IND             PIC X(1).
               10 :CLM:LTC-GEN-STATUS-CDE                PIC X(1).
                   88 :CLM:LTC-VALID-GEN-STATUS-CDE
                       VALUE '1' THRU '9'                               24580001
                             ' ' 'A'.                                   24590001
                   88  LTC-GEN-STATUS-DISCHARGED
                       VALUE '1' THRU '4'
                             '6' '8' '9'.
               10 :CLM:LTC-PAT-PMT                       PIC S9(5)V99.
               10 :CLM:LTC-OTHER-PMT                     PIC S9(5)V99.
               10 :CLM:LTC-COUNTY-OF-CHRG                PIC 9(2).
                   88 :CLM:LTC-VALID-COUNTY-OF-CHRG  VALUE 01 THRU 21.  24630001
               10 :CLM:LTC-PD-LV-DAYS-HOSP               PIC 9(2).
               10 :CLM:LTC-PD-LV-DAYS-THERP              PIC 9(2).
               10 :CLM:LTC-THERP-DAYS-USED               PIC 9(2).
             07 :CLM:LTC-TABLE-1.
               10 :CLM:LTC-CLM-LV-DATA-ALL.
                   15 :CLM:LTC-CLM-LV-DATA                              24680001
                       OCCURS 5 INDEXED BY   :CLM:LTC-LV-INDX.          24690001
                       20 :CLM:LTC-LV-TYPE               PIC X(1).
                           88 :CLM:LTC-VALID-LV-TYPE                    24710001
                               VALUE 'H' 'M' 'T'.                       24720001
                       20 :CLM:LTC-LV-DTE                PIC 9(8)
                                                            COMP-3.
                       20 :CLM:LTC-LV-DTE-THRU           PIC 9(8)
                                                            COMP-3.
                       20 :CLM:LTC-LV-PAID               PIC 9(2).
                       20  FILLER                        PIC X(2).
             07 :CLM:LTC-GROUP-2.
               10 :CLM:LTC-PHYS-ATTENDING                PIC X(7).
               10 :CLM:LTC-PHYS-ATTEND-NPI               PIC X(10).
               10 :CLM:LTC-PA3L-NET-INCOME               PIC S9(5)V99.
               10 :CLM:LTC-PA3L-TAPE-EFF-DTE             PIC 9(6).
               10 :CLM:LTC-PEER-GROUP-PMT                PIC S9(7)V99.
               10 :CLM:LTC-PAY-BED-HOLD-DAYS             PIC 9(3).
               10 :CLM:LTC-REF-NUM                       PIC 9(4).
               10 :CLM:LTC-COTTAGE-NUM                   PIC X(7).
               10 :CLM:LTC-MED-RECORD-NUM                PIC X(16).
               10 :CLM:LTC-BENEFIT-EX-IND                PIC X(1).
               10 :CLM:LTC-BEGIN-DAYS-PAID               PIC 9(3).
               10 :CLM:LTC-END-DAYS-PAID                 PIC 9(3).
               10 :CLM:LTC-PROV-RATE-AMT                 PIC S9(4)V99.
               10 :CLM:LTC-CLM-TAD-SERVICES.
                   15 :CLM:LTC-TAD-TRACHEOSTOMY          PIC X(1).
                   15 :CLM:LTC-TAD-RESPIR-THERAPY        PIC X(1).
                   15 :CLM:LTC-TAD-IV-THERAPY            PIC X(1).
                   15 :CLM:LTC-TAD-HEAD-TRAUMA           PIC X(1).
                   15 :CLM:LTC-TAD-OXY-THERAPY           PIC X(1).
                   15 :CLM:LTC-TAD-NG-TUBE-FEED          PIC X(1).
                   15 :CLM:LTC-TAD-WOUND-CARE            PIC X(1).
                   15 :CLM:LTC-TAD-PHYS-THERAPY          PIC X(1).
                   15 :CLM:LTC-TAD-SPCH-THERAPY          PIC X(1).
                   15 :CLM:LTC-TAD-OCCUP-THERAPY         PIC X(1).
                   15 :CLM:LTC-TAD-FUTURE-1              PIC X(1).
                   15 :CLM:LTC-TAD-FUTURE-2              PIC X(1).
                   15 :CLM:LTC-TAD-FUTURE-3              PIC X(1).
               10  FILLER REDEFINES
                      :CLM:LTC-CLM-TAD-SERVICES.
                   15 :CLM:LTC-PED-FROM-DATE        PIC 9(8) COMP.
                   15 :CLM:LTC-PED-THRU-DATE        PIC 9(8) COMP.
                   15 :CLM:LTC-SPC-FROM-DATE        PIC 9(8) COMP.
                   15 FILLER                        PIC X(1).
               10 :CLM:LTC-ASSESS-BEGIN-DTE              PIC 9(8).
               10  FILLER REDEFINES
                   :CLM:LTC-ASSESS-BEGIN-DTE.
                   15 :CLM:LTC-ASSESS-BEGIN-DTE-YY       PIC 9(4).
                   15 :CLM:LTC-ASSESS-BEGIN-DTE-MM       PIC 9(2).
                   15 :CLM:LTC-ASSESS-BEGIN-DTE-DD       PIC 9(2).
               10 :CLM:LTC-ASSESS-END-DTE                PIC 9(8).
               10  FILLER REDEFINES
                   :CLM:LTC-ASSESS-END-DTE.
                   15 :CLM:LTC-ASSESS-END-DTE-YY         PIC 9(4).
                   15 :CLM:LTC-ASSESS-END-DTE-MM         PIC 9(2).
                   15 :CLM:LTC-ASSESS-END-DTE-DD         PIC 9(2).
               10  :CLM:LTC-PAT-RESP-APPLIED             PIC S9(5)V99
                                                         COMP-3.
               10  :CLM:LTC-ATTEND-TAXOMY-CD             PIC X(10).
               10  FILLER                                PIC X(09).
            06 FILLER                                    PIC X(2831).   24440001
           05  :CLM:CLM-PROF-RED     REDEFINES                          25160001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            25170001
             07 :CLM:CLM-PROF-SEGMENT.                                  25160001
               10 :CLM:PR-CLM-TYPE-OF-SERVICE            PIC X(1).
                   88 :CLM:PR-CLM-VALID-TOS                             25190001
                       VALUE 'A' THRU 'I'                               25200001
                             '0' THRU '9'                               25210001
                             'M' 'Y' 'Z'.                               25220001
               10 :CLM:PR-SURG-PCT                       PIC X(1).
               10 :CLM:PR-PHYS-SUPERVISING               PIC X(7).
               10  FILLER                                PIC X(2).
               10 :CLM:PR-ANESTH-BASE-UNITS              PIC 9(4).
               10 :CLM:PR-PLACE-OF-SVC                   PIC X(1).
                   88 :CLM:PR-VALID-PLACE-OF-SVC                        25270001
                       VALUE '0' THRU '9'.                              25280001
               10 :CLM:PR-LAB-IND                        PIC X(1).
                   88 :CLM:PR-VALID-LAB-IND          VALUE ' ' 'Y' 'N'. 25300001
               10 :CLM:PR-CLM-AHS-IND                    PIC X(1).
               10 :CLM:PR-SECOND-OPINION-IND             PIC X(1).
               10 :CLM:PR-POSTOP-DAY-LIMIT               PIC S9(03)
                                                           COMP-3.
               10 :CLM:PR-PREOP-DAY-LIMIT                PIC S9(03)
                                                           COMP-3.
               10 :CLM:PR-STER-HYST-CONST-DTE            PIC 9(8).
               10 :CLM:PR-STER-CONST-DAYS                PIC 9(3).
               10 :CLM:PR-STER-INTERP-IND                PIC X(1).
               10 :CLM:PR-STER-RACE                      PIC X(1).
               10 :CLM:PR-STER-TIME-REASON               PIC 9(1).
               10 :CLM:PR-CLM-ABORT-CDE                  PIC X(1).
               10 :CLM:PR-CLM-ABORT-REASON               PIC X(1).
               10 :CLM:PR-PHYS-REFERRING                 PIC X(7).
               10 :CLM:PR-SHCF-NUM                       PIC X(7).
               10 :CLM:PR-HOSPICE-FCLTY-PROV-NUM         PIC X(7).
               10 :CLM:PR-PHYS-REFER-NPI                 PIC X(10).
               10 :CLM:PR-SHCF-NUM-NPI                   PIC X(10).
               10 :CLM:PR-MED-RECORD-NUM                 PIC X(16).
               10 :CLM:PR-MCARE-COV-IND                  PIC X(1).
               10 :CLM:PR-ASC-LVL-NUM                    PIC X(1).
               10 FILL-PR-ASC-LVL-NUM                    PIC X(1).
               10 :CLM:PR-DME-PURCHASE-IND               PIC X(1).
                   88 :CLM:PR-DME-RENTAL-AS-PURCHASE VALUE 'Y'.         25500001
               10 :CLM:PR-GESTATION-IND                  PIC X(1).
               10 :CLM:PR-MULTI-SPECIALTY-IND            PIC X(1).
               10 :CLM:PR-PAT-RESP-APPLIED       PIC S9(5)V99 COMP-3.
               10 :CLM:PR-NDC-CDE                        PIC X(11).
               10 :CLM:PR-SUBMIT-METRIC-UNITS    PIC S9(8)V999 COMP-3.
               10 :CLM:PR-CNVRTD-METRIC-UNITS    PIC S9(8)V999 COMP-3.
               10 :CLM:PR-SUBMIT-METRIC-UOM      PIC X(02).
               10 :CLM:PR-SUBMITTED-MJ-UNITS             PIC S9(5).
               10 :CLM:PR-CLM-DRUG-PRICE                 PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:PR-DOSE-FORM-IND                  PIC X(1).
                   88 :CLM:PR-DOSE-IS-TAB-OR-CAP             VALUE 'Y'.
               10 :CLM:PR-DRUG-CLASS                     PIC X(1).
               10 :CLM:PR-GENERIC-CNTL-NUM               PIC X(5).
               10 :CLM:PR-GENERIC-SEQ-NUM                PIC X(6).
               10 :CLM:PR-MAC-PRICE                      PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:PR-REBATE-IND                     PIC X(1).
               10 :CLM:PR-STATE-MAC-PRICE                PIC S9(7)V9(6)
                                                             COMP-3.
               10 :CLM:PR-THERAPEUTIC-CLASS-GN           PIC X(2).
               10 :CLM:PR-THERAPEUTIC-CLASS-SP           PIC X(3).
               10 :CLM:PR-PHYS-SUPERVISING-NPI           PIC X(10).
               10 :CLM:PR-SEMI-NOTE-DATA                 PIC X(78).
               10  FILLER                                PIC X(54).
             07 FILLER                                   PIC X(2781).   25160001
           05  :CLM:CLM-TRANS-RED     REDEFINES                         25540001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            25550001
             07 :CLM:CLM-TRANS-SEGMENT.                                 25540001
               10  FILLER                                PIC X(5).      25560001
               10  :CLM:TR-TRANS-ORIGIN-CDE              PIC X(1).
                   88  :CLM:TR-VALID-ORIGIN-CDE                         25580001
                       VALUE '0' THRU '9'.                              25590001
               10  :CLM:TR-TRANS-DEST-CDE                PIC X(1).
                   88  :CLM:TR-VALID-DEST-CDE                           25610001
                       VALUE '0' THRU '9'.                              25620001
               10  :CLM:TR-MCARE-COV-IND                 PIC X(1).
               10  FILLER                                PIC X(31).
             07 FILLER                                   PIC X(3060).   25540001
           05  :CLM:CLM-VISION-RED     REDEFINES                        25650001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            25660001
             07 :CLM:CLM-VISION-SEGMENT.                                25650001
               10  FILLER                                PIC X(10).
               10  :CLM:VI-PHYS-REFERRING                PIC X(7).
               10  :CLM:VI-PHYS-REFER-NPI                PIC X(10).
               10  :CLM:VI-PREVIOUS-EXAM                 PIC 9(8).
               10  :CLM:VI-CURRENT-EXAM                  PIC 9(8).
               10  :CLM:VI-PHYS-PRESCRIBER               PIC X(7).
               10  :CLM:VI-SHCF-NUM                      PIC X(7).
               10  :CLM:VI-PHYS-PRESCR-NPI               PIC X(10).
               10  :CLM:VI-SHCF-NUM-NPI                  PIC X(10).
               10  :CLM:VI-PLACE-OF-SVC                  PIC X(1).
                   88  :CLM:VI-VALID-PLACE-OF-SVC                       25740001
                       VALUE '0' THRU '9'.                              25750001
               10  :CLM:VI-DISP-DTE                      PIC 9(8).
               10  :CLM:VI-MCARE-COV-IND                 PIC X(1).
               10  FILLER                                PIC X(24).
             07 FILLER                                   PIC X(2988).   25650001
           05  :CLM:CLM-DENTAL-RED     REDEFINES                        25790001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            25800001
            06 :CLM:CLM-DENTAL-SEGMENT.                                 25790001
             07 :CLM:DA-GROUP-1.
               10  :CLM:DA-PLACE-OF-SVC                  PIC X(1).
                   88  :CLM:DA-VALID-PLACE-OF-SVC                       25820001
                       VALUE '0' THRU '9'.                              25830001
               10  :CLM:DA-TOOTH-NUM.
                   88  :CLM:DA-VALID-TOOTH-NUM                          25850001
                       VALUE '01' THRU '32'                             25860001
                             'A ' 'B ' 'C ' 'D ' 'E ' 'F ' 'G ' 'H '    25870001
                             'I ' 'J ' 'K ' 'L ' 'M ' 'N ' 'O ' 'P '    25880001
                             'Q ' 'R ' 'S ' 'T ' 'SN'.                  25890001
                   88  :CLM:DA-VALID-TOOTH-QUAD                         25900001
                       VALUE 'LL' 'LR' 'UL' 'UR'.                       25910001
                   15  :CLM:DA-TOOTH-NUM-1               PIC X(1).
                   15  :CLM:DA-TOOTH-NUM-2               PIC X(1).
             07 :CLM:DA-TABLE-1.
               10  :CLM:DA-TOOTH-SURFACE-ALL.
                   15  :CLM:DA-TOOTH-SURFACE             PIC X(1)
                       OCCURS 5 INDEXED BY :CLM:DA-SURF-INDX.           25960001
                       88  DA-VALID-TOOTH-SURFACE
                           VALUE ' ' 'B' 'D' 'I' 'L' 'M' 'O'.           25980001
                   15  FILLER                            PIC X(5).
             07 :CLM:DA-GROUP-2.
               10  :CLM:DA-POSTOP-DAY-LIMIT              PIC S9(03)
                                                           COMP-3.
               10  :CLM:DA-PHYS-REFERRING                PIC X(7).
               10  :CLM:DA-SHCF-NUM                      PIC X(7).
               10  :CLM:DA-PHYS-REFER-NPI                PIC X(10).
               10  :CLM:DA-SHCF-NUM-NPI                  PIC X(10).
               10  :CLM:DA-SURG-PCT                      PIC X(1).
               10  :CLM:DA-REFERRING-TAXOMY-CD           PIC X(10).
               10  :CLM:DA-PHYS-SUPERVISING              PIC X(7).
               10  :CLM:DA-PHYS-SUPERVISING-NPI          PIC X(10).
               10  FILLER                                PIC X(7).
            06 FILLER                                    PIC X(3015).   25790001
           05  :CLM:CLM-PHARMACY-RED     REDEFINES                      26060001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            26070001
            06  :CLM:CLM-PHARMACY-SEGMENT.                              26060001
             07 :CLM:PH-GROUP-1.
               10  :CLM:PH-PHYS-PRESCRIBER               PIC X(7).
               10  :CLM:PH-PHYS-PRESCR-NPI               PIC X(10).
               10  :CLM:PH-PRESC-NUM                     PIC X(12).
               10  :CLM:PH-MAC-OVERRIDE                  PIC X(1).
                   88  :CLM:PH-VALID-MAC-OVERRIDE    VALUE ' ' 'Y' 'N'. 26110001
               10  :CLM:PH-CLM-DRUG-PRICE                PIC S9(7)V9(6)
                                                           COMP-3.
               10  :CLM:PH-CLM-DRUG-PRICE-OLD REDEFINES
                   :CLM:PH-CLM-DRUG-PRICE                PIC S9(3)V9(4).
               10  :CLM:PH-MAC-PRICE                     PIC 9(7)V9(6)
                                                           COMP-3.
               10  :CLM:PH-DISPENSING-FEE                PIC 9(3)V99.
               10  :CLM:PH-DRUG-DAYS-SUPPLY              PIC 9(3).
               10  :CLM:PH-DRUG-CLASS                    PIC X(1).
               10  :CLM:PH-THERAPEUTIC-CLASS-GN          PIC X(2).
               10  :CLM:PH-COMPOUND-DRUG-IND             PIC X(1).
                   88 :CLM:PH-VALID-COMPOUND-DRUG-IND                   26200001
                                                    VALUE ' ' 'Y' 'N'.  26200001
               10  :CLM:PH-PHARM-NH-IND                  PIC X(1).
               10  :CLM:PH-BASE-DISP-FEE                 PIC 9(5)V99.
               10  :CLM:PH-PHARM-DEDUCT-CDE              PIC X(2).
               10  :CLM:PH-PHARM-EMERGENCY-IND           PIC X(1).
               10  :CLM:PH-EMERG-DISP-AMT                PIC 9(5)V99.
               10  :CLM:PH-PHARM-CONSULT-IND             PIC X(1).
               10  :CLM:PH-CONSULT-DISP-AMT              PIC 9(5)V99.
               10  :CLM:PH-PHARM-IMPACT-IND              PIC X(1).
               10  :CLM:PH-IMPACT-DISP-AMT               PIC 9(5)V99.
               10  :CLM:PH-LOCKIN-IND                    PIC X(1).
                   88  :CLM:PH-VALID-LOCKIN          VALUE '0' '1' '2'.
                   88  :CLM:PH-NO-LOCKIN             VALUE '0'.
                   88  :CLM:PH-LOCK-MATCH            VALUE '1'.
                   88  :CLM:PH-LOCK-NOMATCH          VALUE '2'.
               10  :CLM:PH-THERAPEUTIC-CLASS-SP          PIC X(3).
               10  :CLM:PH-CLM-AHS-IND                   PIC X(1).
               10  :CLM:PH-REBATE-IND                    PIC X(1).
               10  :CLM:PH-DOSE-FORM-IND                 PIC X(1).
                   88  :CLM:PH-DOSE-IS-TAB-OR-CAP    VALUE 'Y'.
               10  :CLM:PH-CUSTOMER-LOCATION             PIC 9(02).
               10  :CLM:PH-NEW-REFILL-CODE               PIC 9(02).
               10  :CLM:PH-DISPENCE-AS-WRITTEN           PIC X(01).
               10  :CLM:PH-DUR-CONFLICT-CODE             PIC X(02).
               10  :CLM:PH-DUR-INTERVENTION-CODE         PIC X(02).
               10  :CLM:PH-DUR-OUTCOME-CODE              PIC X(02).
               10  :CLM:PH-GCN                           PIC X(05).
               10  :CLM:PH-CYCLE-IND                     PIC X(1).      26470001
                   88  :CLM:PH-SECOND-CYCLE          VALUE '2'.         26480001
               10  :CLM:PH-VERSION-NUM                   PIC X(02).     28950012
               10  :CLM:PH-SUBMISSION-CLARIFIER          PIC X(02).     28950012
               10  :CLM:PH-SUBMISSION-CLARIFIER2         PIC X(02).     28950012
               10  :CLM:PH-SUBMISSION-CLARIFIER3         PIC X(02).     28950012
               10  :CLM:PH-PMT-IF-NO-EDIT2097            PIC S9(7)V99
                                                             COMP-3.
               10  :CLM:PH-STATE-MAC-PRICE               PIC S9(7)V9(6)
                                                             COMP-3.
               10  :CLM:PH-GENERIC-SEQ-NUM               PIC X(6).
               10  :CLM:PH-MME-AMT                       PIC X(19).
               10  FILLER                                PIC X(32).     26510001
             07 :CLM:PH-TABLE-1.
               10  :CLM:PH-INCENTIVE-DATA   OCCURS 3 TIMES.
                   12 :CLM:PH-INCENTIVE-PAYMENT          PIC S9(4)V9(3)
                                                         COMP-3.
                   12 :CLM:PH-INCENTIVE-REASON           PIC X(20).
            06 FILLER                                    PIC X(2836).   26520001
           05  :CLM:CLM-CAPITATION-RED    REDEFINES                     26520001
                :CLM:CLM-MCARE-PARTA-SEGMENT.                           26530001
             07 :CLM:CLM-CAPITATION-SEGMENT.                            26520001
               10  :CLM:CP-CAPITATION-CATEGORY           PIC 9(05).     20350001
               10  :CLM:CP-CASE-MANAGER                  PIC 9(07)
                                                           COMP-3.
               10  :CLM:CP-DISPLAY-FACTOR REDEFINES                     20221005
                   :CLM:CP-CASE-MANAGER                  PIC 99V9(05)   20222001
                                                           COMP-3.      20223001
               10  :CLM:CP-CLM-CAPITATION-IND            PIC X(1).
               10  :CLM:CP-LTC-FACILITY-PROV-NUM         PIC X(7).
               10  :CLM:CP-LTC-FACILITY-PROV-NPI         PIC X(10).
               10  :CLM:CP-PMT-RATE-ONE                  PIC 9(05)V99.
               10  :CLM:CP-PMT-DAYS-ONE                  PIC 9(02).
               10  :CLM:CP-PMT-RATE-TWO                  PIC 9(05)V99.
               10  :CLM:CP-BASE-AMOUNT REDEFINES                        20271001
                   :CLM:CP-PMT-RATE-TWO                  PIC 9(05)V99.  20272001
               10  :CLM:CP-PMT-DAYS-TWO                  PIC 9(02).
               10  :CLM:CP-PMT-INDICATOR REDEFINES                      20281006
                   :CLM:CP-PMT-DAYS-TWO                  PIC X(02).     20282005
               10  :CLM:CP-COMPUTE-FACTOR                PIC 99V9(05).  20290005
             07  FILLER                                  PIC X(3047).   26520001
           05  :CLM:CLM-EPSDT-RED     REDEFINES                         26710001
               :CLM:CLM-MCARE-PARTA-SEGMENT.                            26720001
             07 :CLM:CLM-EPSDT-SEGMENT.                                 26710001
               10  :CLM:EPSDT-CLM-TYPE-OF-SERVICE        PIC X(1).
                   88  :CLM:EPSDT-CLM-VALID-TOS                         26740001
                       VALUE 'A' THRU 'I'                               26750001
                             '0' THRU '9'                               26760001
                             'M' 'Y' 'Z'.                               26770001
               10  :CLM:EPSDT-SHCF-NUM                   PIC X(7).
               10  :CLM:EPSDT-SHCF-NUM-NPI               PIC X(10).
               10  :CLM:EPSDT-PLACE-OF-SVC               PIC X(1).
                   88  :CLM:EPSDT-VALID-PLACE-OF-SVC                    26810001
                       VALUE '0' THRU '9'.                              26820001
               10  :CLM:EPSDT-LAB-IND                    PIC X(1).
                   88  :CLM:EPSDT-VALID-LAB-IND      VALUE ' ' 'Y' 'N'. 26840001
               10  :CLM:EPSDT-PHYS-REFERRING             PIC X(7).
               10  :CLM:EPSDT-PHYS-REFER-NPI             PIC X(10).
               10  :CLM:EPSDT-CLM-SCRN-SEGMENT.
                   15  :CLM:EPSDT-RACE-CDE               PIC X(1).
                   15  :CLM:EPSDT-SCRN-DATA-IND          PIC X(1).
                   15  :CLM:EPSDT-SCRN-CONT-CARE-IND     PIC X(1).
                   15  :CLM:EPSDT-SCRN-WIC-IND           PIC X(1).
                   15  :CLM:EPSDT-SCRN-GUIDANCE-IND      PIC X(1).
                   15  :CLM:EPSDT-SCRN-PHYSICAL-IND      PIC X(1).
                   15  :CLM:EPSDT-SCRN-URINALYSIS-IND    PIC X(1).
                   15  :CLM:EPSDT-SCRN-HEMO-IND          PIC X(1).
                   15  :CLM:EPSDT-SCRN-SICKLE-CELL-IND   PIC X(1).
                   15  :CLM:EPSDT-SCRN-TUBERCULIN-IND    PIC X(1).
                   15  :CLM:EPSDT-SCRN-LEAD-IND          PIC X(1).
                   15  :CLM:EPSDT-SCRN-DPT-IND           PIC X(1).
                   15  :CLM:EPSDT-SCRN-POLIO-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-MMR-IND           PIC X(1).
                   15  :CLM:EPSDT-SCRN-HAEM-IND          PIC X(1).
                   15  :CLM:EPSDT-SCRN-CARDIAC-IND       PIC X(1).
                   15  :CLM:EPSDT-SCRN-CARDIAC-DIAG      PIC X(1).
                   15  :CLM:EPSDT-SCRN-ORTHO-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-ORTHO-DIAG        PIC X(1).
                   15  :CLM:EPSDT-SCRN-NEURO-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-NEURO-DIAG        PIC X(1).
                   15  :CLM:EPSDT-SCRN-GENI-URIN-IND     PIC X(1).
                   15  :CLM:EPSDT-SCRN-GENI-URIN-DIAG    PIC X(1).
                   15  :CLM:EPSDT-SCRN-ENT-IND           PIC X(1).
                   15  :CLM:EPSDT-SCRN-ENT-DIAG          PIC X(1).
                   15  :CLM:EPSDT-SCRN-ENDOC-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-ENDOC-DIAG        PIC X(1).
                   15  :CLM:EPSDT-SCRN-OTHER-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-OTHER-DIAG        PIC X(1).
                   15  :CLM:EPSDT-SCRN-VISION-IND        PIC X(1).
                   15  :CLM:EPSDT-SCRN-VISION-DIAG       PIC X(1).
                   15  :CLM:EPSDT-SCRN-HEAR-IND          PIC X(1).
                   15  :CLM:EPSDT-SCRN-HEAR-DIAG         PIC X(1).
                   15  :CLM:EPSDT-SCRN-DENTAL-IND        PIC X(1).
                   15  :CLM:EPSDT-SCRN-DENTAL-DIAG       PIC X(1).
                   15  :CLM:EPSDT-SCRN-NUTRI-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-NUTRI-DIAG        PIC X(1).
                   15  :CLM:EPSDT-SCRN-GROWTH-IND        PIC X(1).
                   15  :CLM:EPSDT-SCRN-GROWTH-DIAG       PIC X(1).
                   15  :CLM:EPSDT-SCRN-BEHAVIOR-IND      PIC X(1).
                   15  :CLM:EPSDT-SCRN-BEHAVIOR-DIAG     PIC X(1).
                   15  :CLM:EPSDT-SCRN-DEVEL-IND         PIC X(1).
                   15  :CLM:EPSDT-SCRN-DEVEL-DIAG        PIC X(1).
               10  :CLM:EPSDT-MCARE-COV-IND              PIC X(1).
               10  :CLM:EPSDT-PHYS-SUPERVISING           PIC X(7).
               10  :CLM:EPSDT-PHYS-SUPERVISING-NPI       PIC X(10).
               10  FILLER                                PIC X(7).
             07 FILLER                                   PIC X(2994).   26710001
