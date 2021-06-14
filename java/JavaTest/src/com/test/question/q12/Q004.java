package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int odd = 0;
		
		int even = 0;
		
		System.out.print("숫자 개수: ");
		
		int count = Integer.parseInt(reader.readLine());
		
		for (int i = 1; i <= count; i++) {
			
			System.out.print("숫자: ");
			
			int num = Integer.parseInt(reader.readLine());
			
			if (num % 2 == 1) {
				
				odd += num;
				
			}
			
			if (num % 2 == 0) {
				
				even += num;
				
			}
			
		}
		
		System.out.printf("짝수의 합: %,d\n", even);
		System.out.printf("홀수의 합: %,d\n", odd);
		
	}

}
