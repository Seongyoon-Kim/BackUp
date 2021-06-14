package com.test.question.q15;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("시작 숫자: ");
		int start = Integer.parseInt(reader.readLine());
		System.out.print("종료 숫자: ");
		int end = Integer.parseInt(reader.readLine());
		System.out.print("숫자 개수: ");
		int count = Integer.parseInt(reader.readLine());
		
		
		int[] num = new int[count];
		int i;
		
		System.out.print("[");
		
		for (i=0; i<=num.length-1; i++) {
			
			num[i] = (int)(Math.random() * (end - start) + start);
			
			System.out.printf("%d, ", num[i]);
			
			
		}
		
		System.out.print("]");
		
		
	}//main

}
