package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("사용자가 페달을 밟은 횟수: ");
		
		int first = Integer.parseInt(reader.readLine());
		
		int num = first;
		
		double diameter = 0.6604;
		
		double pi = 3.14;
		
		double perimeter = diameter * pi;
		
		double distance = num * perimeter;
		
		System.out.printf("사용자가 총 %,d회 페달을 밟아 자전거가 총 %,.0fm를 달렸습니다.", num, distance);
		
		
		
		
	}

}
