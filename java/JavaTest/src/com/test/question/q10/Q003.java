package com.test.question.q10;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q003 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("태어난 년도: ");
		
		int year = Integer.parseInt(reader.readLine());
		
		Calendar now = Calendar.getInstance();
		
		int koreaAge = now.get(Calendar.YEAR) - year + 1;
		int age = now.get(Calendar.YEAR) - year;
		
		System.out.printf("한국 나이: %d세\n", koreaAge);
		System.out.printf("만 나이: %d세\n", age);
		
	}//main


}












