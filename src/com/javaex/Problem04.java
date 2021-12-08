package com.javaex;

import java.util.Scanner;
//정수 다섯개를 입력받아 최대값 출력
public class Problem04 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int max = 0;
		for(int i=0; i<5; i++) {
			System.out.print("정수를 입력하세요: ");
			int n = sc.nextInt();
			if(i==0) {
				max = n;
			}
			if(n>max) {
				max = n;
			}
		}
		System.out.println("가장 큰 수: " + max);
		sc.close();
	}
}
