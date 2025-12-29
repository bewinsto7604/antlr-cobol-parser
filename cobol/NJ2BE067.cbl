       IDENTIFICATION DIVISION.                                         00010000
                                                                        00020010
       PROGRAM-ID.     NJ2BE067.                                        00030001
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
           VALUE '<<<<< NJ2BE067 WORKING STORAGE STARTS HERE >>>>>'.    00590001
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
           EJECT                                                        00760087
           COPY COSMATRX.                                               00770088
                                                                        00780087
       01  FILLER                                  PIC X(48)            00790087
           VALUE '<<<<<< NJ2BE067 WORKING STORAGE ENDS HERE >>>>>>'.    00850001
           EJECT                                                        00810087
       LINKAGE SECTION.                                                 00820087
                                                                        00830087
       01  PROCESS                                 PIC X(01).           01010002
      *    88  STARTING                        VALUE '0'.               01020002
      *    88  PROCESSING                      VALUE '1'.               01030002
                                                                        01040002
           COPY ZCLMACTU.                                               00840087
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
           MOVE 'NJ2BE067' TO PROGRAM-NME.                              01040001
                                                                        01000087
           COPY COMPMOVE.                                               01010087
           EJECT                                                        01020087
       1000-PROCESS.                                                    01030087
                                                                        01040087
                                                                        01570003
           IF A-CLM-GSHP-RELATED = '1' OR '2' OR '5' OR '6' OR          01350098
                                   '7' OR '8' OR '9'                    01360098
              MOVE '94' TO A-MODIFIED-COS                               01370098
              GO TO 1000-EXIT                                           01380098
           ELSE                                                         01390098
              IF A-PROV-TYPE = '37' OR A-CLM-MEDIA-CDE = 7              01400098
                 MOVE '37' TO A-MODIFIED-COS                            01410098
                 GO TO 1000-EXIT                                        01420098
           ELSE                                                         01390098
           IF (A-PROC-CDE-FIRST4-NUM AND A-PROC-CDE-LAST1-ALPHA)        01390098
           AND NOT A-OUTPATIENT AND                                     01390098
               NOT(A-MCARE-PARTA AND TT-A-OUTPATIENT)                   01390098
                         MOVE '60' TO A-MODIFIED-COS                    01390098
                         GO TO 1000-EXIT                                01390098
                      END-IF                                            01390098
              END-IF                                                    01430098
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
           IF M-MODCOS (NDX1) < HIGH-VALUES                             01570092
              MOVE M-MODCOS (NDX1) TO A-MODIFIED-COS                    01580088
           ELSE                                                         01590088
              IF A-CLM-TYPE = 18 OR                                     01780001
                 (A-CLM-TYPE = 15 AND TT-B-MCARE-CLM-TYPE = 18)         01790001
                 MOVE '08C' TO A-MODIFIED-COS                           01800001
              ELSE                                                      01810001
                 MOVE '99' TO A-MODIFIED-COS                            01820001
              END-IF                                                    01830001
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
                 IF M-MODCOS (NDX3) = HIGH-VALUES                       01920093
                    SET NDX1 TO NDX3                                    01930093
                    MOVE 'Y' TO COMPLETION-INDICATOR                    01940093
                 ELSE                                                   01950093
                    IF M-LEVEL (NDX3) > M-LEVEL (NDX2)                  01960093
                       SET NDX2 TO NDX3                                 01970093
                       PERFORM 3000-TRY-A-TEST                          01980093
                    ELSE                                                01990093
                       PERFORM UNTIL                                    02000093
                               M-MODCOS (NDX3) = HIGH-VALUES OR         02010093
                               (M-LEVEL (NDX3) > SPACES AND             02020093
                                M-LEVEL (NDX3) < M-LEVEL (NDX2))        02030093
                               SET NDX3 UP BY 1                         02040093
                       END-PERFORM                                      02050093
                       IF M-MODCOS (NDX3) = HIGH-VALUES                 02060093
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
                         M-MODCOS (NDX3) = HIGH-VALUES OR               02210092
                         (M-LEVEL (NDX3) > SPACES AND                   02220092
                          M-LEVEL (NDX3) NOT > M-LEVEL (NDX2))          02230093
                         SET NDX3 UP BY 1                               02240088
                 END-PERFORM                                            02250088
                 IF M-MODCOS (NDX3) = HIGH-VALUES                       02260093
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
                 IF M-MODCOS (NDX3) = HIGH-VALUES                       02390093
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
                         M-MODCOS (NDX3) = HIGH-VALUES OR               02510093
                         (M-LEVEL (NDX3) > SPACES AND                   02520092
                          M-LEVEL (NDX3) NOT > M-LEVEL (NDX2))          02530092
                         SET NDX3 UP BY 1                               02540088
                 END-PERFORM                                            02550088
                 IF M-MODCOS (NDX3) = HIGH-VALUES                       02560093
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
           IF A-CLM-TYPE = 14                                           02990088
              MOVE TT-A-MCARE-CLM-TYPE TO W-VALUE                       03000088
           ELSE                                                         51080000
              IF A-CLM-TYPE = 15                                        03020088
                 MOVE TT-B-MCARE-CLM-TYPE TO W-VALUE                    03030088
              ELSE                                                      03040088
                 MOVE A-CLM-TYPE TO W-VALUE                             03050088
              END-IF                                                    03060088
           END-IF.                                                      03070088
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
           IF NOT ((A-INPATIENT OR A-HOME-HEALTH OR                     03870088
                    (A-MCARE-PARTA AND TT-A-INPATIENT)) OR              03880088
                   ((A-OUTPATIENT OR                                    03890088
                     (A-MCARE-PARTA AND TT-A-OUTPATIENT)) AND           03900088
                    NOT (OUTPATIENT-LAB-PROC)))                         04190001
              MOVE A-PROC-CDE TO W-VALUE                                03920088
              PERFORM 4000-EXECUTE-TEST                                 03930088
           END-IF.                                                      54110000
                                                                        54120000
       3050-PROCEDURE-AND-MODIFIER.                                     03960099
                                                                        03970088
           IF NOT ((A-INPATIENT OR A-HOME-HEALTH OR                     03980088
                    (A-MCARE-PARTA AND TT-A-INPATIENT)) OR              03990088
                   ((A-OUTPATIENT OR                                    04000088
                     (A-MCARE-PARTA AND TT-A-OUTPATIENT)) AND           04010088
                    NOT (OUTPATIENT-LAB-PROC)))                         04300001
              MOVE A-PROC-CDE TO W-VALUE                                04030088
              IF A-PROC-MOD > SPACES                                    04040088
                 MOVE A-PROC-MOD TO W-VALUE (6:2)                       04050088
              END-IF                                                    04060088
              PERFORM 4000-EXECUTE-TEST                                 04070088
              IF NOT-INCLUDED AND NOT-EXCLUDED                          04080088
                 IF A-PROC-MOD-SECOND > SPACES                          04090088
                    MOVE A-PROC-MOD-SECOND TO W-VALUE (6:2)             04100088
                    PERFORM 4000-EXECUTE-TEST                           04110088
                 END-IF                                                 04120088
              END-IF                                                    04130088
           END-IF.                                                      54200000
                                                                        54210000
       3060-PROCEDURE-MODIFIER-ONLY.                                    04160099
                                                                        04170099
           IF NOT ((A-INPATIENT OR A-HOME-HEALTH OR                     04180099
                    (A-MCARE-PARTA AND TT-A-INPATIENT)) OR              04190099
                   ((A-OUTPATIENT OR                                    04200099
                     (A-MCARE-PARTA AND TT-A-OUTPATIENT)) AND           04210099
                    NOT (OUTPATIENT-LAB-PROC)))                         04500001
              IF A-PROC-MOD > SPACES                                    04230099
                 MOVE A-PROC-MOD TO W-VALUE                             04240099
                 PERFORM 4000-EXECUTE-TEST                              04250099
                 IF NOT-INCLUDED AND NOT-EXCLUDED                       04260099
                    IF A-PROC-MOD-SECOND > SPACES                       04270099
                       MOVE A-PROC-MOD-SECOND TO W-VALUE                04280099
                       PERFORM 4000-EXECUTE-TEST                        04290099
                    END-IF                                              04300099
                 END-IF                                                 04310099
              END-IF                                                    04320099
           END-IF.                                                      54390000
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
           EJECT                                                        04580088
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