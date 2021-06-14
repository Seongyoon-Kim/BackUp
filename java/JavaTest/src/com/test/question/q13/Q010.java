package com.test.question.q13;

public class Q010 {
	
	public static void main(String[] args) {
		
		int sum = 0;
		
		for (int i=1; i<100; i++) {
			sum += fibo(i);
			System.out.printf("%d + ", fibo(i));
			
			if (fibo(i) >= 89) {
				break;
			}
		}
		System.out.println("\b\b\b = " + sum);
		
	}//main
	
	public static int fibo(int n) {
		if (n <= 1) {
			return n;
		} else {
			return fibo(n-2) + fibo(n-1);
		}
	}//fibo

}
