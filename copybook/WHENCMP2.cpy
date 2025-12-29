       01  DISPLAY-PROGRAM-INFO.                                        09/06/91
           05  PROGRAM-INFO.                                            WHENCMP2
               10  FILLER          PIC X(08)  VALUE 'PROGRAM '.            LV001
               10  PROGRAM-NME     PIC X(08).                           WHENCMP2
               10  FILLER          PIC X(17) VALUE ' WAS COMPILED ON '. WHENCMP2
               10  PROGRAM-DT      PIC X(08).                           WHENCMP2
               10  FILLER          PIC X(04) VALUE ' AT '.              WHENCMP2
               10  PROGRAM-TME     PIC X(08).                           WHENCMP2
           05  WHEN-COMPILED-INFO.                                      WHENCMP2
               10  COMPILE-DT      PIC X(08).                           WHENCMP2
               10  COMPILE-TME     PIC X(08).                           WHENCMP2
           05  FILLER              PIC X(03).                           WHENCMP2
