package ro.pub.cpl.ir2spim.ir;

import ro.pub.cpl.ir2spim.*;
import java.util.List;

public class ReturnInstruction extends Instruction {
	private List<Register> retvals;

	public ReturnInstruction(List<Register> retvals) {
		this.retvals = retvals;
	}

    @Override
	public String toString() {
		if (retvals == null || retvals.size() == 0)
			return labelsToString() + "return";
		StringBuffer str = new StringBuffer(labelsToString() + "return");
		for (Register param: retvals)
			str.append(" " + param);
		return str.toString();
	}
}
