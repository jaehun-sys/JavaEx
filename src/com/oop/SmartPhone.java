package com.oop;

public class SmartPhone extends MusicPhone{
	public void execute(String str){
        
        //코드작성
		if(str.equals("앱")) {			
			startApp();
		}else if(str.equals("음악")) {			
			downloadMusic();
		}else {
			super.execute(str);
		}
    }
 
    //메소드작성
    private void startApp() {
    	System.out.println("앱실행");
    }
    //메소드작성
    private void downloadMusic() {
    	System.out.println("다운로드해서 음악재생");
    }
}
