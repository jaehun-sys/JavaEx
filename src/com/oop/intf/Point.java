package com.oop.intf;

public class Point implements Drawable{
	private int x;
	private int y;

	public Point(int x, int y) {
		super();
		this.x = x;
		this.y = y;
	}

	@Override
	public void draw() {
		System.out.println("("+this.x+"," + this.y + ") 점을 그렸습니다");
	}
}
