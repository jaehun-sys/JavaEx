package com.javaex;

import java.util.Scanner;

public class Problem07 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int answer = (int) (Math.random() * 100) + 1;
		System.out.println("=================");
		System.out.println("숫자 맞추기 게임 시작");
		System.out.println("=================");

		while (true) {
			System.out.print(">>>");
			int num = sc.nextInt();
			if (num > answer) {
				System.out.println("더 낮게");
			} else if (num < answer) {
				System.out.println("더 높게");
			} else {
				System.out.println("맞았습니다.");
				System.out.println("게임을 종료하시겠습니가?(y/n)");
				String s = sc.next();
				if (s.equals("y")) {
					System.out.println("=================");
					System.out.println("숫자 맞추기 게임 종료");
					System.out.println("=================");
					break;
				} else if (s.equals("n")) {
					answer = (int) (Math.random() * 100) + 1;
					System.out.println("=================");
					System.out.println("숫자 맞추기 게임 시작");
					System.out.println("=================");
				}
			}
		}
		sc.close();
	}
}
