package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class Q001 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		// 1번 문제 풀이
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("현재 년도: ");
		
		int nowYear = Integer.parseInt(reader.readLine());
		
		System.out.println("태어난 년도: ");
		
		int birthYear = Integer.parseInt(reader.readLine());
		
		int age = nowYear + 1 - birthYear;
		
		System.out.printf("한국 나이: %d세\n", age);
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
	}

}
