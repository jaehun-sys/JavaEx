package com.javaex;

import java.util.Scanner;

public class BreakEx01 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.print("숫자를 입력해주세요");
			int p = sc.nextInt();
			if(p==0) {
				System.out.println("종료");
				break;
			}
			
			if(p%3==0) {
				System.out.println("3의 배수");
			}else {
				System.out.println("3의 배수가 아닙니다");
			}
		}
		sc.close();
	}
}
