package com.javaex.problem04;

public class CConverterApp {
	public static void main(String[] args) {
		double dollar;
        double won;
        
        CConverter.setRate(1177.00);	//2021-12-08 기준
        
        
        //백만원을 달러로 출력
        won = 1000000;
        System.out.println("백만원은 "+CConverter.toDoller(won)+"달러입니다.");

        
        //100달려를 원으로 출력
        dollar = 100;
        System.out.println("백달러는 "+CConverter.toKRW(dollar)+"원입니다.");
	}
}
