package com.oop;

public class SongApp {
	public static void main(String[] args) {
		Song song1 = new Song();
		song1.setArtist("아이유");
		song1.setAlbum("Real");
		song1.setTitle("좋은날");
		song1.setYear(2010);
		song1.setTrack(3);
		song1.setComposer("이민수");
		song1.showInfo();
		
		Song song2 = new Song("거짓말", "BIGBANG", "Always", 2007, 2, "G-DRAGON");
		song2.showInfo();
		
		Song song3 = new Song();
		song3.setArtist("버스커버스커");
		song3.setAlbum("버스커버스커1집");
		song3.setTitle("벚꽃엔딩");
		song3.setYear(2012);
		song3.setTrack(4);
		song3.setComposer("장범준");
		song3.showInfo();
	}
}
