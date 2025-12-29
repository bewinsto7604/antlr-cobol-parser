grammar Cobol85;

// Parser Rules
compilationUnit
    : dataDescriptionEntry* EOF
    ;

dataDescriptionEntry
    : levelNumber dataName (redefinesClause)? (pictureClause)? (valueClause)? DOT
    | conditionNameEntry
    | copyStatement
    ;

conditionNameEntry
    : LEVEL_88 conditionName valueClause DOT
    ;

copyStatement
    : COPY copybook DOT
    ;

levelNumber
    : LEVEL_NUMBER
    ;

dataName
    : qualifiedName
    ;

conditionName
    : qualifiedName
    ;

copybook
    : qualifiedName
    ;

qualifiedName
    : (COLON IDENTIFIER COLON)? IDENTIFIER
    ;

redefinesClause
    : REDEFINES qualifiedName
    ;

pictureClause
    : (PIC | PICTURE) (IS)? pictureString
    ;

valueClause
    : (VALUE | VALUES) (IS)? valueSpec (valueSpec)*
    ;

valueSpec
    : literal
    | literal (THRU | THROUGH) literal
    ;

pictureString
    : PICTURE_STRING
    ;

literal
    : STRING_LITERAL
    | NUMERIC_LITERAL
    | qualifiedName
    ;

// Lexer Rules
COPY : C O P Y ;
REDEFINES : R E D E F I N E S ;
PIC : P I C ;
PICTURE : P I C T U R E ;
VALUE : V A L U E ;
VALUES : V A L U E S ;
IS : I S ;
THRU : T H R U ;
THROUGH : T H R O U G H ;

LEVEL_88 : '88' ;
LEVEL_NUMBER : '01' | '02' | '03' | '04' | '05' | '06' | '07' | '08' | '09'
              | '10' | '11' | '12' | '13' | '14' | '15' | '16' | '17' | '18' | '19'
              | '20' | '21' | '22' | '23' | '24' | '25' | '26' | '27' | '28' | '29'
              | '30' | '31' | '32' | '33' | '34' | '35' | '36' | '37' | '38' | '39'
              | '40' | '41' | '42' | '43' | '44' | '45' | '46' | '47' | '48' | '49'
              | '66' | '77'
              ;

PICTURE_STRING
    : [X9ASV()0-9]+
    ;

STRING_LITERAL
    : '\'' (~['])* '\''
    | '"' (~["])* '"'
    ;

NUMERIC_LITERAL
    : [0-9]+ ('.' [0-9]+)?
    | [0-9]+ 'V' [0-9]+
    ;

IDENTIFIER
    : [A-Z] [A-Z0-9\-]*
    ;

DOT : '.' ;
COLON : ':' ;

WS : [ \t\r\n]+ -> skip ;

COMMENT
    : '*' ~[\r\n]* -> skip
    ;

// Case-insensitive fragments
fragment A : [aA] ;
fragment B : [bB] ;
fragment C : [cC] ;
fragment D : [dD] ;
fragment E : [eE] ;
fragment F : [fF] ;
fragment G : [gG] ;
fragment H : [hH] ;
fragment I : [iI] ;
fragment J : [jJ] ;
fragment K : [kK] ;
fragment L : [lL] ;
fragment M : [mM] ;
fragment N : [nN] ;
fragment O : [oO] ;
fragment P : [pP] ;
fragment Q : [qQ] ;
fragment R : [rR] ;
fragment S : [sS] ;
fragment T : [tT] ;
fragment U : [uU] ;
fragment V : [vV] ;
fragment W : [wW] ;
fragment X : [xX] ;
fragment Y : [yY] ;
fragment Z : [zZ] ;
