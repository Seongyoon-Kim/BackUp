package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("국어: ");
		
		int num1 = Integer.parseInt(reader.readLine());
		
		System.out.print("영어: ");
		
		int num2 = Integer.parseInt(reader.readLine());
		
		System.out.print("수학: ");
		
		int num3 = Integer.parseInt(reader.readLine());
		
		String result = test(num1, num2, num3);
		
		System.out.printf("%s입니다.\n", result);
		
	}//main
	
	public static String test(int num1, int num2, int num3) {
		
		String temp = 60 <= (num1 + num2 + num3) / 3 && (num1 > 40 && num2 > 40 && num3 > 40) ? "합격" : "불합격";
		
		return temp;
		
	}

}
