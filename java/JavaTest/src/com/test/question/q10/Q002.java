package com.test.question.q10;

import java.util.Calendar;

public class Q002 {
	
	public static void main(String[] args) {
		
		m1();
		
	}//main

	private static void m1() {
		
		Calendar now = Calendar.getInstance();
		
		now.add(Calendar.DATE, 100);
//		now.add(Calendar.DATE, 100 - 1); // 오늘은 포함할지 안할지를 고민해봐야 한다.
		System.out.printf("백일: %tF\n", now);
		
		now = Calendar.getInstance();
		
		//** 월, 년 -> 산술연산은 반드시 add()
		now.add(Calendar.YEAR, 1);
		System.out.printf("첫돌: %tF\n", now);
		
	}
	
	

}
