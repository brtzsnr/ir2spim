package ro.pub.cpl.coolir;

import java.util.List;

public class Method {
	private String name;
	private List<Instruction> instructions;
	private int inParamCount;
	private int outParamCount;

	public Method(String name, int inParamCount, int outParamCount, List<Instruction> il) {
		this.name = name;
		this.inParamCount = inParamCount;
		this.outParamCount = outParamCount;
		this.instructions = il;
	}

	public String getName() {
		return this.name;
	}
	public List<Instruction> getInstructions() {
		return this.instructions;
	}
	public String toString() {
		String ret = ".function" + "\"" + name + "\"" + "," + inParamCount + "," + outParamCount + "\n";
		for (Instruction instr: this.instructions) {
			ret += instr.toString() + "\n";
		}
		ret += ".end\n";
		return ret;
	}
}
