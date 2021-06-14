package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q008 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("맑은 날: ");
		int sunnyDay = Integer.parseInt(reader.readLine());
		
		System.out.print("흐린 날: ");
		int cloudDay = Integer.parseInt(reader.readLine());
		
		int result = getApple(sunnyDay, cloudDay);
		
		System.out.printf("사과가 총 %d개 열렸습니다.", result);
		
	}//main
	
	
	public static int getApple(int sunnyDay, int cloudDay) {
		
		int height = sunnyDay * 5 + cloudDay * 2;
		
		//int apple = height / 10 - 9;
		int apple = (height >= 100) ? (height - 100)/10 : 0 ;
		
		return apple;
		
	}
	
	
	
	

}
