package com.oop.abs;

public class Smartphone extends Phone{
	@Override
	protected void call(String number) {
		System.out.println(number + " 로 통화시작");
	}
}
