package com.oop.ex;

public class Goods {
	private String name;
	private int price;
	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return this.name;
	}

	public int getPrice() {
		return this.price;
	}
	
	public Goods() {
		// TODO Auto-generated constructor stub
	}
	public Goods(String name, int price, int count) {
		super();
		this.name = name;
		this.price = price;
		this.count = count;
	}

	public void showInfo() {
		System.out.println(this.name + "(가격:" + this.price + "원)이 " + this.count + "개 입고되었습니다.");
	}
}