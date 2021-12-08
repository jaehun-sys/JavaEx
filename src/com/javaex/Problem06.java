package com.javaex;

import java.util.Scanner;
//입력 받은 숫자가 홀수인 경우에는, 입력 값까지 홀수의 합을 출력합니다.
//입력 받은 숫자가 짝수인 경우에는, 입력 값까지 짝수의 합을 출려합니다.
public class Problem06 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자를 입력하세요");
		int n = sc.nextInt();
		int sum = 0;
		if(n%2==1) {
			for(int i=1; i<n+1; i+=2) {
				sum+=i;
			}
		}else {
			for(int i=2; i<n+1; i+=2) {
				sum+=i;
			}
		}
		System.out.println("결과값: "+sum);
		sc.close();
	}
}
