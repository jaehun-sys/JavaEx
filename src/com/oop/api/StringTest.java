package com.oop.api;

public class StringTest {
	public static void main(String[] args) {
		String str = "JAVA Programming";
		
		//문자열의 길이만큼 반복
		for(int i=0; i<str.length(); i++) {
			System.out.println(str.charAt(i));
		}
		
	}
}
