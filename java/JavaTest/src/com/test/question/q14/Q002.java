package com.test.question.q14;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {

	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("이메일: ");
		String email = reader.readLine();
		
		int index = email.indexOf("@");
		
		String id = email.substring(0, index);
		String domain = email.substring(index + 1);
		
		System.out.printf("아이디: %s\n", id);
		System.out.printf("도메인: %s\n", domain);
		
	}
	
}
