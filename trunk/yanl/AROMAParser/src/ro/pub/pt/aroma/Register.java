package ro.pub.pt.aroma;

public class Register {
	private boolean virt;
	private int index;
		
	public Register(int index, boolean virt){
		this.index=index;
		this.virt=virt;
	}
	public int getIndex(){return index;}
	public boolean getVirt(){return virt;}
	public void setVirt(boolean b){virt=b;}
	public void setIndex(int ind){index=ind;}
	public void print(){
		if (virt) System.out.print("v");
		System.out.print("r"+index);
	}
}
