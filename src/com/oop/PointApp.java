package com.oop;

public class PointApp {
	public static void main(String[] args) {
		/*
		 * Point p1 = new Point(); p1.setX(5); p1.setY(5); p1.draw();
		 * 
		 * Point p2 = new Point(); p2.setX(5); p2.setY(5);; p2.draw();
		 */
		
		Point a = new Point();
		System.out.println(a.hashCode());
		System.out.println(a.getClass());
		System.out.println(a.getClass().getName());
		System.out.println(a);
	}
}
