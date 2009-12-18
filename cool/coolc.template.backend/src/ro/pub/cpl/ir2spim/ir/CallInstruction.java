package ro.pub.cpl.ir2spim.ir;

import ro.pub.cpl.ir2spim.*;

public class CallInstruction extends Instruction {
	private String directCallee;
	private Register indirectCallee;

	public CallInstruction(String directCallee) {
		this.directCallee = directCallee;
		this.indirectCallee = null;
	}
	public CallInstruction(Register indirectCallee) {
		this.directCallee = null;
		this.indirectCallee = indirectCallee;
	}

	public boolean isDirect() {
		return this.directCallee != null;
	}
	public String getDirectCallee() {
		if (this.isDirect()) {
			return this.directCallee;
		} else {
			throw new UnsupportedOperationException("indirect calls don't have a direct callee");
		}
	}
	public Register getIndirectCallee() {
		if (this.isDirect() == false) {
			return this.indirectCallee;
		} else {
			throw new UnsupportedOperationException("direct calls don't have a indirect callee");
		}
	}
    
    @Override
	public String toString() {
		if (this.isDirect()) {
			return labelsToString() + " call " + this.directCallee;
		} else {
			return labelsToString() + " call " + this.indirectCallee;			
		}
	}
}
