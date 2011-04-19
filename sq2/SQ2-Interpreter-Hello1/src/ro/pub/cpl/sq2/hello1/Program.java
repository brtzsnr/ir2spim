package ro.pub.cpl.sq2.hello1;

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
}
