package com.test.question.q10;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("음식을 받기 원하는 시각\n");
		System.out.print("시: ");
		
		int hour = Integer.parseInt(reader.readLine());
		
		System.out.print("분: ");
		
		int minute = Integer.parseInt(reader.readLine());
		
		int jajangMinute = minute - 10;
		int jajangHour = (jajangMinute < 0) ? (hour - 1) : (hour);
		jajangMinute = (jajangMinute < 0) ? (60 + jajangMinute) : (jajangMinute);
		
		System.out.printf("짜장면: %d시 %d분\n", jajangHour, jajangMinute);
		
		int chickenMinute = minute - 18;
		int chickenHour = (chickenMinute < 0) ? (hour - 1) : (hour);
		chickenMinute = (chickenMinute < 0) ? (60 + chickenMinute) : (chickenMinute);
		
		System.out.printf("치킨: %d시 %d분\n", chickenHour, chickenMinute);
		
		int pizzaMinute = minute - 25;
		int pizzaHour = (pizzaMinute < 0) ? (hour - 1) : (hour);
		pizzaMinute = (pizzaMinute < 0) ? (60 + pizzaMinute) : (minute);
		
		System.out.printf("피자: %d시 %d분\n", pizzaHour, pizzaMinute);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}
