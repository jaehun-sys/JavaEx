package com.oop;

public class Song {
	private String title;
	private String artist;
	private String album;
	private String composer;
	private int year;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getComposer() {
		return composer;
	}
	public void setComposer(String composer) {
		this.composer = composer;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getTrack() {
		return track;
	}
	public void setTrack(int track) {
		this.track = track;
	}
	private int track;
	public Song() {
		// TODO Auto-generated constructor stub
	}
	public Song(String title, String artist, String album, int year, int track, String composer) {
		// TODO Auto-generated constructor stub
		this.title = title;
		this.artist = artist;
		this.year = year;
		this.track = track;
		this.composer = composer;
	}
	public void showInfo() {
		System.out.println(artist + ", " + title + " ( " + album + ", " + year + ", " + track + "번 track, " + composer + " 작곡 )");
	}
}
