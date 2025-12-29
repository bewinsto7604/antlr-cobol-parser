// Generated from grammar/Cobol85.g4 by ANTLR 4.13.1
// jshint ignore: start
import antlr4 from 'antlr4';
import Cobol85Listener from './Cobol85Listener.js';
const serializedATN = [4,1,19,114,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,
4,2,5,7,5,2,6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,
2,13,7,13,2,14,7,14,1,0,5,0,32,8,0,10,0,12,0,35,9,0,1,0,1,0,1,1,1,1,1,1,
3,1,42,8,1,1,1,3,1,45,8,1,1,1,3,1,48,8,1,1,1,1,1,1,1,1,1,3,1,54,8,1,1,2,
1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,4,1,4,1,5,1,5,1,6,1,6,1,7,1,7,1,8,1,8,
1,8,3,8,76,8,8,1,8,1,8,1,9,1,9,1,9,1,10,1,10,3,10,85,8,10,1,10,1,10,1,11,
1,11,3,11,91,8,11,1,11,1,11,5,11,95,8,11,10,11,12,11,98,9,11,1,12,1,12,1,
12,1,12,1,12,3,12,105,8,12,1,13,1,13,1,14,1,14,1,14,3,14,112,8,14,1,14,0,
0,15,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,0,3,1,0,3,4,1,0,5,6,1,0,8,9,
111,0,33,1,0,0,0,2,53,1,0,0,0,4,55,1,0,0,0,6,60,1,0,0,0,8,64,1,0,0,0,10,
66,1,0,0,0,12,68,1,0,0,0,14,70,1,0,0,0,16,75,1,0,0,0,18,79,1,0,0,0,20,82,
1,0,0,0,22,88,1,0,0,0,24,104,1,0,0,0,26,106,1,0,0,0,28,111,1,0,0,0,30,32,
3,2,1,0,31,30,1,0,0,0,32,35,1,0,0,0,33,31,1,0,0,0,33,34,1,0,0,0,34,36,1,
0,0,0,35,33,1,0,0,0,36,37,5,0,0,1,37,1,1,0,0,0,38,39,3,8,4,0,39,41,3,10,
5,0,40,42,3,18,9,0,41,40,1,0,0,0,41,42,1,0,0,0,42,44,1,0,0,0,43,45,3,20,
10,0,44,43,1,0,0,0,44,45,1,0,0,0,45,47,1,0,0,0,46,48,3,22,11,0,47,46,1,0,
0,0,47,48,1,0,0,0,48,49,1,0,0,0,49,50,5,16,0,0,50,54,1,0,0,0,51,54,3,4,2,
0,52,54,3,6,3,0,53,38,1,0,0,0,53,51,1,0,0,0,53,52,1,0,0,0,54,3,1,0,0,0,55,
56,5,10,0,0,56,57,3,12,6,0,57,58,3,22,11,0,58,59,5,16,0,0,59,5,1,0,0,0,60,
61,5,1,0,0,61,62,3,14,7,0,62,63,5,16,0,0,63,7,1,0,0,0,64,65,5,11,0,0,65,
9,1,0,0,0,66,67,3,16,8,0,67,11,1,0,0,0,68,69,3,16,8,0,69,13,1,0,0,0,70,71,
3,16,8,0,71,15,1,0,0,0,72,73,5,17,0,0,73,74,5,15,0,0,74,76,5,17,0,0,75,72,
1,0,0,0,75,76,1,0,0,0,76,77,1,0,0,0,77,78,5,15,0,0,78,17,1,0,0,0,79,80,5,
2,0,0,80,81,3,16,8,0,81,19,1,0,0,0,82,84,7,0,0,0,83,85,5,7,0,0,84,83,1,0,
0,0,84,85,1,0,0,0,85,86,1,0,0,0,86,87,3,26,13,0,87,21,1,0,0,0,88,90,7,1,
0,0,89,91,5,7,0,0,90,89,1,0,0,0,90,91,1,0,0,0,91,92,1,0,0,0,92,96,3,24,12,
0,93,95,3,24,12,0,94,93,1,0,0,0,95,98,1,0,0,0,96,94,1,0,0,0,96,97,1,0,0,
0,97,23,1,0,0,0,98,96,1,0,0,0,99,105,3,28,14,0,100,101,3,28,14,0,101,102,
7,2,0,0,102,103,3,28,14,0,103,105,1,0,0,0,104,99,1,0,0,0,104,100,1,0,0,0,
105,25,1,0,0,0,106,107,5,12,0,0,107,27,1,0,0,0,108,112,5,13,0,0,109,112,
5,14,0,0,110,112,3,16,8,0,111,108,1,0,0,0,111,109,1,0,0,0,111,110,1,0,0,
0,112,29,1,0,0,0,11,33,41,44,47,53,75,84,90,96,104,111];


const atn = new antlr4.atn.ATNDeserializer().deserialize(serializedATN);

const decisionsToDFA = atn.decisionToState.map( (ds, index) => new antlr4.dfa.DFA(ds, index) );

const sharedContextCache = new antlr4.atn.PredictionContextCache();

export default class Cobol85Parser extends antlr4.Parser {

    static grammarFileName = "Cobol85.g4";
    static literalNames = [ null, null, null, null, null, null, null, null, 
                            null, null, "'88'", null, null, null, null, 
                            null, "'.'", "':'" ];
    static symbolicNames = [ null, "COPY", "REDEFINES", "PIC", "PICTURE", 
                             "VALUE", "VALUES", "IS", "THRU", "THROUGH", 
                             "LEVEL_88", "LEVEL_NUMBER", "PICTURE_STRING", 
                             "STRING_LITERAL", "NUMERIC_LITERAL", "IDENTIFIER", 
                             "DOT", "COLON", "WS", "COMMENT" ];
    static ruleNames = [ "compilationUnit", "dataDescriptionEntry", "conditionNameEntry", 
                         "copyStatement", "levelNumber", "dataName", "conditionName", 
                         "copybook", "qualifiedName", "redefinesClause", 
                         "pictureClause", "valueClause", "valueSpec", "pictureString", 
                         "literal" ];

    constructor(input) {
        super(input);
        this._interp = new antlr4.atn.ParserATNSimulator(this, atn, decisionsToDFA, sharedContextCache);
        this.ruleNames = Cobol85Parser.ruleNames;
        this.literalNames = Cobol85Parser.literalNames;
        this.symbolicNames = Cobol85Parser.symbolicNames;
    }



	compilationUnit() {
	    let localctx = new CompilationUnitContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 0, Cobol85Parser.RULE_compilationUnit);
	    var _la = 0;
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 33;
	        this._errHandler.sync(this);
	        _la = this._input.LA(1);
	        while((((_la) & ~0x1f) === 0 && ((1 << _la) & 3074) !== 0)) {
	            this.state = 30;
	            this.dataDescriptionEntry();
	            this.state = 35;
	            this._errHandler.sync(this);
	            _la = this._input.LA(1);
	        }
	        this.state = 36;
	        this.match(Cobol85Parser.EOF);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	dataDescriptionEntry() {
	    let localctx = new DataDescriptionEntryContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 2, Cobol85Parser.RULE_dataDescriptionEntry);
	    var _la = 0;
	    try {
	        this.state = 53;
	        this._errHandler.sync(this);
	        switch(this._input.LA(1)) {
	        case 11:
	            this.enterOuterAlt(localctx, 1);
	            this.state = 38;
	            this.levelNumber();
	            this.state = 39;
	            this.dataName();
	            this.state = 41;
	            this._errHandler.sync(this);
	            _la = this._input.LA(1);
	            if(_la===2) {
	                this.state = 40;
	                this.redefinesClause();
	            }

	            this.state = 44;
	            this._errHandler.sync(this);
	            _la = this._input.LA(1);
	            if(_la===3 || _la===4) {
	                this.state = 43;
	                this.pictureClause();
	            }

	            this.state = 47;
	            this._errHandler.sync(this);
	            _la = this._input.LA(1);
	            if(_la===5 || _la===6) {
	                this.state = 46;
	                this.valueClause();
	            }

	            this.state = 49;
	            this.match(Cobol85Parser.DOT);
	            break;
	        case 10:
	            this.enterOuterAlt(localctx, 2);
	            this.state = 51;
	            this.conditionNameEntry();
	            break;
	        case 1:
	            this.enterOuterAlt(localctx, 3);
	            this.state = 52;
	            this.copyStatement();
	            break;
	        default:
	            throw new antlr4.error.NoViableAltException(this);
	        }
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	conditionNameEntry() {
	    let localctx = new ConditionNameEntryContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 4, Cobol85Parser.RULE_conditionNameEntry);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 55;
	        this.match(Cobol85Parser.LEVEL_88);
	        this.state = 56;
	        this.conditionName();
	        this.state = 57;
	        this.valueClause();
	        this.state = 58;
	        this.match(Cobol85Parser.DOT);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	copyStatement() {
	    let localctx = new CopyStatementContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 6, Cobol85Parser.RULE_copyStatement);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 60;
	        this.match(Cobol85Parser.COPY);
	        this.state = 61;
	        this.copybook();
	        this.state = 62;
	        this.match(Cobol85Parser.DOT);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	levelNumber() {
	    let localctx = new LevelNumberContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 8, Cobol85Parser.RULE_levelNumber);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 64;
	        this.match(Cobol85Parser.LEVEL_NUMBER);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	dataName() {
	    let localctx = new DataNameContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 10, Cobol85Parser.RULE_dataName);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 66;
	        this.qualifiedName();
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	conditionName() {
	    let localctx = new ConditionNameContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 12, Cobol85Parser.RULE_conditionName);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 68;
	        this.qualifiedName();
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	copybook() {
	    let localctx = new CopybookContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 14, Cobol85Parser.RULE_copybook);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 70;
	        this.qualifiedName();
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	qualifiedName() {
	    let localctx = new QualifiedNameContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 16, Cobol85Parser.RULE_qualifiedName);
	    var _la = 0;
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 75;
	        this._errHandler.sync(this);
	        _la = this._input.LA(1);
	        if(_la===17) {
	            this.state = 72;
	            this.match(Cobol85Parser.COLON);
	            this.state = 73;
	            this.match(Cobol85Parser.IDENTIFIER);
	            this.state = 74;
	            this.match(Cobol85Parser.COLON);
	        }

	        this.state = 77;
	        this.match(Cobol85Parser.IDENTIFIER);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	redefinesClause() {
	    let localctx = new RedefinesClauseContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 18, Cobol85Parser.RULE_redefinesClause);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 79;
	        this.match(Cobol85Parser.REDEFINES);
	        this.state = 80;
	        this.qualifiedName();
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	pictureClause() {
	    let localctx = new PictureClauseContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 20, Cobol85Parser.RULE_pictureClause);
	    var _la = 0;
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 82;
	        _la = this._input.LA(1);
	        if(!(_la===3 || _la===4)) {
	        this._errHandler.recoverInline(this);
	        }
	        else {
	        	this._errHandler.reportMatch(this);
	            this.consume();
	        }
	        this.state = 84;
	        this._errHandler.sync(this);
	        _la = this._input.LA(1);
	        if(_la===7) {
	            this.state = 83;
	            this.match(Cobol85Parser.IS);
	        }

	        this.state = 86;
	        this.pictureString();
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	valueClause() {
	    let localctx = new ValueClauseContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 22, Cobol85Parser.RULE_valueClause);
	    var _la = 0;
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 88;
	        _la = this._input.LA(1);
	        if(!(_la===5 || _la===6)) {
	        this._errHandler.recoverInline(this);
	        }
	        else {
	        	this._errHandler.reportMatch(this);
	            this.consume();
	        }
	        this.state = 90;
	        this._errHandler.sync(this);
	        _la = this._input.LA(1);
	        if(_la===7) {
	            this.state = 89;
	            this.match(Cobol85Parser.IS);
	        }

	        this.state = 92;
	        this.valueSpec();
	        this.state = 96;
	        this._errHandler.sync(this);
	        _la = this._input.LA(1);
	        while((((_la) & ~0x1f) === 0 && ((1 << _la) & 188416) !== 0)) {
	            this.state = 93;
	            this.valueSpec();
	            this.state = 98;
	            this._errHandler.sync(this);
	            _la = this._input.LA(1);
	        }
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	valueSpec() {
	    let localctx = new ValueSpecContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 24, Cobol85Parser.RULE_valueSpec);
	    var _la = 0;
	    try {
	        this.state = 104;
	        this._errHandler.sync(this);
	        var la_ = this._interp.adaptivePredict(this._input,9,this._ctx);
	        switch(la_) {
	        case 1:
	            this.enterOuterAlt(localctx, 1);
	            this.state = 99;
	            this.literal();
	            break;

	        case 2:
	            this.enterOuterAlt(localctx, 2);
	            this.state = 100;
	            this.literal();
	            this.state = 101;
	            _la = this._input.LA(1);
	            if(!(_la===8 || _la===9)) {
	            this._errHandler.recoverInline(this);
	            }
	            else {
	            	this._errHandler.reportMatch(this);
	                this.consume();
	            }
	            this.state = 102;
	            this.literal();
	            break;

	        }
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	pictureString() {
	    let localctx = new PictureStringContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 26, Cobol85Parser.RULE_pictureString);
	    try {
	        this.enterOuterAlt(localctx, 1);
	        this.state = 106;
	        this.match(Cobol85Parser.PICTURE_STRING);
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}



	literal() {
	    let localctx = new LiteralContext(this, this._ctx, this.state);
	    this.enterRule(localctx, 28, Cobol85Parser.RULE_literal);
	    try {
	        this.state = 111;
	        this._errHandler.sync(this);
	        switch(this._input.LA(1)) {
	        case 13:
	            this.enterOuterAlt(localctx, 1);
	            this.state = 108;
	            this.match(Cobol85Parser.STRING_LITERAL);
	            break;
	        case 14:
	            this.enterOuterAlt(localctx, 2);
	            this.state = 109;
	            this.match(Cobol85Parser.NUMERIC_LITERAL);
	            break;
	        case 15:
	        case 17:
	            this.enterOuterAlt(localctx, 3);
	            this.state = 110;
	            this.qualifiedName();
	            break;
	        default:
	            throw new antlr4.error.NoViableAltException(this);
	        }
	    } catch (re) {
	    	if(re instanceof antlr4.error.RecognitionException) {
		        localctx.exception = re;
		        this._errHandler.reportError(this, re);
		        this._errHandler.recover(this, re);
		    } else {
		    	throw re;
		    }
	    } finally {
	        this.exitRule();
	    }
	    return localctx;
	}


}

Cobol85Parser.EOF = antlr4.Token.EOF;
Cobol85Parser.COPY = 1;
Cobol85Parser.REDEFINES = 2;
Cobol85Parser.PIC = 3;
Cobol85Parser.PICTURE = 4;
Cobol85Parser.VALUE = 5;
Cobol85Parser.VALUES = 6;
Cobol85Parser.IS = 7;
Cobol85Parser.THRU = 8;
Cobol85Parser.THROUGH = 9;
Cobol85Parser.LEVEL_88 = 10;
Cobol85Parser.LEVEL_NUMBER = 11;
Cobol85Parser.PICTURE_STRING = 12;
Cobol85Parser.STRING_LITERAL = 13;
Cobol85Parser.NUMERIC_LITERAL = 14;
Cobol85Parser.IDENTIFIER = 15;
Cobol85Parser.DOT = 16;
Cobol85Parser.COLON = 17;
Cobol85Parser.WS = 18;
Cobol85Parser.COMMENT = 19;

Cobol85Parser.RULE_compilationUnit = 0;
Cobol85Parser.RULE_dataDescriptionEntry = 1;
Cobol85Parser.RULE_conditionNameEntry = 2;
Cobol85Parser.RULE_copyStatement = 3;
Cobol85Parser.RULE_levelNumber = 4;
Cobol85Parser.RULE_dataName = 5;
Cobol85Parser.RULE_conditionName = 6;
Cobol85Parser.RULE_copybook = 7;
Cobol85Parser.RULE_qualifiedName = 8;
Cobol85Parser.RULE_redefinesClause = 9;
Cobol85Parser.RULE_pictureClause = 10;
Cobol85Parser.RULE_valueClause = 11;
Cobol85Parser.RULE_valueSpec = 12;
Cobol85Parser.RULE_pictureString = 13;
Cobol85Parser.RULE_literal = 14;

class CompilationUnitContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_compilationUnit;
    }

	EOF() {
	    return this.getToken(Cobol85Parser.EOF, 0);
	};

	dataDescriptionEntry = function(i) {
	    if(i===undefined) {
	        i = null;
	    }
	    if(i===null) {
	        return this.getTypedRuleContexts(DataDescriptionEntryContext);
	    } else {
	        return this.getTypedRuleContext(DataDescriptionEntryContext,i);
	    }
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterCompilationUnit(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitCompilationUnit(this);
		}
	}


}



class DataDescriptionEntryContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_dataDescriptionEntry;
    }

	levelNumber() {
	    return this.getTypedRuleContext(LevelNumberContext,0);
	};

	dataName() {
	    return this.getTypedRuleContext(DataNameContext,0);
	};

	DOT() {
	    return this.getToken(Cobol85Parser.DOT, 0);
	};

	redefinesClause() {
	    return this.getTypedRuleContext(RedefinesClauseContext,0);
	};

	pictureClause() {
	    return this.getTypedRuleContext(PictureClauseContext,0);
	};

	valueClause() {
	    return this.getTypedRuleContext(ValueClauseContext,0);
	};

	conditionNameEntry() {
	    return this.getTypedRuleContext(ConditionNameEntryContext,0);
	};

	copyStatement() {
	    return this.getTypedRuleContext(CopyStatementContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterDataDescriptionEntry(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitDataDescriptionEntry(this);
		}
	}


}



class ConditionNameEntryContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_conditionNameEntry;
    }

	LEVEL_88() {
	    return this.getToken(Cobol85Parser.LEVEL_88, 0);
	};

	conditionName() {
	    return this.getTypedRuleContext(ConditionNameContext,0);
	};

	valueClause() {
	    return this.getTypedRuleContext(ValueClauseContext,0);
	};

	DOT() {
	    return this.getToken(Cobol85Parser.DOT, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterConditionNameEntry(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitConditionNameEntry(this);
		}
	}


}



class CopyStatementContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_copyStatement;
    }

	COPY() {
	    return this.getToken(Cobol85Parser.COPY, 0);
	};

	copybook() {
	    return this.getTypedRuleContext(CopybookContext,0);
	};

	DOT() {
	    return this.getToken(Cobol85Parser.DOT, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterCopyStatement(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitCopyStatement(this);
		}
	}


}



class LevelNumberContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_levelNumber;
    }

	LEVEL_NUMBER() {
	    return this.getToken(Cobol85Parser.LEVEL_NUMBER, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterLevelNumber(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitLevelNumber(this);
		}
	}


}



class DataNameContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_dataName;
    }

	qualifiedName() {
	    return this.getTypedRuleContext(QualifiedNameContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterDataName(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitDataName(this);
		}
	}


}



class ConditionNameContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_conditionName;
    }

	qualifiedName() {
	    return this.getTypedRuleContext(QualifiedNameContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterConditionName(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitConditionName(this);
		}
	}


}



class CopybookContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_copybook;
    }

	qualifiedName() {
	    return this.getTypedRuleContext(QualifiedNameContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterCopybook(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitCopybook(this);
		}
	}


}



class QualifiedNameContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_qualifiedName;
    }

	IDENTIFIER = function(i) {
		if(i===undefined) {
			i = null;
		}
	    if(i===null) {
	        return this.getTokens(Cobol85Parser.IDENTIFIER);
	    } else {
	        return this.getToken(Cobol85Parser.IDENTIFIER, i);
	    }
	};


	COLON = function(i) {
		if(i===undefined) {
			i = null;
		}
	    if(i===null) {
	        return this.getTokens(Cobol85Parser.COLON);
	    } else {
	        return this.getToken(Cobol85Parser.COLON, i);
	    }
	};


	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterQualifiedName(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitQualifiedName(this);
		}
	}


}



class RedefinesClauseContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_redefinesClause;
    }

	REDEFINES() {
	    return this.getToken(Cobol85Parser.REDEFINES, 0);
	};

	qualifiedName() {
	    return this.getTypedRuleContext(QualifiedNameContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterRedefinesClause(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitRedefinesClause(this);
		}
	}


}



class PictureClauseContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_pictureClause;
    }

	pictureString() {
	    return this.getTypedRuleContext(PictureStringContext,0);
	};

	PIC() {
	    return this.getToken(Cobol85Parser.PIC, 0);
	};

	PICTURE() {
	    return this.getToken(Cobol85Parser.PICTURE, 0);
	};

	IS() {
	    return this.getToken(Cobol85Parser.IS, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterPictureClause(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitPictureClause(this);
		}
	}


}



class ValueClauseContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_valueClause;
    }

	valueSpec = function(i) {
	    if(i===undefined) {
	        i = null;
	    }
	    if(i===null) {
	        return this.getTypedRuleContexts(ValueSpecContext);
	    } else {
	        return this.getTypedRuleContext(ValueSpecContext,i);
	    }
	};

	VALUE() {
	    return this.getToken(Cobol85Parser.VALUE, 0);
	};

	VALUES() {
	    return this.getToken(Cobol85Parser.VALUES, 0);
	};

	IS() {
	    return this.getToken(Cobol85Parser.IS, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterValueClause(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitValueClause(this);
		}
	}


}



class ValueSpecContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_valueSpec;
    }

	literal = function(i) {
	    if(i===undefined) {
	        i = null;
	    }
	    if(i===null) {
	        return this.getTypedRuleContexts(LiteralContext);
	    } else {
	        return this.getTypedRuleContext(LiteralContext,i);
	    }
	};

	THRU() {
	    return this.getToken(Cobol85Parser.THRU, 0);
	};

	THROUGH() {
	    return this.getToken(Cobol85Parser.THROUGH, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterValueSpec(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitValueSpec(this);
		}
	}


}



class PictureStringContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_pictureString;
    }

	PICTURE_STRING() {
	    return this.getToken(Cobol85Parser.PICTURE_STRING, 0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterPictureString(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitPictureString(this);
		}
	}


}



class LiteralContext extends antlr4.ParserRuleContext {

    constructor(parser, parent, invokingState) {
        if(parent===undefined) {
            parent = null;
        }
        if(invokingState===undefined || invokingState===null) {
            invokingState = -1;
        }
        super(parent, invokingState);
        this.parser = parser;
        this.ruleIndex = Cobol85Parser.RULE_literal;
    }

	STRING_LITERAL() {
	    return this.getToken(Cobol85Parser.STRING_LITERAL, 0);
	};

	NUMERIC_LITERAL() {
	    return this.getToken(Cobol85Parser.NUMERIC_LITERAL, 0);
	};

	qualifiedName() {
	    return this.getTypedRuleContext(QualifiedNameContext,0);
	};

	enterRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.enterLiteral(this);
		}
	}

	exitRule(listener) {
	    if(listener instanceof Cobol85Listener ) {
	        listener.exitLiteral(this);
		}
	}


}




Cobol85Parser.CompilationUnitContext = CompilationUnitContext; 
Cobol85Parser.DataDescriptionEntryContext = DataDescriptionEntryContext; 
Cobol85Parser.ConditionNameEntryContext = ConditionNameEntryContext; 
Cobol85Parser.CopyStatementContext = CopyStatementContext; 
Cobol85Parser.LevelNumberContext = LevelNumberContext; 
Cobol85Parser.DataNameContext = DataNameContext; 
Cobol85Parser.ConditionNameContext = ConditionNameContext; 
Cobol85Parser.CopybookContext = CopybookContext; 
Cobol85Parser.QualifiedNameContext = QualifiedNameContext; 
Cobol85Parser.RedefinesClauseContext = RedefinesClauseContext; 
Cobol85Parser.PictureClauseContext = PictureClauseContext; 
Cobol85Parser.ValueClauseContext = ValueClauseContext; 
Cobol85Parser.ValueSpecContext = ValueSpecContext; 
Cobol85Parser.PictureStringContext = PictureStringContext; 
Cobol85Parser.LiteralContext = LiteralContext; 
