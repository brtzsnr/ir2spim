// $ANTLR 3.0.1 C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g 2008-11-23 17:13:04

package ro.pub.cpl.irparser;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

public class IRLexer extends Lexer {
    public static final int GE=16;
    public static final int LT=17;
    public static final int OP_PLUS=10;
    public static final int OP_AND=9;
    public static final int LETTER=23;
    public static final int OP_STAR=12;
    public static final int NUMBER=4;
    public static final int Tokens=27;
    public static final int EOF=-1;
    public static final int SEMI=6;
    public static final int IF=21;
    public static final int COLON=7;
    public static final int WS=26;
    public static final int OP_MINUS=11;
    public static final int NEWLINE=25;
    public static final int ARG=19;
    public static final int IDENTIFIER=5;
    public static final int ASSIGN=8;
    public static final int RETURN=20;
    public static final int GT=15;
    public static final int DIGIT=24;
    public static final int EQ=13;
    public static final int GOTO=22;
    public static final int LE=18;
    public static final int NE=14;
    public IRLexer() {;} 
    public IRLexer(CharStream input) {
        super(input);
    }
    public String getGrammarFileName() { return "C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g"; }

    // $ANTLR start EQ
    public final void mEQ() throws RecognitionException {
        try {
            int _type = EQ;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:65:10: ( '==' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:65:12: '=='
            {
            match("=="); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end EQ

    // $ANTLR start NE
    public final void mNE() throws RecognitionException {
        try {
            int _type = NE;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:66:10: ( '!=' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:66:12: '!='
            {
            match("!="); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end NE

    // $ANTLR start LE
    public final void mLE() throws RecognitionException {
        try {
            int _type = LE;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:67:10: ( '<=' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:67:12: '<='
            {
            match("<="); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end LE

    // $ANTLR start LT
    public final void mLT() throws RecognitionException {
        try {
            int _type = LT;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:68:10: ( '<' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:68:12: '<'
            {
            match('<'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end LT

    // $ANTLR start GE
    public final void mGE() throws RecognitionException {
        try {
            int _type = GE;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:69:10: ( '>=' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:69:12: '>='
            {
            match(">="); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end GE

    // $ANTLR start GT
    public final void mGT() throws RecognitionException {
        try {
            int _type = GT;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:70:10: ( '>' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:70:12: '>'
            {
            match('>'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end GT

    // $ANTLR start OP_PLUS
    public final void mOP_PLUS() throws RecognitionException {
        try {
            int _type = OP_PLUS;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:71:10: ( '+' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:71:12: '+'
            {
            match('+'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end OP_PLUS

    // $ANTLR start OP_MINUS
    public final void mOP_MINUS() throws RecognitionException {
        try {
            int _type = OP_MINUS;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:72:10: ( '-' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:72:12: '-'
            {
            match('-'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end OP_MINUS

    // $ANTLR start OP_STAR
    public final void mOP_STAR() throws RecognitionException {
        try {
            int _type = OP_STAR;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:73:10: ( '*' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:73:12: '*'
            {
            match('*'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end OP_STAR

    // $ANTLR start OP_AND
    public final void mOP_AND() throws RecognitionException {
        try {
            int _type = OP_AND;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:74:10: ( '&' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:74:12: '&'
            {
            match('&'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end OP_AND

    // $ANTLR start SEMI
    public final void mSEMI() throws RecognitionException {
        try {
            int _type = SEMI;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:75:10: ( ';' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:75:12: ';'
            {
            match(';'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end SEMI

    // $ANTLR start COLON
    public final void mCOLON() throws RecognitionException {
        try {
            int _type = COLON;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:76:8: ( ':' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:76:10: ':'
            {
            match(':'); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end COLON

    // $ANTLR start ASSIGN
    public final void mASSIGN() throws RecognitionException {
        try {
            int _type = ASSIGN;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:77:9: ( '=' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:77:11: '='
            {
            match('='); 

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end ASSIGN

    // $ANTLR start IF
    public final void mIF() throws RecognitionException {
        try {
            int _type = IF;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:78:10: ( 'if' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:78:12: 'if'
            {
            match("if"); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end IF

    // $ANTLR start GOTO
    public final void mGOTO() throws RecognitionException {
        try {
            int _type = GOTO;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:79:10: ( 'goto' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:79:12: 'goto'
            {
            match("goto"); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end GOTO

    // $ANTLR start ARG
    public final void mARG() throws RecognitionException {
        try {
            int _type = ARG;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:80:10: ( 'arg' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:80:12: 'arg'
            {
            match("arg"); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end ARG

    // $ANTLR start RETURN
    public final void mRETURN() throws RecognitionException {
        try {
            int _type = RETURN;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:81:10: ( 'return' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:81:12: 'return'
            {
            match("return"); 


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end RETURN

    // $ANTLR start LETTER
    public final void mLETTER() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:84:8: ( ( 'a' .. 'z' | 'A' .. 'Z' ) )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:84:10: ( 'a' .. 'z' | 'A' .. 'Z' )
            {
            if ( (input.LA(1)>='A' && input.LA(1)<='Z')||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse =
                    new MismatchedSetException(null,input);
                recover(mse);    throw mse;
            }


            }

        }
        finally {
        }
    }
    // $ANTLR end LETTER

    // $ANTLR start DIGIT
    public final void mDIGIT() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:87:7: ( ( '0' .. '9' ) )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:87:9: ( '0' .. '9' )
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:87:9: ( '0' .. '9' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:87:10: '0' .. '9'
            {
            matchRange('0','9'); 

            }


            }

        }
        finally {
        }
    }
    // $ANTLR end DIGIT

    // $ANTLR start IDENTIFIER
    public final void mIDENTIFIER() throws RecognitionException {
        try {
            int _type = IDENTIFIER;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:8: ( ( LETTER ) ( LETTER | DIGIT | '_' )* )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:10: ( LETTER ) ( LETTER | DIGIT | '_' )*
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:10: ( LETTER )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:11: LETTER
            {
            mLETTER(); 

            }

            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:19: ( LETTER | DIGIT | '_' )*
            loop1:
            do {
                int alt1=4;
                switch ( input.LA(1) ) {
                case 'A':
                case 'B':
                case 'C':
                case 'D':
                case 'E':
                case 'F':
                case 'G':
                case 'H':
                case 'I':
                case 'J':
                case 'K':
                case 'L':
                case 'M':
                case 'N':
                case 'O':
                case 'P':
                case 'Q':
                case 'R':
                case 'S':
                case 'T':
                case 'U':
                case 'V':
                case 'W':
                case 'X':
                case 'Y':
                case 'Z':
                case 'a':
                case 'b':
                case 'c':
                case 'd':
                case 'e':
                case 'f':
                case 'g':
                case 'h':
                case 'i':
                case 'j':
                case 'k':
                case 'l':
                case 'm':
                case 'n':
                case 'o':
                case 'p':
                case 'q':
                case 'r':
                case 's':
                case 't':
                case 'u':
                case 'v':
                case 'w':
                case 'x':
                case 'y':
                case 'z':
                    {
                    alt1=1;
                    }
                    break;
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    {
                    alt1=2;
                    }
                    break;
                case '_':
                    {
                    alt1=3;
                    }
                    break;

                }

                switch (alt1) {
            	case 1 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:20: LETTER
            	    {
            	    mLETTER(); 

            	    }
            	    break;
            	case 2 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:27: DIGIT
            	    {
            	    mDIGIT(); 

            	    }
            	    break;
            	case 3 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:90:33: '_'
            	    {
            	    match('_'); 

            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end IDENTIFIER

    // $ANTLR start NUMBER
    public final void mNUMBER() throws RecognitionException {
        try {
            int _type = NUMBER;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:93:8: ( ( DIGIT )+ )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:94:2: ( DIGIT )+
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:94:2: ( DIGIT )+
            int cnt2=0;
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( ((LA2_0>='0' && LA2_0<='9')) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:94:3: DIGIT
            	    {
            	    mDIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt2 >= 1 ) break loop2;
                        EarlyExitException eee =
                            new EarlyExitException(2, input);
                        throw eee;
                }
                cnt2++;
            } while (true);


            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end NUMBER

    // $ANTLR start NEWLINE
    public final void mNEWLINE() throws RecognitionException {
        try {
            int _type = NEWLINE;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:97:8: ( ( '\\r' )? '\\n' )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:97:9: ( '\\r' )? '\\n'
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:97:9: ( '\\r' )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0=='\r') ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:97:9: '\\r'
                    {
                    match('\r'); 

                    }
                    break;

            }

            match('\n'); 
            skip();

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end NEWLINE

    // $ANTLR start WS
    public final void mWS() throws RecognitionException {
        try {
            int _type = WS;
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:98:5: ( ( ' ' | '\\t' )+ )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:98:9: ( ' ' | '\\t' )+
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:98:9: ( ' ' | '\\t' )+
            int cnt4=0;
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( (LA4_0=='\t'||LA4_0==' ') ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:
            	    {
            	    if ( input.LA(1)=='\t'||input.LA(1)==' ' ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse =
            	            new MismatchedSetException(null,input);
            	        recover(mse);    throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt4 >= 1 ) break loop4;
                        EarlyExitException eee =
                            new EarlyExitException(4, input);
                        throw eee;
                }
                cnt4++;
            } while (true);

            skip();

            }

            this.type = _type;
        }
        finally {
        }
    }
    // $ANTLR end WS

    public void mTokens() throws RecognitionException {
        // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:8: ( EQ | NE | LE | LT | GE | GT | OP_PLUS | OP_MINUS | OP_STAR | OP_AND | SEMI | COLON | ASSIGN | IF | GOTO | ARG | RETURN | IDENTIFIER | NUMBER | NEWLINE | WS )
        int alt5=21;
        switch ( input.LA(1) ) {
        case '=':
            {
            int LA5_1 = input.LA(2);

            if ( (LA5_1=='=') ) {
                alt5=1;
            }
            else {
                alt5=13;}
            }
            break;
        case '!':
            {
            alt5=2;
            }
            break;
        case '<':
            {
            int LA5_3 = input.LA(2);

            if ( (LA5_3=='=') ) {
                alt5=3;
            }
            else {
                alt5=4;}
            }
            break;
        case '>':
            {
            int LA5_4 = input.LA(2);

            if ( (LA5_4=='=') ) {
                alt5=5;
            }
            else {
                alt5=6;}
            }
            break;
        case '+':
            {
            alt5=7;
            }
            break;
        case '-':
            {
            alt5=8;
            }
            break;
        case '*':
            {
            alt5=9;
            }
            break;
        case '&':
            {
            alt5=10;
            }
            break;
        case ';':
            {
            alt5=11;
            }
            break;
        case ':':
            {
            alt5=12;
            }
            break;
        case 'i':
            {
            int LA5_11 = input.LA(2);

            if ( (LA5_11=='f') ) {
                int LA5_25 = input.LA(3);

                if ( ((LA5_25>='0' && LA5_25<='9')||(LA5_25>='A' && LA5_25<='Z')||LA5_25=='_'||(LA5_25>='a' && LA5_25<='z')) ) {
                    alt5=18;
                }
                else {
                    alt5=14;}
            }
            else {
                alt5=18;}
            }
            break;
        case 'g':
            {
            int LA5_12 = input.LA(2);

            if ( (LA5_12=='o') ) {
                int LA5_26 = input.LA(3);

                if ( (LA5_26=='t') ) {
                    int LA5_30 = input.LA(4);

                    if ( (LA5_30=='o') ) {
                        int LA5_33 = input.LA(5);

                        if ( ((LA5_33>='0' && LA5_33<='9')||(LA5_33>='A' && LA5_33<='Z')||LA5_33=='_'||(LA5_33>='a' && LA5_33<='z')) ) {
                            alt5=18;
                        }
                        else {
                            alt5=15;}
                    }
                    else {
                        alt5=18;}
                }
                else {
                    alt5=18;}
            }
            else {
                alt5=18;}
            }
            break;
        case 'a':
            {
            int LA5_13 = input.LA(2);

            if ( (LA5_13=='r') ) {
                int LA5_27 = input.LA(3);

                if ( (LA5_27=='g') ) {
                    int LA5_31 = input.LA(4);

                    if ( ((LA5_31>='0' && LA5_31<='9')||(LA5_31>='A' && LA5_31<='Z')||LA5_31=='_'||(LA5_31>='a' && LA5_31<='z')) ) {
                        alt5=18;
                    }
                    else {
                        alt5=16;}
                }
                else {
                    alt5=18;}
            }
            else {
                alt5=18;}
            }
            break;
        case 'r':
            {
            int LA5_14 = input.LA(2);

            if ( (LA5_14=='e') ) {
                int LA5_28 = input.LA(3);

                if ( (LA5_28=='t') ) {
                    int LA5_32 = input.LA(4);

                    if ( (LA5_32=='u') ) {
                        int LA5_35 = input.LA(5);

                        if ( (LA5_35=='r') ) {
                            int LA5_37 = input.LA(6);

                            if ( (LA5_37=='n') ) {
                                int LA5_38 = input.LA(7);

                                if ( ((LA5_38>='0' && LA5_38<='9')||(LA5_38>='A' && LA5_38<='Z')||LA5_38=='_'||(LA5_38>='a' && LA5_38<='z')) ) {
                                    alt5=18;
                                }
                                else {
                                    alt5=17;}
                            }
                            else {
                                alt5=18;}
                        }
                        else {
                            alt5=18;}
                    }
                    else {
                        alt5=18;}
                }
                else {
                    alt5=18;}
            }
            else {
                alt5=18;}
            }
            break;
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'S':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
        case 'Z':
        case 'b':
        case 'c':
        case 'd':
        case 'e':
        case 'f':
        case 'h':
        case 'j':
        case 'k':
        case 'l':
        case 'm':
        case 'n':
        case 'o':
        case 'p':
        case 'q':
        case 's':
        case 't':
        case 'u':
        case 'v':
        case 'w':
        case 'x':
        case 'y':
        case 'z':
            {
            alt5=18;
            }
            break;
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
            {
            alt5=19;
            }
            break;
        case '\n':
        case '\r':
            {
            alt5=20;
            }
            break;
        case '\t':
        case ' ':
            {
            alt5=21;
            }
            break;
        default:
            NoViableAltException nvae =
                new NoViableAltException("1:1: Tokens : ( EQ | NE | LE | LT | GE | GT | OP_PLUS | OP_MINUS | OP_STAR | OP_AND | SEMI | COLON | ASSIGN | IF | GOTO | ARG | RETURN | IDENTIFIER | NUMBER | NEWLINE | WS );", 5, 0, input);

            throw nvae;
        }

        switch (alt5) {
            case 1 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:10: EQ
                {
                mEQ(); 

                }
                break;
            case 2 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:13: NE
                {
                mNE(); 

                }
                break;
            case 3 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:16: LE
                {
                mLE(); 

                }
                break;
            case 4 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:19: LT
                {
                mLT(); 

                }
                break;
            case 5 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:22: GE
                {
                mGE(); 

                }
                break;
            case 6 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:25: GT
                {
                mGT(); 

                }
                break;
            case 7 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:28: OP_PLUS
                {
                mOP_PLUS(); 

                }
                break;
            case 8 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:36: OP_MINUS
                {
                mOP_MINUS(); 

                }
                break;
            case 9 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:45: OP_STAR
                {
                mOP_STAR(); 

                }
                break;
            case 10 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:53: OP_AND
                {
                mOP_AND(); 

                }
                break;
            case 11 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:60: SEMI
                {
                mSEMI(); 

                }
                break;
            case 12 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:65: COLON
                {
                mCOLON(); 

                }
                break;
            case 13 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:71: ASSIGN
                {
                mASSIGN(); 

                }
                break;
            case 14 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:78: IF
                {
                mIF(); 

                }
                break;
            case 15 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:81: GOTO
                {
                mGOTO(); 

                }
                break;
            case 16 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:86: ARG
                {
                mARG(); 

                }
                break;
            case 17 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:90: RETURN
                {
                mRETURN(); 

                }
                break;
            case 18 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:97: IDENTIFIER
                {
                mIDENTIFIER(); 

                }
                break;
            case 19 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:108: NUMBER
                {
                mNUMBER(); 

                }
                break;
            case 20 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:115: NEWLINE
                {
                mNEWLINE(); 

                }
                break;
            case 21 :
                // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:1:123: WS
                {
                mWS(); 

                }
                break;

        }

    }


 

}