package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q008 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("[들어온 시간]");
		
		System.out.print("시: ");
		
		int inHour = Integer.parseInt(reader.readLine());
		
		System.out.print("분: ");
		
		int inMinute = Integer.parseInt(reader.readLine());
		
		System.out.println("[나간 시간]");
		
		System.out.print("시: ");
		
		int outHour = Integer.parseInt(reader.readLine());
		
		System.out.print("분: ");
		
		int outMinute = Integer.parseInt(reader.readLine());
		
		int perMinuteCharge = 2000 / 10;
		
		int charge = ((outHour * 60 + outMinute) - (inHour * 60 + inMinute) - 30) * perMinuteCharge;
		
		if (charge <= 0) {
			System.out.println("주차 요금은 무료입니다.");
		} else {
			System.out.printf("주차 요금은 %,d원입니다.", charge);
		}
		
	}

}
