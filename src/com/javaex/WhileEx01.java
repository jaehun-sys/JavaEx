package com.javaex;

public class WhileEx01 {
	public static void main(String[] args) {
		int i=0;
		while(true) {
			System.out.println("i like java"+i);
			i++;
			if(i>5) {
				break;
			}
		}
		
		i=0;
		
		while(i<5) {
			System.out.println("i like java"+i);
			i++;
		}
	}
}
