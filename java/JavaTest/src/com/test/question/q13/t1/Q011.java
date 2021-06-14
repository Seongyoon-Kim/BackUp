package com.test.question.q13.t1;

public class Q011 {

	public static void main(String[] args) {

		// 2부터 100사이의 소수를 구하시오. 
		
		int count = 0;
		
		for (int i=2; i<=100; i++) {
			
			for (int j=2; j<i; j++) {
				if (i % j == 0) {
					count++;
				}
			}
			
			if (count == 0) {
				System.out.printf("%d, ", i);
			}
			
			count = 0;
			
		}
		
		System.out.println("\b\b");
		

	}

}
