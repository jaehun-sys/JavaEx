package com.oop.except;

public class Div implements Calculate{
	private int a;
	private int b;
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	
	public Div(int a, int b) {
		super();
		this.a = a;
		this.b = b;
	}
	@Override
	public int calculate() {
		// TODO Auto-generated method stub
		return a/b;

	}

}
