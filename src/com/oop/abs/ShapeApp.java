package com.oop.abs;

public class ShapeApp {
	public static void main(String[] args) {
		Rectangle rect = new Rectangle(3,4);
		System.out.println("사각형의 면적은 : " + rect.area());
		
		Triangle tri = new Triangle(3,4);
		System.out.println("삼각형의 면적은 : " + tri.area());
		
		Circle c = new Circle(5);
		System.out.println("원의 면적은 : " + c.area());
	}
}
