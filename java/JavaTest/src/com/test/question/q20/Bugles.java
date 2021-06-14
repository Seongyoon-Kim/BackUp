package com.test.question.q20;

import java.util.Calendar;

public class Bugles {
	
	private int price;
	private int weight;
	private Calendar creationTime;
	private int expiration;
	
	
	//Setter 용량
	public void setWeight(int weight) throws Exception {
		
		if (weight == 300 || weight == 500 || weight == 850) {
			this.weight = weight;
		} else {
			throw new Exception("잘못된 용량입니다.");
		}
		
	}//setWeight
	
	//Getter 가격
	public int getPrice() throws Exception {
		
		switch (this.weight) {
			case 300:
				this.price = 850;
				break;
			case 500:
				this.price = 1200;
				break;
			case 850:
				this.price = 1950;
				break;
	
			default:
				throw new Exception("잘못된 가격입니다.");
		}
		return this.price;
	}//getPrice
	
	
	//Setter 생산일자
	public void setCreationTime(String creationTime) throws Exception {
		
		//YYYY-MM-DD
		
		if (creationTime.length() != 10) {
			throw new Exception("잘못된 생산일자입니다.");
		}
		
		for (int i=0; i<10; i++) {
			
			char c = creationTime.charAt(i);
			
			if (i == 4 || i == 7) {
				
				if (c != '-') {
					throw new Exception("잘못된 생산일자입니다.");
				}
				
			} else {
				
				if (c < '0' || c > '9') {
					throw new Exception("잘못된 생산일자입니다.");
				}
				
			}
		}
		
		int year = Integer.parseInt(creationTime.substring(0, 4));
		int month = Integer.parseInt(creationTime.substring(5, 7));
		int day = Integer.parseInt(creationTime.substring(8, 10));
		
		Calendar c = Calendar.getInstance();
		c.set(year, month-1, day);
		this.creationTime = c;
		
	}//setCreationTime
	
	
	//Getter 유통기한
	public int getExpiration() {
		
		Calendar now = Calendar.getInstance();
		
		long gap = now.getTimeInMillis() - this.creationTime.getTimeInMillis();
		gap = gap / 1000 / 60 / 60 / 24;
		
		switch (this.weight) {
			case 300:
				this.expiration = 7 - (int)gap;
				break;
			case 500:
				this.expiration = 10 - (int)gap;
				break;
			case 850:
				this.expiration = 15 - (int)gap;
				break;
		}
		return this.expiration;
		
	}//getExpiration
	
	
	public void eat() {
		
		if (this.expiration < 0) {
			System.out.println("유통 기한이 지나 먹을 수 없습니다.");
		} else {
			System.out.println("과자를 맛있게 먹었습니다.");
		}
		
	}//eat
	

}//Bugles
