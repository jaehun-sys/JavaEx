package com.javaex.problem02;

public class Base {
	public void service(String state) {
        //코드작성
		if(state.equals("낮")) {
			day();
		}else if(state.equals("밤")) {
			night();
		}else if(state.equals("오후")) {
			afternoon();
		}else {
			System.out.println("잘못된 입력값입니다.");
		}
    }

    public void day() {
        System.out.println("낮에는 열심히 일하자");
    }
    public void night() {
        //코드작성
    	System.out.println("night");
    }
    public void afternoon(){
        System.out.println("오후도 낮과 마찬가지로 일해야 합니다.");
    }
}
