package com.oop.intf;

public class ShapeApp {
	public static void main(String[] args) {
		Shape rect = new Rectangle(3,4);
		System.out.println("사각형의 면적은 : " + rect.area());
		
		Shape tri = new Triangle(3,4);
		System.out.println("삼각형의 면적은 : " + tri.area());
		
		Shape c = new Circle(5);
		System.out.println("원의 면적은 : " + c.area());
		
		Drawable p = new Point(3,4);
		p.draw();
		
		((Rectangle) rect).draw();
		
		System.out.println(c 	instanceof Circle);
		System.out.println(rect	instanceof Rectangle);
		System.out.println(tri	instanceof Triangle);
		System.out.println(p    instanceof Point);
	}
}
