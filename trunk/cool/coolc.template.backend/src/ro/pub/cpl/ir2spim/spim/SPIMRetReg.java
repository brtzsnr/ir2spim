package ro.pub.cpl.ir2spim.spim;

public class SPIMRetReg implements SPIMReg {
	private int index;

	public SPIMRetReg(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "$v" + index;
	}
}
