package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("종료 숫자를 입력하세요: ");
		
		int end = Integer.parseInt(reader.readLine());
		
		int sum = 0;
		
		for (int i=1; true; i++) {
			System.out.printf("%d + ", i);
			sum += i;
			if (sum >= 1000 || i == end) {
				break;
			}
		}
		System.out.printf(" = %d\n", sum);
	}

}
