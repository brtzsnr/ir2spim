package ro.pub.pt.aroma;

public class FloatRegister {
	private boolean virt;
	private int index;
		
	public FloatRegister(int index, boolean virt){
		this.index=index;
		this.virt=virt;
	}
	public int getIndex(){return index;}
	public boolean getVirt(){return virt;}
	public void print(){
		if (virt) System.out.print("v");
		System.out.print("d"+index);
	}
}
