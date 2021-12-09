package com.oop.abs;

public abstract class Phone {

	private String number;

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public Phone(String number) {
		super();
		this.number = number;
	}
	
	public Phone() {
		
	}

	protected abstract void call(String number);
	
}
