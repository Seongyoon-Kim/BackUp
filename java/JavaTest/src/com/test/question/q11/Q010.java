package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q010 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		Calendar now = Calendar.getInstance();
		
		System.out.print("년: ");
		
		int year = Integer.parseInt(reader.readLine());
		
		System.out.print("월: ");
		
		int month = Integer.parseInt(reader.readLine());
		
		System.out.print("일: ");
		
		int day = Integer.parseInt(reader.readLine());
		
		now.set(year, month-1, day);
		
		int someday = now.get(Calendar.DAY_OF_WEEK);
		
		if (now.get(Calendar.DAY_OF_WEEK) > 1 && now.get(Calendar.DAY_OF_WEEK) < 7) {
			System.out.println("입력하신 날짜는 '평일'입니다.");
			System.out.println("해당 주의 토요일로 이동합니다.");
			now.add(Calendar.DAY_OF_WEEK, 7 - someday);
			System.out.printf("이동한 날짜는 '%tF'입니다.", now);
		} else {
			System.out.println("입력하신 날짜는 '휴일'입니다.");
			System.out.println("결과가 없습니다.");
		}
		
	}

}
