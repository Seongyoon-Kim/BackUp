package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("첫번째 숫자: ");
		
		int n1 = Integer.parseInt(reader.readLine());
		
		System.out.print("두번째 숫자: ");
		
		int n2 = Integer.parseInt(reader.readLine());
		
		int result = add(n1, n2);
		
		System.out.printf("%d + %d = %d\n", n1, n2, result);
	
		int result2 = add(n1, n1);
		
		System.out.printf("%d + %d = %d\n\n", n1, n1, result2);
		
		int result3 = subtract(n1, n2);
		
		System.out.printf("%d - %d = %d\n\n", n1, n2, result3);
		
		int result4 = multiply(n1, n2);
		
		System.out.printf("%d * %d = %d\n", n1, n2, result4);
		
		int result5 = multiply(n1, n1);
		
		System.out.printf("%d * %d = %d\n\n", n1, n1, result5);
		
		double result6 = divide(n1, n2);
		
		System.out.printf("%.0f / %.0f = %.1f\n\n", (double)n1, (double)n2, result6);
		
		int result7 = mod(n1, n2);
		
		System.out.printf("%d %% %d = %d", n1, n2, result7);
		
		
	} // main
	
	public static int add(int n1, int n2) {
		
		return n1 + n2;
		
		
	}
	
	public static int subtract(int n1, int n2) {
		
		return n1 - n2;
		
	}
	
	public static int multiply(int n1, int n2) {
		
		return n1 * n2;
		
	}
	
	public static double divide(int n1, int n2) {
		
		return (double) n1 / n2;
		
	}
	
	public static int mod(int n1, int n2) {
		
		return n1 % n2;
		
	}

}
