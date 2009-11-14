package ro.pub.pt.yanl.parser.v1;

import java.io.IOException;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.CommonTreeNodeStream;

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
		if (args.length == 0) {
			// To do: write usage
		}
		else try {
			ANTLRFileStream input = new ANTLRFileStream(args[0]);
			YANLLexer lexer = new YANLLexer(input);
			
			CommonTokenStream tokens = new CommonTokenStream (lexer);
			YANLParser parser = new YANLParser(tokens);
				
			YANLParser.program_return r = parser.program();
				
			CommonTree t = (CommonTree)r.getTree();
			if (t == null)
				throw(new YANLException("AST is empty"));
			
			// Do the semantic checks using the tree walker grammar
	        CommonTreeNodeStream nodes = new CommonTreeNodeStream(t);
	        ASTCheck evaluator = new ASTCheck(nodes);
	        Program p = evaluator.program().p;
	        p.resolve(new RuntimeLibrary(p.node));
			
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
			System.out.println("Could not process YANL file : " + e.getMessage());
		} catch (YANLException e) {
			System.out.println(e);
		} catch (RecognitionException e) {
			System.out.println("YANL could not be parsed: " + e);
		} catch (RuntimeException e) {
			System.out.println("YANL could not be parsed: " + e);			
		}
	}
}
