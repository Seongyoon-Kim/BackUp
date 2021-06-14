package com.test.question.q10.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("음식을 받기 원하는 시각");
		System.out.print("시: ");
		int hour = Integer.parseInt(reader.readLine());
		
		System.out.print("분: ");
		int minute = Integer.parseInt(reader.readLine());
	
		int zazangminute = minute - 10;
		int zazanghour = (zazangminute <0)? hour-1: hour;
		zazangminute = (zazangminute <0) ? (60+zazangminute): zazangminute;
		
		int chickenminute = minute - 18;
		int chickenhour = (chickenminute <0)? hour-1: hour;
		chickenminute = (chickenminute <0) ? (60+chickenminute): chickenminute;
		
		int pizzaminute = minute - 25;
		int pizzahour = (pizzaminute <0)? hour-1: hour;
		pizzaminute = (pizzaminute <0) ? (60+pizzaminute): pizzaminute;
		
		System.out.printf("짜장면 : %d시 %d분\n", zazanghour, zazangminute);		
		System.out.printf("치킨 : %d시 %d분\n", chickenhour, chickenminute);
		System.out.printf("피자 : %d시 %d분\n", pizzahour, pizzaminute );		
		System.out.println("");
		System.out.println("");
		
//		System.out.println("Calendar 사용\n");
//		System.out.println("음식을 받기 원하는 시각");
//		System.out.print("시: ");
//		 hour = Integer.parseInt(reader.readLine());
//		
//		System.out.print("분: ");
//		minute = Integer.parseInt(reader.readLine());
//		
//		Calendar delivery = Calendar.getInstance();
//		delivery.set(delivery.HOUR_OF_DAY, hour);
//		delivery.set(delivery.MINUTE, minute);
//				
//		int deliveryHour = delivery.get(delivery.HOUR_OF_DAY);
//		int deliveryMin = delivery.get(delivery.MINUTE);
//		//System.out.printf("%d시 %d분\n", deliveryHour, deliveryMin);
//		
//		int zahour = (deliveryMin-10 <0)? deliveryHour-1 : deliveryHour;
//		int zamin = (deliveryMin-10 <0) ? (60+deliveryMin-10): deliveryMin-10;
//
//		int chhour = (deliveryMin-18 <0)? deliveryHour-1 : deliveryHour;
//		int chminute = (deliveryMin-18 <0) ? (60+deliveryMin-18): deliveryMin-18;
//		
//		int pihour = (deliveryMin-25 <0)? deliveryHour-1 : deliveryHour;
//		int pimin = (deliveryMin-25 <0) ? (60+deliveryMin-25): deliveryMin-25;
//		
//		System.out.printf("짜장면 : %d시 %d분\n", zahour, zamin);
//		System.out.printf("치킨 : %d시 %d분\n", chhour, chminute);
//		System.out.printf("피자 : %d시 %d분\n", pihour, pimin);
//		
	}//main

}
