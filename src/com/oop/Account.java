package com.oop;

public class Account {
	private String accountNo;
    private int balance;

    //생성자 작성
	public Account(String accountNo) {
		super();
		this.accountNo = accountNo;
		System.out.println(this.accountNo + " 계좌가 개설되었습니다.");
	}

	//필요한 메소드 작성
	public void deposit(int money) {
		this.balance += money;
	}

	public void withdraw(int money) {
		if(money > this.balance) {
			System.out.println("잔액이 부족합니다.");
		}else {
			this.balance -= money;
		}
	}

	public void showBalance() {
		System.out.println(balance);
	}
}
