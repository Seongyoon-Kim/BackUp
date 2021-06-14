package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("시작 숫자: ");
		
		int start = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자: ");
		
		int end = Integer.parseInt(reader.readLine());
		
		int i = 0;
		
		for (i = start;; i++) {
			
			if (i == end + 1) {
				break;
			}
			
			System.out.println(i);
			
		}
		
	}

}
