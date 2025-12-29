00009  9999-ABEND.                                                      ABENDPD
00011      DISPLAY ' '.                                                 ABENDPD
00012      DISPLAY '*************************************************'. ABENDPD
00013      DISPLAY '* A B E N D * A B E N D * A B E N D * A B E N D *'. ABENDPD
00014      DISPLAY '*************************************************'. ABENDPD
00015      DISPLAY ' '.                                                 ABENDPD
00016      DISPLAY 'PROGRAM '      ABEND-PROG-NAME ' ABENDED BECAUSE:'. ABENDPD
00017      DISPLAY ' '.                                                 ABENDPD
00018      DISPLAY                 ABEND-USER-MSG.                      ABENDPD
00019      DISPLAY ' '.                                                 ABENDPD
00020      DISPLAY 'IN PARAGRAPH ' ABEND-PARA-NAME.                     ABENDPD
00021      DISPLAY ' '.                                                 ABENDPD
00022      DISPLAY '*************************************************'. ABENDPD
00023      DISPLAY '* A B E N D * A B E N D * A B E N D * A B E N D *'. ABENDPD
00024      DISPLAY '*************************************************'. ABENDPD
00025      DISPLAY ' '.                                                 ABENDPD
00026      CALL 'ABEND' USING ABEND-USER-CODE.                          ABENDPD
00028  9999-EXIT.                                                       ABENDPD
00029      EXIT.                                                        ABENDPD
