package com.oop.abs;

public class Triangle extends Shape{

	private int width;
	private int height;
	
	public void setWidth(int width) {
		this.width = width;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public Triangle(int width, int height) {
		super();
		this.width = width;
		this.height = height;
		// TODO Auto-generated constructor stub
	}

	@Override
	public double area() {
		// TODO Auto-generated method stub
		return this.width * this.height / 2;
	}
	
}
