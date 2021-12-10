package com.oop.ex;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;

public class ArrayListTest {
	public static void main(String[] args) {
		ArrayList<Integer> list = new ArrayList<>();
		list.add(3); // 값 추가
		list.add(null); // null값도 add 가능
		list.add(1, 10); // index 1에 10 삽입

		// System.out.print(list);

		ArrayList<Point> pList = new ArrayList<Point>();
		Point p = new Point(1, 1);
		Point p2 = new Point(1, 10);
		pList.add(p);
		pList.add(p2);
		pList.add(new Point(2, 2));

		/*
		 * System.out.println(pList.size()); pList.remove(1); System.out.println(pList);
		 */

		/*
		 * for(Point temp:pList) { System.out.println(temp); }
		 */

		Iterator iter = pList.iterator();
		while (iter.hasNext()) {
			System.out.println(iter.next()); // 값 출력
		}
		// pList에 1이 있는지 검색 : false
		System.out.println(pList.contains(1));

		// pList에 Point(1,1)이 있는지 검색 : true
		System.out.println(list.indexOf(1));

		System.out.println("=======================================================");
		LinkedList<Point> pLList = new LinkedList<Point>();
		pLList.addFirst(p);
		pLList.addLast(p2);
		pLList.add(new Point(2, 2));
		System.out.println(pLList);

		System.out.println("=======================================================");
		HashSet<Integer> set1 = new HashSet<Integer>();
		set1.add(1);
		set1.add(2);
		set1.add(3);
		set1.add(1);
		System.out.println(set1);

		System.out.println("=======================================================");
		HashMap<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "사과");
		map.put(2, "바나나");
		map.put(3, "포도");
		map.put(1, "망고");
		System.out.println(map);
		map.remove(2);
		System.out.println(map);

		HashMap<String, String> map2 = new HashMap<String, String>();
		map2.put("a", "사과");
		map2.put("b", "바나나");
		map2.put("c", "포도");
		map2.put("d", "망고");
		System.out.println(map2);
		map2.remove("b");
		System.out.println(map);

		for (Entry<String, String> entry : map2.entrySet()) {
			System.out.println("[Key]:" + entry.getKey() + " [Value]:" + entry.getValue());
		}

		// entrySet().iterator()
		Iterator<Entry<String, String>> entries = map2.entrySet().iterator();
		while (entries.hasNext()) {
			Map.Entry<String, String> entry = entries.next();
			System.out.println("[Key]:" + entry.getKey() + " [Value]:" + entry.getValue());
		}
	}
}
