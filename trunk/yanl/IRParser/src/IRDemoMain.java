import java.io.IOException;

import ro.pub.cpl.irparser.*;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;

public class IRDemoMain {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		if (args.length != 1) {
			System.out.println("Usage: java -jar IRDemo.jar <file.ir>");
		}
		else try {
			ANTLRFileStream input = new ANTLRFileStream(args[0]);
			IRLexer lexer = new IRLexer(input);
			
			CommonTokenStream tokens = new CommonTokenStream (lexer);
			IRParser parser = new IRParser(tokens);
				
			parser.irfunction();
		} catch (IOException e) {
			System.err.println("Could not process IR file : " + e.getMessage());
		} catch (RecognitionException e) {
			System.err.println("IR could not be parsed: " + e);
		} catch (RuntimeException e) {
			System.err.println("IR could not be parsed: " + e);			
		}
	}

}
