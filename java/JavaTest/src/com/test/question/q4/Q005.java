package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("숫자: ");
		
		int num1 = Integer.parseInt(reader.readLine());
		
		String result = getNumber(num1);
		
		System.out.printf("입력하신 숫자 '%d'는(은) '%s'입니다.\n", num1, result);
		
	}//main
	
	public static String getNumber(int num1) {
	
	String temp = (num1 % 2 == 1) ? "홀수" : "짝수";
	
	return temp;
	
	}

}
