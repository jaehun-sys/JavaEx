package com.oop.intf;

public class Rectangle extends Shape implements Drawable{
	private int width;
	private int height;

	public Rectangle(int width, int height) {
		super();
		this.width = width;
		this.height = height;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	@Override
	public double area() {
		return this.width * this.height;
	}

	@Override
	public void draw() {
		// TODO Auto-generated method stub
		System.out.println("가로 "+this.width+", " +"세로 "+this.height+"인 사각형을 그렸습니다.");
	}
}
