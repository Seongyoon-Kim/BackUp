package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("숫자 입력: ");
		
		int num1 = Integer.parseInt(reader.readLine());
		
		System.out.print("숫자 입력: ");
		
		int num2 = Integer.parseInt(reader.readLine());
		
		System.out.print("숫자 입력: ");
		
		int num3 = Integer.parseInt(reader.readLine());
		
		System.out.print("숫자 입력: ");
		
		int num4 = Integer.parseInt(reader.readLine());
		
		System.out.print("숫자 입력: ");
		
		int num5 = Integer.parseInt(reader.readLine());
		
		int evenNumber = 0;
		
		int oddNumber = 0;
		
		if (num1 % 2 == 0) {
			evenNumber++;
		} else {
			oddNumber++;
		}
		
		if (num2 % 2 == 0) {
			evenNumber++;
		} else oddNumber++;
		
		if (num3 % 2 == 0) {
			evenNumber++;
		} else {
			oddNumber++;
		}
		
		if (num4 % 2 == 0) {
			evenNumber++;
		} else {
			oddNumber++;
		}
		
		if (num5 % 2 == 0) {
			evenNumber++;
		} else {
			oddNumber++;
		}
		
		System.out.printf("짝수는 %d개, 홀수는 %d개 입력했습니다.\n", evenNumber, oddNumber);
		System.out.printf("홀수가 짝수보다 %d개 더 많습니다.", oddNumber - evenNumber);
		
	}
	
	
	
	
	
	

}
