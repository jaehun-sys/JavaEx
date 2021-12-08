package com.oop;

public class GoodsApp {
	public static void main(String[] args) {
		Goods camera = new Goods();
		camera.setName("nikon");
		camera.setPrice(400000);
		camera.showInfo();
		
		Goods notebook = new Goods();
		notebook.setName("LG그램");
		notebook.setPrice(900000);
		notebook.showInfo();
		
		Goods cup = new Goods();
		cup.setName("머그컵");
		cup.setPrice(2000);
		cup.showInfo();
		
	}
}
