package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class Q002 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		// 2번 문제 풀이
		
		System.out.println("첫번째 숫자: ");
		
		double num1 = Double.parseDouble(reader.readLine());
		
		double first = num1;
		
		System.out.println("두번째 숫자: ");
		
		double num2 = Double.parseDouble(reader.readLine());
		
		double second = num2;
		
		System.out.printf("%,.0f + %,.0f = %,.0f\n", first, second, first + second);
		System.out.printf("%,.0f - %,.0f = %,.0f\n", first, second, first - second);
		System.out.printf("%,.0f * %,.0f = %,.0f\n", first, second, first * second);
		System.out.printf("%,.0f / %,.0f = %.1f\n", first, second, first / second);
		System.out.printf("%,.0f %% %,.0f = %,.0f\n", first, second, first % second);
		
		
		
		
		
		
		
		
		
		
	}

}
