// $ANTLR 3.0.1 C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g 2008-11-23 17:13:04

package ro.pub.cpl.irparser;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

public class IRParser extends Parser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "NUMBER", "IDENTIFIER", "SEMI", "COLON", "ASSIGN", "OP_AND", "OP_PLUS", "OP_MINUS", "OP_STAR", "EQ", "NE", "GT", "GE", "LT", "LE", "ARG", "RETURN", "IF", "GOTO", "LETTER", "DIGIT", "NEWLINE", "WS"
    };
    public static final int GE=16;
    public static final int LT=17;
    public static final int OP_AND=9;
    public static final int OP_PLUS=10;
    public static final int LETTER=23;
    public static final int OP_STAR=12;
    public static final int NUMBER=4;
    public static final int EOF=-1;
    public static final int SEMI=6;
    public static final int IF=21;
    public static final int COLON=7;
    public static final int WS=26;
    public static final int OP_MINUS=11;
    public static final int NEWLINE=25;
    public static final int ARG=19;
    public static final int IDENTIFIER=5;
    public static final int RETURN=20;
    public static final int ASSIGN=8;
    public static final int GT=15;
    public static final int DIGIT=24;
    public static final int GOTO=22;
    public static final int EQ=13;
    public static final int LE=18;
    public static final int NE=14;

        public IRParser(TokenStream input) {
            super(input);
        }
        

    public String[] getTokenNames() { return tokenNames; }
    public String getGrammarFileName() { return "C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g"; }



    // $ANTLR start irfunction
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:25:1: irfunction : ( ARG vars SEMI )? statements ;
    public final void irfunction() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:26:2: ( ( ARG vars SEMI )? statements )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:26:4: ( ARG vars SEMI )? statements
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:26:4: ( ARG vars SEMI )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==ARG) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:26:5: ARG vars SEMI
                    {
                    match(input,ARG,FOLLOW_ARG_in_irfunction111); 
                    pushFollow(FOLLOW_vars_in_irfunction113);
                    vars();
                    _fsp--;

                    match(input,SEMI,FOLLOW_SEMI_in_irfunction115); 

                    }
                    break;

            }

            pushFollow(FOLLOW_statements_in_irfunction119);
            statements();
            _fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end irfunction


    // $ANTLR start statements
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:28:1: statements : ( ( label )? statement SEMI )+ ;
    public final void statements() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:2: ( ( ( label )? statement SEMI )+ )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:4: ( ( label )? statement SEMI )+
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:4: ( ( label )? statement SEMI )+
            int cnt3=0;
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( (LA3_0==IDENTIFIER||LA3_0==OP_STAR||(LA3_0>=RETURN && LA3_0<=GOTO)) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:5: ( label )? statement SEMI
            	    {
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:5: ( label )?
            	    int alt2=2;
            	    int LA2_0 = input.LA(1);

            	    if ( (LA2_0==IDENTIFIER) ) {
            	        int LA2_1 = input.LA(2);

            	        if ( (LA2_1==COLON) ) {
            	            alt2=1;
            	        }
            	    }
            	    switch (alt2) {
            	        case 1 :
            	            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:29:5: label
            	            {
            	            pushFollow(FOLLOW_label_in_statements133);
            	            label();
            	            _fsp--;


            	            }
            	            break;

            	    }

            	    pushFollow(FOLLOW_statement_in_statements136);
            	    statement();
            	    _fsp--;

            	    match(input,SEMI,FOLLOW_SEMI_in_statements138); 

            	    }
            	    break;

            	default :
            	    if ( cnt3 >= 1 ) break loop3;
                        EarlyExitException eee =
                            new EarlyExitException(3, input);
                        throw eee;
                }
                cnt3++;
            } while (true);


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end statements


    // $ANTLR start label
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:32:1: label : IDENTIFIER COLON ;
    public final void label() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:33:2: ( IDENTIFIER COLON )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:33:4: IDENTIFIER COLON
            {
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_label153); 
            match(input,COLON,FOLLOW_COLON_in_label155); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end label


    // $ANTLR start statement
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );
    public final void statement() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:37:2: ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER )
            int alt5=10;
            switch ( input.LA(1) ) {
            case RETURN:
                {
                alt5=1;
                }
                break;
            case IDENTIFIER:
                {
                int LA5_2 = input.LA(2);

                if ( (LA5_2==ASSIGN) ) {
                    switch ( input.LA(3) ) {
                    case IDENTIFIER:
                        {
                        int LA5_8 = input.LA(4);

                        if ( ((LA5_8>=OP_PLUS && LA5_8<=OP_STAR)) ) {
                            int LA5_12 = input.LA(5);

                            if ( (LA5_12==IDENTIFIER) ) {
                                alt5=4;
                            }
                            else if ( (LA5_12==NUMBER||LA5_12==OP_AND) ) {
                                alt5=5;
                            }
                            else {
                                NoViableAltException nvae =
                                    new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 12, input);

                                throw nvae;
                            }
                        }
                        else if ( (LA5_8==SEMI) ) {
                            alt5=2;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 8, input);

                            throw nvae;
                        }
                        }
                        break;
                    case OP_STAR:
                        {
                        alt5=6;
                        }
                        break;
                    case NUMBER:
                    case OP_AND:
                        {
                        alt5=3;
                        }
                        break;
                    default:
                        NoViableAltException nvae =
                            new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 6, input);

                        throw nvae;
                    }

                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 2, input);

                    throw nvae;
                }
                }
                break;
            case OP_STAR:
                {
                alt5=7;
                }
                break;
            case GOTO:
                {
                alt5=8;
                }
                break;
            case IF:
                {
                int LA5_5 = input.LA(2);

                if ( (LA5_5==IDENTIFIER) ) {
                    int LA5_7 = input.LA(3);

                    if ( ((LA5_7>=EQ && LA5_7<=LE)) ) {
                        int LA5_11 = input.LA(4);

                        if ( (LA5_11==NUMBER||LA5_11==OP_AND) ) {
                            alt5=10;
                        }
                        else if ( (LA5_11==IDENTIFIER) ) {
                            alt5=9;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 11, input);

                            throw nvae;
                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 7, input);

                        throw nvae;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 5, input);

                    throw nvae;
                }
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("36:1: statement : ( RETURN ( vars )? | IDENTIFIER ASSIGN IDENTIFIER | IDENTIFIER ASSIGN constant | IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER | IDENTIFIER ASSIGN IDENTIFIER op constant | IDENTIFIER ASSIGN OP_STAR IDENTIFIER | OP_STAR IDENTIFIER ASSIGN IDENTIFIER | GOTO IDENTIFIER | IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER | IF IDENTIFIER relop constant GOTO IDENTIFIER );", 5, 0, input);

                throw nvae;
            }

            switch (alt5) {
                case 1 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:37:4: RETURN ( vars )?
                    {
                    match(input,RETURN,FOLLOW_RETURN_in_statement168); 
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:37:11: ( vars )?
                    int alt4=2;
                    int LA4_0 = input.LA(1);

                    if ( (LA4_0==IDENTIFIER) ) {
                        alt4=1;
                    }
                    switch (alt4) {
                        case 1 :
                            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:37:11: vars
                            {
                            pushFollow(FOLLOW_vars_in_statement170);
                            vars();
                            _fsp--;


                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:38:4: IDENTIFIER ASSIGN IDENTIFIER
                    {
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement179); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement181); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement183); 

                    }
                    break;
                case 3 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:39:4: IDENTIFIER ASSIGN constant
                    {
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement190); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement192); 
                    pushFollow(FOLLOW_constant_in_statement194);
                    constant();
                    _fsp--;


                    }
                    break;
                case 4 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:40:4: IDENTIFIER ASSIGN IDENTIFIER op IDENTIFIER
                    {
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement203); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement205); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement207); 
                    pushFollow(FOLLOW_op_in_statement209);
                    op();
                    _fsp--;

                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement211); 

                    }
                    break;
                case 5 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:41:4: IDENTIFIER ASSIGN IDENTIFIER op constant
                    {
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement218); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement220); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement222); 
                    pushFollow(FOLLOW_op_in_statement224);
                    op();
                    _fsp--;

                    pushFollow(FOLLOW_constant_in_statement226);
                    constant();
                    _fsp--;


                    }
                    break;
                case 6 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:42:4: IDENTIFIER ASSIGN OP_STAR IDENTIFIER
                    {
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement233); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement235); 
                    match(input,OP_STAR,FOLLOW_OP_STAR_in_statement237); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement239); 

                    }
                    break;
                case 7 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:43:4: OP_STAR IDENTIFIER ASSIGN IDENTIFIER
                    {
                    match(input,OP_STAR,FOLLOW_OP_STAR_in_statement246); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement248); 
                    match(input,ASSIGN,FOLLOW_ASSIGN_in_statement250); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement252); 

                    }
                    break;
                case 8 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:44:4: GOTO IDENTIFIER
                    {
                    match(input,GOTO,FOLLOW_GOTO_in_statement259); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement261); 

                    }
                    break;
                case 9 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:45:4: IF IDENTIFIER relop IDENTIFIER GOTO IDENTIFIER
                    {
                    match(input,IF,FOLLOW_IF_in_statement268); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement270); 
                    pushFollow(FOLLOW_relop_in_statement272);
                    relop();
                    _fsp--;

                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement274); 
                    match(input,GOTO,FOLLOW_GOTO_in_statement276); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement278); 

                    }
                    break;
                case 10 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:46:4: IF IDENTIFIER relop constant GOTO IDENTIFIER
                    {
                    match(input,IF,FOLLOW_IF_in_statement285); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement287); 
                    pushFollow(FOLLOW_relop_in_statement289);
                    relop();
                    _fsp--;

                    pushFollow(FOLLOW_constant_in_statement291);
                    constant();
                    _fsp--;

                    match(input,GOTO,FOLLOW_GOTO_in_statement293); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_statement295); 

                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end statement


    // $ANTLR start vars
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:49:1: vars : ( IDENTIFIER )+ ;
    public final void vars() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:50:2: ( ( IDENTIFIER )+ )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:50:4: ( IDENTIFIER )+
            {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:50:4: ( IDENTIFIER )+
            int cnt6=0;
            loop6:
            do {
                int alt6=2;
                int LA6_0 = input.LA(1);

                if ( (LA6_0==IDENTIFIER) ) {
                    alt6=1;
                }


                switch (alt6) {
            	case 1 :
            	    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:50:5: IDENTIFIER
            	    {
            	    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_vars308); 

            	    }
            	    break;

            	default :
            	    if ( cnt6 >= 1 ) break loop6;
                        EarlyExitException eee =
                            new EarlyExitException(6, input);
                        throw eee;
                }
                cnt6++;
            } while (true);


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end vars


    // $ANTLR start constant
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:53:1: constant : ( NUMBER | OP_AND IDENTIFIER );
    public final void constant() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:54:2: ( NUMBER | OP_AND IDENTIFIER )
            int alt7=2;
            int LA7_0 = input.LA(1);

            if ( (LA7_0==NUMBER) ) {
                alt7=1;
            }
            else if ( (LA7_0==OP_AND) ) {
                alt7=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("53:1: constant : ( NUMBER | OP_AND IDENTIFIER );", 7, 0, input);

                throw nvae;
            }
            switch (alt7) {
                case 1 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:54:4: NUMBER
                    {
                    match(input,NUMBER,FOLLOW_NUMBER_in_constant321); 

                    }
                    break;
                case 2 :
                    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:55:4: OP_AND IDENTIFIER
                    {
                    match(input,OP_AND,FOLLOW_OP_AND_in_constant326); 
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_constant328); 

                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end constant


    // $ANTLR start op
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:58:1: op : ( OP_MINUS | OP_PLUS | OP_STAR );
    public final void op() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:59:2: ( OP_MINUS | OP_PLUS | OP_STAR )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:
            {
            if ( (input.LA(1)>=OP_PLUS && input.LA(1)<=OP_STAR) ) {
                input.consume();
                errorRecovery=false;
            }
            else {
                MismatchedSetException mse =
                    new MismatchedSetException(null,input);
                recoverFromMismatchedSet(input,mse,FOLLOW_set_in_op0);    throw mse;
            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end op


    // $ANTLR start relop
    // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:61:1: relop : ( EQ | NE | GT | GE | LT | LE );
    public final void relop() throws RecognitionException {
        try {
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:61:7: ( EQ | NE | GT | GE | LT | LE )
            // C:\\Documents and Settings\\Bogdan\\My Documents\\eclipse_workspace\\IRParser\\src\\ro\\pub\\cpl\\irparser\\IR.g:
            {
            if ( (input.LA(1)>=EQ && input.LA(1)<=LE) ) {
                input.consume();
                errorRecovery=false;
            }
            else {
                MismatchedSetException mse =
                    new MismatchedSetException(null,input);
                recoverFromMismatchedSet(input,mse,FOLLOW_set_in_relop0);    throw mse;
            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end relop


 

    public static final BitSet FOLLOW_ARG_in_irfunction111 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_vars_in_irfunction113 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_SEMI_in_irfunction115 = new BitSet(new long[]{0x0000000000701020L});
    public static final BitSet FOLLOW_statements_in_irfunction119 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_label_in_statements133 = new BitSet(new long[]{0x0000000000701020L});
    public static final BitSet FOLLOW_statement_in_statements136 = new BitSet(new long[]{0x0000000000000040L});
    public static final BitSet FOLLOW_SEMI_in_statements138 = new BitSet(new long[]{0x0000000000701022L});
    public static final BitSet FOLLOW_IDENTIFIER_in_label153 = new BitSet(new long[]{0x0000000000000080L});
    public static final BitSet FOLLOW_COLON_in_label155 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RETURN_in_statement168 = new BitSet(new long[]{0x0000000000000022L});
    public static final BitSet FOLLOW_vars_in_statement170 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement179 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement181 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement183 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement190 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement192 = new BitSet(new long[]{0x0000000000000210L});
    public static final BitSet FOLLOW_constant_in_statement194 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement203 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement205 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement207 = new BitSet(new long[]{0x0000000000001C00L});
    public static final BitSet FOLLOW_op_in_statement209 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement211 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement218 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement220 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement222 = new BitSet(new long[]{0x0000000000001C00L});
    public static final BitSet FOLLOW_op_in_statement224 = new BitSet(new long[]{0x0000000000000210L});
    public static final BitSet FOLLOW_constant_in_statement226 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement233 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement235 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_OP_STAR_in_statement237 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement239 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_OP_STAR_in_statement246 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement248 = new BitSet(new long[]{0x0000000000000100L});
    public static final BitSet FOLLOW_ASSIGN_in_statement250 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement252 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_GOTO_in_statement259 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement261 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IF_in_statement268 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement270 = new BitSet(new long[]{0x000000000007E000L});
    public static final BitSet FOLLOW_relop_in_statement272 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement274 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_GOTO_in_statement276 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement278 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IF_in_statement285 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement287 = new BitSet(new long[]{0x000000000007E000L});
    public static final BitSet FOLLOW_relop_in_statement289 = new BitSet(new long[]{0x0000000000000210L});
    public static final BitSet FOLLOW_constant_in_statement291 = new BitSet(new long[]{0x0000000000400000L});
    public static final BitSet FOLLOW_GOTO_in_statement293 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_statement295 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_vars308 = new BitSet(new long[]{0x0000000000000022L});
    public static final BitSet FOLLOW_NUMBER_in_constant321 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_OP_AND_in_constant326 = new BitSet(new long[]{0x0000000000000020L});
    public static final BitSet FOLLOW_IDENTIFIER_in_constant328 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_op0 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_relop0 = new BitSet(new long[]{0x0000000000000002L});

}