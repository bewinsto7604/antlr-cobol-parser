      * Sample COBOL Copybook - Patient Eligibility Record
       01  PATIENT-RECORD.
           05  PATIENT-ID                PIC 9(10).
           05  PATIENT-NAME.
               10  FIRST-NAME            PIC X(20).
               10  LAST-NAME             PIC X(30).
           05  DATE-OF-BIRTH             PIC 9(8).
           05  ELIGIBILITY-STATUS        PIC X(1).
               88  ELIGIBLE              VALUE 'E'.
               88  INELIGIBLE            VALUE 'I'.
               88  PENDING               VALUE 'P'.
           05  INCOME-AMOUNT             PIC 9(7)V99.
           05  INCOME-TYPE               PIC 9(2).
               88  EARNED-INCOME         VALUE 01.
               88  UNEARNED-INCOME       VALUE 02.
               88  SSI-INCOME            VALUE 03.
               88  PENSION-INCOME        VALUE 04.
           05  HOUSEHOLD-SIZE            PIC 9(2).
           05  POVERTY-LEVEL-PERCENT     PIC 9(3).
               88  BELOW-100-PERCENT     VALUE 000 THRU 100.
               88  BETWEEN-100-150       VALUE 101 THRU 150.
               88  ABOVE-150-PERCENT     VALUE 151 THRU 999.
           05  CITIZENSHIP-CODE          PIC X(1).
               88  US-CITIZEN            VALUE 'C'.
               88  PERMANENT-RESIDENT    VALUE 'P'.
               88  NON-CITIZEN           VALUE 'N'.
           05  STATE-CODE                PIC X(2).
           05  MEDICAID-ID               PIC X(15).
           05  COVERAGE-START-DATE       PIC 9(8).
           05  COVERAGE-END-DATE         PIC 9(8).

      * Address Information
       01  ADDRESS-INFO REDEFINES PATIENT-RECORD.
           05  FILLER                    PIC X(60).
           05  ADDRESS-STREET            PIC X(50).
           05  ADDRESS-CITY              PIC X(30).
           05  ADDRESS-STATE             PIC X(2).
           05  ADDRESS-ZIP               PIC X(10).
