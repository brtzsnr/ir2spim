package ro.pub.cpl.ir2spim.ir;
import java.util.*;

public class Program {
	private List<Method> methods;
	private List<DataDirective> dataDirectives;

	public Program(List<Method> methods, List<DataDirective> dataDirectives) {
		this.methods = methods;
		this.dataDirectives = dataDirectives;
	}

	public List<Method> getMethods() {
		return methods;
	}
	public List<DataDirective> getDataDirectives() {
		return dataDirectives;
	}
    
    @Override
	public String toString() {
		String ret = ".code\n\n";
		for (Method method: methods) {
			ret += method.toString() + "\n\n";
		}
		ret += ".data\n";
		for (DataDirective dd: dataDirectives) {
			ret += dd.toString() + "\n";
		}
		return ret;
	}
}
