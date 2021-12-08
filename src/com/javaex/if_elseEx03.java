package com.javaex;

import java.util.Scanner;

public class if_elseEx03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int subject = sc.nextInt();
		
		if(subject == 1) {
			System.out.println("R401호입니다.");			
		}else if(subject == 2) {
			System.out.println("R402호입니다.");
		}else if(subject == 3) {
			System.out.println("R403호입니다.");
		}else if(subject == 4) {
			System.out.println("R404호입니다.");
		}else {
			System.out.println("상담원에게 문의하세요.");
		}
		sc.close();
	}
}
