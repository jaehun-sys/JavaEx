package com.javaex;

import java.util.Scanner;

public class if_elseEx01 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자를 입력해주세요");
		
		int num = sc.nextInt();
		if(num>0) {
			System.out.println("양수");
		}else if(num<0) {
			System.out.println("음수");
		}else {
			System.out.println("0입니다.");
		}
		sc.close();
	}
}
