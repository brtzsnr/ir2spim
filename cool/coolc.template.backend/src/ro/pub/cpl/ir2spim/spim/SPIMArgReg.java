package ro.pub.cpl.ir2spim.spim;

public class SPIMArgReg implements SPIMReg {
    private int index;

	public SPIMArgReg(int index) {
		this.index = index;
	}

	public int getIndex() {
		return this.index;
	}
	
    @Override
	public String toString() {
		return "$a" + index;
	}
}
