package com.oop;

public class Depart extends Employee{

	private String name;
	private int salary;
	private String dept;
	public Depart(String name, int salary, String dept) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.salary = salary;
		this.dept = dept;
	}
	
	
	public Depart() {
		super();
		// TODO Auto-generated constructor stub
	}


	public void getInformation() {
        System.out.println("이름:" + this.name + " 연봉:" + this.salary + " 부서:" + this.dept);
    }
}
