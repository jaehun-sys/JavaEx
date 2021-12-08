package com.javaex;

public class Problem05 {
	public static void main(String[] args) {
		for(int i=1; i<11; i++) {
			for(int j=i; j<i+10; j++) {
				System.out.printf("%-5d",j);
			}
			System.out.println();
		}
	}
}
