package com.javaex;

import java.util.Scanner;

public class ScannerEx2 {
	public static void main(String[] args) {
		System.out.println("점수를 입력하세요");
		
		Scanner sc = new Scanner(System.in);
		int point = sc.nextInt();
		
		if(point >= 60) {
			System.out.println("합격입니다.");
		}else {
			System.out.println("불합격입니다.");
		}
		sc.close();
	}
}
