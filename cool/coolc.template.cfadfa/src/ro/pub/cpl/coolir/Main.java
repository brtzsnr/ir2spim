package ro.pub.cpl.coolir;
import java.io.IOException;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;

public class Main {
	public static void main(String args[]) {
		try {
            ANTLRFileStream input = new ANTLRFileStream(args[0]);
            CoolIrLexer lexer = new CoolIrLexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			CoolIrParser parser = new CoolIrParser(tokens);
			
			Program p = parser.program();
			
			System.out.println(p);
			// TODO: build control flow graph
			// TODO: perform data flow analysis
			// TODO: perform optimization
			
			
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		} catch (RecognitionException e) {	
			System.out.println("Recognition Error: " + e.getMessage());
		}
	}
}
