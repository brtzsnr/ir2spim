package ro.pub.pt.aroma;
import java.util.*;
public class Program {
	private LinkedList<Instruction> data;
	private LinkedList<Instruction> code;
	public Program(LinkedList<Instruction>c,LinkedList<Instruction>d){
		code=c;
		data=d;
	}
	public LinkedList<Instruction> getCode(){
		return code;
	}
	public LinkedList<Instruction> getData(){
		return data;
	}
	public void print(){
		System.out.println(".code");
		for (int i=0;i<code.size();i++){
			Instruction inst=code.get(i);
			inst.print();
		}
		System.out.println(".data");
		for (int i=0;i<data.size();i++){
			Instruction inst=data.get(i);
			inst.print();
		}
	}
}
