package com.oop;

public class TV {
	private int channel;
	private int volume;
	private boolean power;
	public int getChannel() {
		return channel;
	}
	public int getVolume() {
		return volume;
	}
	public boolean isPower() {
		return power;
	}
	
	
	public TV() {
		super();
		this.channel = 7;
		this.power = false;
		this.volume = 20;
	}
	public TV(int channel, int volume, boolean power) {
		super();
		this.channel = channel;
		this.volume = volume;
		this.power = power;
	}
	
	void power(boolean on) {
		this.power = on;
	}
	void channel(int channel) {
		if(channel<1 || channel>255) {
			System.out.println("없는 채널 번호입니다");
		}else {			
			this.channel = channel;
		}
	}
	void channel(boolean up) {
		if(up) {
			if(this.channel == 255) {
				this.channel = 1;
			}else {
				++this.channel;
			}
		}else {
			if(this.volume != 1) {
				this.volume = 255;
			}else {				
				--this.volume;
			}
		}
	}
	void volume(int volume) {
		if(volume<0 || volume>100) {
			System.out.println("볼륨 입력 오류(0~100)");
		}else {
			this.volume = volume;
		}
	}
	void volume(boolean up) {
		if(up) {				
			
			if(this.volume==100) {
				this.volume = 0;
			}else {
				++this.volume;
			}
		}else {				
			
			if(this.volume==0) {
				this.volume=100;
			}
			else {
				--this.volume;
			}
		}
	}
	void status() {
		System.out.println("----------TV 상태----------");
		if(this.power) {
			System.out.printf("채널:%3d, 볼륨:%3d, 파워:%3b\n", this.channel, this.volume, this.power);
		}else {
			System.out.println("전원 꺼짐");
		}
	}
}
