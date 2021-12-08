package com.javaex;

import java.util.Scanner;

public class SwitchEx01 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("과목을 선택하세요\n(1.Java   2.C   3.C++   4.Python");
		int subject = sc.nextInt();
		switch(subject) {
		case 1:
			System.out.println("R101호 입니다.");
			break;
		case 2:
			System.out.println("R102호 입니다.");
			break;
		case 3:
			System.out.println("R103호 입니다.");
			break;
		case 4:
			System.out.println("R104호 입니다.");
			break;
		default:
			System.out.println("상담원에게 문의하세요");
		}
		sc.close();
	}
}
