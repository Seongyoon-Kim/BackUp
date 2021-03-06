package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("너비(cm): ");
		
		int first = Integer.parseInt(reader.readLine());
		
		int width = first;
		
		System.out.println("높이(cm): ");
		
		int second = Integer.parseInt(reader.readLine());
		
		int height = second;
		
		int area = width * height;
		
		int perimeter = (width * 2) + (height * 2);
		
		System.out.printf("사각형의 넓이는 %,dcm^2입니다.\n", area);
		
		System.out.printf("사각형의 둘레는 %,dcm입니다.", perimeter);
		
		
	}

}
