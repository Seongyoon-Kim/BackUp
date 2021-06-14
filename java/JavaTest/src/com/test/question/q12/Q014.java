package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q014 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		System.out.print("9자리 숫자 입력: ");
		int num = Integer.parseInt(reader.readLine());
		int evenSum = 0;
		int oddSum = 0;
		
		if (num < 1000000000) {
			
			for (int i=1; true; i++) {
				
				if (num == 0) {
					break;
				} else if (num % 2 == 0) {
					
					evenSum += 
					
				}
				
			}
			
		}
		
	}

}
