package com.oop;

public class Friend {
	private String name;
    private String hp;
    private String school;
    //필요한 메소드 작성    
    
    public Friend(String name, String hp, String school) {
    	super();
    	this.name = name;
    	this.hp = hp;
    	this.school = school;
    }
    
    public String getName() {
		return name;
	}

	public String getHp() {
		return hp;
	}

	public String getSchool() {
		return school;
	}


	public void showInfo(){
        System.out.println("이름:"+name+"  핸드폰:"+hp+"  학교:"+school);
    }
}
