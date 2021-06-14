package com.test.question.q10;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
	
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("아빠 생일(년): ");
		
		int fatherYear = Integer.parseInt(reader.readLine());
		
		System.out.print("아빠 생일(월): ");
		
		int fatherMonth = Integer.parseInt(reader.readLine());
		
		System.out.print("아빠 생일(일): ");
		
		int fatherDay = Integer.parseInt(reader.readLine());
		
		System.out.print("딸 생일(년): ");
		
		int daughterYear = Integer.parseInt(reader.readLine());
		
		System.out.print("딸 생일(월): ");
		
		int daughterMonth = Integer.parseInt(reader.readLine());
		
		System.out.print("딸 생일(일): ");
		
		int daughterDay = Integer.parseInt(reader.readLine());
		System.out.println();
		
		m1(fatherYear, fatherMonth, fatherDay, daughterYear, daughterMonth, daughterDay);
		
	}//main

	private static void m1(int fatherYear, int fatherMonth, int fatherDay, int daughterYear, int daughterMonth, int duaghterDay) {
		
		Calendar now = Calendar.getInstance();
		Calendar father = Calendar.getInstance();
		Calendar daughter = Calendar.getInstance();
		
		father.set(fatherYear, fatherMonth, fatherDay);
		daughter.set(daughterYear, daughterMonth, duaghterDay);
		
		long nowTick = now.getTimeInMillis();
		long fatherTick = father.getTimeInMillis();
		long daughterTick = daughter.getTimeInMillis();
		
		System.out.printf("아빠는 딸보다 총 %,d일을 더 살았습니다.", ((nowTick - fatherTick) - (nowTick - daughterTick)) / 1000 / 60 / 60 / 24);
		
		
		
	}
	
	

}
