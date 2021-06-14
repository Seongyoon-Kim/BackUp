package com.test.question.q23;

public class Time {
	
	private int hour;
	private int minute;
	private int second;
	
	public Time() {
		
		this(0, 0, 0);
		
	}
	
	public Time(int hour, int minute, int second) {
		
		this.hour = hour;
		this.minute = minute;
		this.second = second;
		
	}
	
	public Time(int minute, int second) {
		
		this(0, minute, second);
		
	}
	
	public Time(int second) {
		
		this(0, 0, second);
		
	}
	
	public String info() {
		
		String txt = "";
		
		if (minute > 60) {
			
			hour += minute / 60;
			minute = minute % 60;
			
		} else if (second > 60) {
			
			minute += second / 60;
			hour += minute / 60;
			minute = minute % 60;
			second = second % 60;
			
		}
		
		txt += String.format("%d:%d:%d", hour, minute, second);
		
		return txt;
		
	}

}//Time
