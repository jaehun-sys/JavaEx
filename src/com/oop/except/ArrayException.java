package com.oop.except;

public class ArrayException {
	public static void main(String[] args) {
		int[] intArray = new int[] {3,6,9};
		
		try {
			System.out.println(intArray[3]);
		}catch(Exception e) {
			//System.out.println("에러가 발생했습니다.");
			System.out.println(e);
			System.out.println(e.getStackTrace());
		}
		
		System.out.println("프로그램 종료");
	}
}
