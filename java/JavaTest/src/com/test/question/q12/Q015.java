package com.test.question.q12;

public class Q015 {
	
	public static void main(String[] args) {
		
		int sum = 0;
		int n = 1;
		
		for (int i=1; true; i++) {
			
			System.out.printf("%d + ", n);
			
			sum += n;
			n += i;
			
			if (n > 92) {
				break;
			}
			
		}
		
		System.out.println("\b\b\b = " + sum);
		
	}

}
