package com.test.question.q12.t1;

public class Q007 {

	public static void main(String[] args) {
		
		//아래와 같이 출력하시오.
		//1 + 2 + 3 + 4 + 5 + ... + XX = 10XX
		
		int sum = 0;
		
		for (int i=1; true; i++) {
			System.out.printf("%d + ", i);
			sum += i;
			if (sum >= 1000) {
				break;
			}
		}
		
		System.out.printf("\b\b\b = %d\n", sum);
		
	}
	
}
