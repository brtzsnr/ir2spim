package ro.pub.cpl.sq2.hello1;

import java.io.PrintStream;

public class Function {
	String name;
	StatementBlock statements;

	public void check() 
	{
		// TODO Check here if your variables and statements are correct
	}

	public void run() 
	{
		statements.run();
	}

	public void generate(PrintStream printStream) {
		// TODO Add code to declare and set up parameters
		printStream.println("\tdefine void @" + name + "() {\n");
		// TODO Add code to generate the function body
		// TODO Add code to handle the return value
		printStream.println("\t\tret void\n\t}");
	}
}
