package com.oop.except;

import java.util.Scanner;

public class CalcApp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Calculate c;
		boolean power = true;
		while(power) {
			System.out.print(">> ");
			String s = sc.nextLine();
			
			String strArr[] = s.split(" ");
			
			if(s.equals("/q")) {
				System.out.println("종료합니다.");
				power = false;
			}else if(strArr.length!=3){
				System.out.println("다시 입력해주세요.");
				continue;
			}else {
				int a = Integer.parseInt(strArr[0]);
				String op = strArr[1];
				int b = Integer.parseInt(strArr[2]);
				
				switch(op) {
				case "+":
					c = new Add(a,b);
					printResult(c);
					break;
				case "-":
					c = new Sub(a,b);
					printResult(c);
					break;
				case "*":
					c = new Mul(a,b);
					printResult(c);
					break;
				case "/":
					try {
						c = new Div(a,b);
						printResult(c);
					}catch(ArithmeticException ae){
						System.err.println(ae);
						System.err.println("잘못된 연산입니다.");
					}
					break;
				default:
					System.out.println("알 수 없는 연산입니다.");
					
				}
			}
			
		}
		sc.close();
	
	}
	public static void printResult(Calculate c) {
		System.out.println(">> " + c.calculate());
	}
}
