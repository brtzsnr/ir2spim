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

			if (args[1].equals("list")) {
				for (Method m: p.getMethods())
					System.out.println(m.getName());
			} else {
				for (Method m: p.getMethods())
					if (m.getName().equals(args[1])) {
						Cfg cfg = new Cfg(m);
						cfg.build();
						cfg.exportToDot(System.out);
						return;
					}
				System.out.println("No such method: " + args[1]);
			}
			return;
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		} catch (RecognitionException e) {	
			System.out.println("Recognition Error: " + e.getMessage());
		}
	}
}
