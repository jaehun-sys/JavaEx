package com.oop.abs;

public class Telephone extends Phone{

	private boolean power;
	
	public Telephone() {
		super();
	}
	public Telephone(String myNumber) {
		super(myNumber);
	}
	
	public boolean isPower() {
		return power;
	}

	public void setPower(boolean power) {
		this.power = power;
	}

	@Override
	protected void call(String number) {
		System.out.println(super.getNumber() + " 로 통화시작");
	}
	
	public void power(boolean on) {
		this.power = on;
	}
}
