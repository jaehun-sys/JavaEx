package com.javaex;

import java.util.Scanner;

public class ScannerEx {
	public static void main(String[] args) {
		System.out.println("이름을 입력하세요");
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();
			
		int age = sc.nextInt();
		
		System.out.println("당신의 이름은 " + name + ", 나이는 " + age + "세입니다.");
		sc.close();
	}
}
