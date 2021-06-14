package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("섭씨(C): ");
		
		int data = Integer.parseInt(reader.readLine());
//		double data = Double.parseDouble(reader.readLine());
		
		int celsius = data;
		
		double fahrenheit = (celsius * 1.8) + 32;
		
		System.out.printf("섭씨 %dC는 화씨 %.1fF입니다.\n", celsius, fahrenheit);
		
		
		
		
		
		
		
		
		
	}

}
