package com.test.question.q15;

public class Q004 {
	
	public static void main(String[] args) {
		
		int[] num = new int[20];
		int i = 0;
		
		System.out.print("원본: ");
		
		for (i=0; i<=num.length-1; i++) {
			
			num[i] = (int)(Math.random() * 20 + 1);
			System.out.printf("%d, ", num[i]);
			
		}
		System.out.println("\b\b");
		
		int min = num[0];
		int max = num[0];
		
		for (i=1; i<=num.length-1; i++) {
			
			if (num[i] > max) {
				max = num[i];
			} else if (num[i] < min) {
				min = num[i];
			}
			
		}
		
		System.out.printf("최대값: %d\n", max);
		System.out.printf("최소값: %d\n", min);
	}//main

}
