package ro.pub.pt.aroma;
import java.io.IOException;
import org.antlr.runtime.ANTLRInputStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
public class Main {
	public static void main(String args[]){
		try {
			ANTLRInputStream input = new ANTLRInputStream(System.in);
			aromaLexer lexer = new aromaLexer(input);
			CommonTokenStream tokens = new CommonTokenStream (lexer);
			aromaParser parser = new aromaParser(tokens);
			Program p=parser.prog();
			p.print();
			} catch (IOException e) {}
			catch (RecognitionException e) {}
	}
}
