package ro.pub.cpl.ir2spim.ir;

import ro.pub.cpl.ir2spim.*;

public class ReturnInstruction extends Instruction {

	public ReturnInstruction() {
	}

    @Override
	public String toString() {
		return labelsToString() + "return";
	}
}
