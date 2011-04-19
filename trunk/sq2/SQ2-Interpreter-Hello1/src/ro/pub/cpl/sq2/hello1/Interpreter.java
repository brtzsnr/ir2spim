package ro.pub.cpl.sq2.hello1;

import java.io.IOException;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.CommonTreeNodeStream;

public class Interpreter {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		if (args.length == 0) {
			System.out.println("Usage:\njava ro.pub.cpl.sq2.hello1.Interpreter <file.sq2>");
		}
		else try {
			ANTLRFileStream input = new ANTLRFileStream(args[0]);
			Sq2Lexer lexer = new Sq2Lexer(input);
			CommonTokenStream tokens = new CommonTokenStream (lexer);
			Sq2Parser parser = new Sq2Parser(tokens);				
			Program p = parser.program();
			p.check();
			p.run();
		} catch (IOException e) {
			System.out.println("Could not process file : " + e.getMessage());
		} catch (RecognitionException e) {
			System.out.println("File could not be parsed: " + e);
		} catch (RuntimeException e) {
			System.out.println("File could not be parsed: " + e);			
		} catch (LanguageException e) {
			System.out.println(e);
		}
	}
}
