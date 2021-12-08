package com.oop;

public class Goods {
	private String name;
	private int price;

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
	public Goods(String name, int price) {
		super();
		this.name = name;
		this.price = price;
	}

	public void showInfo() {
		System.out.println("상품 이름: "+this.name);
		System.out.println("상품 가격: "+this.price);
	}
}