package ro.pub.cpl.ir2spim;

import java.io.IOException;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;

import ro.pub.cpl.ir2spim.ir.*;

public class Main {    
	public static void main(String args[])
    {
		try {
            ANTLRFileStream input = new ANTLRFileStream(args[0]);
            CoolIrLexer lexer = new CoolIrLexer(input);
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			CoolIrParser parser = new CoolIrParser(tokens);
			
			Program p = parser.program();
            
            System.out.println(p);
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		} catch (RecognitionException e) {	
			System.out.println("Recognition Error: " + e.getMessage());
		}
	}
}
