package com.oop.ex;

public class Point {
	@Override
	public String toString() {
		return "Point [x=" + x + ", y=" + y + "]";
	}
	
	private int x;
	private int y;
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
	public Point() {
		// TODO Auto-generated constructor stub
	}
	public Point(int x, int y) {
		super();
		this.x = x;
		this.y = y;
	}
	
	public void draw() {
		System.out.println("점[x="+this.x+", y="+this.y+"]을(를) 그렸습니다.");
	}
	public void draw(boolean isDraw) {
		if(isDraw) {
			draw();
		}else {
			System.out.println("점[x="+this.x+", y="+this.y+"]을(를) 그렸습니다.");
			this.setX(0);
			this.setY(0);
		}
	}
}
