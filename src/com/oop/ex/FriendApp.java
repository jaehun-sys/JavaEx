package com.oop.ex;

import java.util.ArrayList;
import java.util.Scanner;

public class FriendApp {
	public static void main(String[] args) {
		ArrayList<Friend> friendList = new ArrayList<>();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("친구를 3명 등록해 주세요");
		for(int i=0; i<3; i++) {
			String s = sc.nextLine();
			String[] sIndex = s.split(" ");
			friendList.add(new Friend(sIndex[0], sIndex[1], sIndex[2]));
		}
		for(Friend f : friendList) {
			f.showInfo();
		}
	}
}
