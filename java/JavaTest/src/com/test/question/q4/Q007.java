package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("역의 개수: ");
		
		int num1 = Integer.parseInt(reader.readLine());
		
		System.out.print("환승역의 횟수: ");
		
		int num2 = Integer.parseInt(reader.readLine());
		
		int result = getTime(num1, num2);
		
		System.out.printf("평상 시 총 소요 시간은 %d분입니다.\n", result);
		
		int result2 = getTime2(num1, num2);
		
		System.out.printf("출근 시 총 소요 시간은 %d분입니다.\n", result2);
		
		int result3 = getTime3(num1, num2);
		
		System.out.printf("퇴근 시 총 소요 시간은 %d분입니다.\n", result3);
		
	}//main
	
	public static int getTime(int num1, int num2) {
		
		int temp = (num1 * 2) + (num2 * 3);
		
		return temp;
		
	}
	
	public static int getTime2(int num1, int num2) {
		
		int temp = (num1 * 2) + (num2 * 4);
		
		return temp;
		
	}
	
	public static int getTime3(int num1, int num2) {
		
		int temp = (num1 * 2) + (num2 * 5);
		
		return temp;
		
	}
	
	
	

}
