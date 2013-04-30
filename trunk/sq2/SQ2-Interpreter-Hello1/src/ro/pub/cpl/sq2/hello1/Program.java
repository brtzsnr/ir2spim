package ro.pub.cpl.sq2.hello1;

import java.io.PrintStream;
import java.util.HashMap;

public class Program {
	public final String START_FUNCTION = "start"; 
	
	HashMap<String, Function> functions = new HashMap<String, Function>();
		
	public void run()
	{
		Function start = functions.get(START_FUNCTION);
		if (start != null)
			start.run();
	}

	public void check() throws LanguageException 
	{
		for (Function f : functions.values()) 
			f.check();
		
		if (!functions.containsKey(START_FUNCTION))
			throw new LanguageException("Function 'start' missing");
	}
	
	public void add(Function f) throws LanguageException
	{
		if (functions.containsKey(f.name))
			throw new LanguageException("Function " + f.name + " defined twice");
		
		functions.put(f.name, f);
	}

	final String STARTUP_LLVM_CODE = 
"@.str = private constant [3 x i8] c\"%s\\00\"\n"+
"@.strd = private  constant [3 x i8] c\"%d\\00\"\n"+
"\n"+
"define void @__sq2__print(i8* %text)  {\n"+
"  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* %text)\n"+
"  ret void\n"+
"}\n"+
"\n"+
"define void @__sq2__write(i32 %number)  {\n"+
"  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.strd, i32 0, i32 0), i32 %number)\n"+
"  ret void\n"+
"}\n"+
"define i32 @__sq2__read() {\n"+
"  %value = alloca i32\n"+
"  store i32 0, i32* %value\n"+
"  %1 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.strd, i32 0, i32 0), i32* %value)\n"+
"  %2 = load i32* %value\n"+
"  ret i32 %2\n"+
"}\n"+
"\n"+
"declare i32 @printf(i8*, ...)\n"+
"\n"+
"declare i32 @scanf(i8*, ...)\n"+
"\n"+
"define i32 @main(i32 %argc, i8** %argv)  {\n"+
"  call void @start()\n"+
"  ret i32 0\n"+
"}\n"+
"\n"+
";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n";

	public void generate(PrintStream printStream) {
		printStream.println(STARTUP_LLVM_CODE);
		for (Function f : functions.values())
			f.generate(printStream);
	}
}
