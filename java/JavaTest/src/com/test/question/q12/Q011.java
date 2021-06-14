package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q011 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("최대 숫자: ");
		int num = Integer.parseInt(reader.readLine());
		
		if (num < 1000) {
			
			for (int i=1; i<=num; i++) {
				
				if (i % 10 == 3 || i % 10 == 6 || i % 10 == 9) {
					
					System.out.print("짝 ");
					
				} else {
					
					System.out.printf("%d ", i);
					
				}
				
			}
			
		} else {
			
			System.out.println("최대 숫자를 넘었습니다.");
			
		}
		
	}

}
