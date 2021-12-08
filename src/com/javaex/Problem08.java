package com.javaex;

import java.util.Scanner;

public class Problem08 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num;
		int balance = 0;
		boolean state = true;
		
		while(state) {
			System.out.println("----------------------------");
			System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료");
			System.out.println("----------------------------");
			System.out.print("선택> ");
			num = sc.nextInt();
			switch(num) {
			case 1:
				System.out.print("예금액> ");
				int deposit = sc.nextInt();
				if(deposit<0) {
					System.out.println("잘못된 입력값입니다.");
					break;
				}
				balance += deposit;
				break;
			case 2:
				System.out.print("출금액> ");
				int withdraw = sc.nextInt();
				if(withdraw<0 || balance-withdraw<0) {
					System.out.println("잘못된 입력값입니다.");
					break;
				}
				balance -= withdraw;
				break;
			case 3:
				System.out.println("잔고액> " + balance);
				break;
			case 4:
				state = false;
				System.out.println("프로그램 종료");
				break;
			default:
				System.out.println("잘못된 입력값입니다.");
			}
		}
		sc.close();
	}
}
