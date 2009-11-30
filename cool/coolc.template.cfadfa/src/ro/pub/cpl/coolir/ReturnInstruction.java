package ro.pub.cpl.coolir;

public class ReturnInstruction extends Instruction {

	public ReturnInstruction() {
	}

	public String toString() {
		return labelsToString() + "return ";
	}
}
