package com.oop.abs;

public class PhoneApp {
	public static void main(String[] args) {
		Telephone t = new Telephone("02-1234-5678");
		t.call("000-1234-5678");
		
		Smartphone sp = new Smartphone();
		sp.call("119");
	}
}
