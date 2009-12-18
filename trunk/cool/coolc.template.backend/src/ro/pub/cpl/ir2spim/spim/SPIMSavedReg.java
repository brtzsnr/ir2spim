package ro.pub.cpl.ir2spim.spim;

public class SPIMSavedReg implements SPIMReg {
	private int index;

	public SPIMSavedReg(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "$s" + index;
	}
}
