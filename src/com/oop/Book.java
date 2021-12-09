package com.oop;

public class Book {
	private int no;
	private String title;
	private String author;
	private int state;	//0:재고있음, 1:대여중
	
	public Book(int no, String title, String author) {
		super();
		this.no = no;
		this.title = title;
		this.author = author;
		this.state = 0;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
