package com.oop;

public class Person {
	private String name;
	private int age;
	
	public Person(String name, int age) {
		// TODO Auto-generated constructor stub
		this.name=name;
		this.age = age;
	}
	
	public Person() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String personName) {
		this.name = personName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}


	public void showInfo() {
		System.out.print("이름: "+getName() + " ");
		System.out.println("나이: "+getAge() + " ");
	}
	
}
