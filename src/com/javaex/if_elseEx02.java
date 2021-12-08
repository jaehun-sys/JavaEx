package com.javaex;

import java.util.Scanner;

public class if_elseEx02 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if(num>0) {
			if(num%2==0) {
				System.out.println("짝수");
			}else {
				System.out.println("홀수");
			}
		}else if(num<0) {
			System.out.println("음수");
		}else {
			System.out.println("0");
		}
		sc.close();
	}
}
