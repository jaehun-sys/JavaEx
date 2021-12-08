package com.javaex;

import java.util.Scanner;

public class WhileEx02 {
	public static void main(String[] args) {
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		int dan;
		int i=1;
		//메시지 출력, dan값 입력
		System.out.print("dan: ");
		dan = sc.nextInt();
		while(i<=9) {
			//구구단 출력 코드
			System.out.println(dan + " * " + i + " = " + dan*i);
			i++;
		}
		System.out.println();
		for(i=1; i<=9; i++) {
			//구구단출력
			System.out.println(dan + " * " + i + " = " + dan*i);
		}
		sc.close();
	}
}
