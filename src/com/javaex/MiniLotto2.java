package com.javaex;

import java.util.Arrays;

public class MiniLotto2 {
	public static void main(String[] args) {
		int[] lotto = new int[6];
		
		for(int i=0; i<lotto.length; i++) {
			int num = (int)(Math.random()*45+1);
			lotto[i] = num;
		}
		
		System.out.println(Arrays.toString(lotto));
		
		//배열 비교
		int[] leftArray = new int[] {10,20,30};
		int[] rightArray = new int[] {10,20,30};
		if(Arrays.equals(leftArray, rightArray)){
			System.out.println("두 배열이 동일합니다.");
		}else {
			if(leftArray.length != rightArray.length) {
				System.out.println("두 배열의 크기가 다릅니다.");
			}else{
				for(int i=0; i<leftArray.length; i++) {
					if(leftArray[i] != rightArray[i]) {
						System.out.println(i + " 번째 값이 다릅니다.");
					}
				}
			}
		}
	}
}
