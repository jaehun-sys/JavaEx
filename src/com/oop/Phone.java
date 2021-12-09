package com.oop;

public class Phone {
	public void execute(String str){
		if(str.equals("통화")) {			
			call();
		}
    }
    
    private void call(){
        System.out.println("통화기능시작");
    }
}
