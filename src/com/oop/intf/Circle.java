package com.oop.intf;

public class Circle extends Shape{

	private final double pi = 3.14;
	private int r;

	public Circle(int r) {
		super();
		this.r = r;
	}

	public void setR(int r) {
		this.r = r;
	}

	@Override
	public double area() {
		// TODO Auto-generated method stub
		return r * r * pi;
	}
	
}
