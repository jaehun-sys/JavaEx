package com.oop;

public class Student extends Person{
	private String schoolName;

	public Student() {
		super();
	}
	public Student(String schoolName) {
		super();
		this.schoolName = schoolName;
	}
	public Student(String name, int age, String schoolName) {
		super(name,age);
		this.schoolName = schoolName;
	}
	
	
	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String shoolName) {
		this.schoolName = shoolName;
	}
	
	public void showInfo() {
		System.out.print("이름: "+getName() + " ");
		System.out.print("나이: "+getAge() + " ");
		System.out.println("학교: "+getSchoolName());
	}
}
