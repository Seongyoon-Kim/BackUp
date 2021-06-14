package com.test.question.q14.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {
	
	public static void main(String[] args) throws IOException {
		
		//숫자를 입력받아 각 자릿수의 수의 합을 구하시오.
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.err.print("숫자: ");
		String number = reader.readLine();
		
		int sum = 0;
		
		System.out.print("결과: ");
		
		for (int i=0; i<number.length(); i++) {
			char c = number.charAt(i);
			sum += (c - 48);
			System.out.printf("%c + ", c);
		}
		
		System.out.printf("= %d\n", sum);
		
		
		
		
	}

}
