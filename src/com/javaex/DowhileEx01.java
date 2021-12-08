package com.javaex;

import java.util.Scanner;

public class DowhileEx01 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = 0, sum = 0;
		System.out.print("숫자를 입력하세요[0이면 종료]: ");
		
		do {
			num = sc.nextInt();
			sum += num;	//sum = sum + num;
			System.out.println("합계: " + sum);
		}while(num!=0);
		sc.close();
	}
}
