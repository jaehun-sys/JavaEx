package com.oop.ex;

import java.util.HashSet;
import java.util.Iterator;

public class MiniLotto {
	public static void main(String[] args) {
		HashSet<Integer> lotto = new HashSet<>();
		for(int i=0; i<6; i++) {
			lotto.add((int)(Math.random()*45+1));
		}
		Iterator it=lotto.iterator();
		while(it.hasNext()) {//값이 있으면 true 없으면 false
			System.out.print(it.next() + " ");
		}
	}
}
