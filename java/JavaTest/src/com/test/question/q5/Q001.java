package com.test.question.q5;

public class Q001 {
	
	public static void main(String[] args) {
		
		sum(10);
		
		sum(10, 20);
		
		sum(10, 20, 30);
		
	}//main
	
	public static void sum(int num1) {
		
		int result1 = num1;
		
		System.out.printf("%d = %d\n", result1, result1);
		
	}
	
	public static void sum(int num1, int num2) {
		
		int result2 = num1 + num2;
		
		System.out.printf("%d + %d = %d\n", num1, num2, result2);
		
	}
	
	public static void sum(int num1, int num2, int num3) {
		
		int result3 = num1 + num2 + num3;
		
		System.out.printf("%d + %d + %d = %d\n", num1, num2, num3, result3);
		
	}
	
	
	
	
	

}
