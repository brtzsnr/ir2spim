
import java.io.IOException;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.DOTTreeGenerator;
import org.antlr.stringtemplate.StringTemplate;

public class YANLMain {
	
	public static void printTree(CommonTree t, int indent) {
		if ( t != null ) {
			StringBuffer sb = new StringBuffer(indent);
			
			if(indent > 0) {
				for(int i = 0; i<indent - 1; i++)
					sb = sb.append("  ");
				sb = sb.append("|");
				
			}
			for ( int i = 0; i < indent; i++ )
				sb = sb.append("__");
			
			System.out.println(sb.toString() + t.getText());
			for ( int i = 0; i < t.getChildCount(); i++ ) {
				//System.out.println(sb.toString() + t.getChild(i).toString());
				printTree((CommonTree)t.getChild(i), indent+1);
			}
		}
	}
	
	public static void main(String[] args) {
		try {
			ANTLRFileStream input = new ANTLRFileStream(args[0]);
			yanlLexer lexer = new yanlLexer(input);
			
			CommonTokenStream tokens = new CommonTokenStream (lexer);
			yanlParser parser = new yanlParser(tokens);
				
			yanlParser.program_return r = parser.program();
				
			CommonTree t = (CommonTree)r.getTree();
			printTree(t, 0);
			
			//ASTFrame af = new ASTFrame("Tree", t);
			//af.setVisible(true);
			
			System.out.println(t.toStringTree());
			
			/*
			DOTTreeGenerator gen = new DOTTreeGenerator();
			StringTemplate st = gen.toDOT(t);
			System.out.println(st);
			*/
			
		} catch (IOException e) {
			System.out.println("Exception " + e);
		} catch (RecognitionException e) {
			System.out.println("Exception " + e);
		}
	}
}
