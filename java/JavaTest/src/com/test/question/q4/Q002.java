package com.test.question.q4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {
	
	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이름: ");
		
		String name1 = reader.readLine();
		
		String name = getName(name1);
		//String name = getName(reader.readLine());
		
		System.out.printf("고객 : %s\n", name);
		
	} // main

	public static String getName(String name) {
		
		return name + "님";
		
	}
	
}
