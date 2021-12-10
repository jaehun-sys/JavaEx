package com.oop.ex;

import java.util.ArrayList;
import java.util.Scanner;

public class GoodsApp {
	public static void main(String[] args) {
		ArrayList<Goods> goodsList = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		
		System.out.println("상품 3개를 입력해주세요");
		int countAll = 0;
		for(int i=0; i<3; i++) {
			String s = sc.nextLine();
			String[] gArr = s.split(" ");
			goodsList.add(new Goods(gArr[0], Integer.parseInt(gArr[1]), Integer.parseInt(gArr[2])));
		}
		for(Goods g : goodsList) {
			g.showInfo();
			countAll += g.getCount();
		}
		System.out.println("모든 상품의 갯수는 " + countAll + "개입니다.");
		
	}
}
