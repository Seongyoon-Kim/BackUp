package com.test.question.q12;

public class Q017 {
	
	public static void main(String[] args) {

		int count = 0;
		
		for (int i=2; i<100; i++) {
			
			count = 0;
			
			for (int j=2; j<i; j++) {
				
				if (i % j == 0) {
					
					count++;
					
				}
				
			}
			
			if (count == 0) {
				
				System.out.printf("%d, ", i);
				
			}
			
		}
		
		System.out.println("\b\b");
		
	}//main

}
