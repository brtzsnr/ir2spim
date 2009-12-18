package ro.pub.cpl.ir2spim.ir;

public class Register extends Operand {
	private int index;

	public Register(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "VR" + index;
	}
}
