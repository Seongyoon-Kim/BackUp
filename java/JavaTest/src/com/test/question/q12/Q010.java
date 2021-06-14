package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q010 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int oddSum = 0;
		int evenSum = 0;
		
		for(int i=1; true; i++) {
			
			System.out.print("숫자: ");
			int num = Integer.parseInt(reader.readLine());
			
			if (num % 2 == 1) {
				oddSum -= num;
				System.out.printf("%d + \n", num);
			} else if (num % 2 == 0) {
				evenSum += num;
				System.out.printf("%d - \n", num);
			} else if (oddSum + evenSum >= 100) {
				break;
			}
		
		}
		System.out.println(" = " + (oddSum + evenSum));

	}

}