package ro.pub.cpl.ir2spim.ir;

import java.util.ArrayList;
import java.util.List;

public class Instruction {
	private List<String> labels;
    
	public Instruction() {
		this.labels = new ArrayList<String>();
	}

	public boolean isArithmetical() {
		return this instanceof ArithmeticalInstruction;
	}
	public boolean isCall() {
		return this instanceof CallInstruction;
	}
	public boolean isCopy() {
		return this instanceof CopyInstruction;
	}
	public boolean isJump() {
		return this instanceof JumpInstruction;
	}
	public boolean isLogical() {
		return this instanceof LogicalInstruction;
	}
	public boolean isMemory() {
		return this instanceof MemoryInstruction;
	}
	public boolean isReturn() {
		return this instanceof ReturnInstruction;
	}

	public void setLabels(List<String> labels) {
		this.labels = labels;
	}
	public List<String> getLabels() {
		return this.labels;
	}
	public String labelsToString() {
		String ret = "";
		for (String label: labels) {
			ret += label + ":\n";
		}
		return ret.length() > 0 ? ret.substring(0, ret.length() - 1) : ret;
	}
}
