package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {
	
	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("문자: ");
		
		char alphabet = (char) reader.read();
		//char alphabet = reader.readLine().charAt(0); // -> 이렇게 적으면 불편하니깐 그냥 reader.read()라인으로 합시다
		//char alphabet = (char) reader.readLine(); // -> 이렇게 적으면 안됨!!
		
		if (alphabet == 'f' || alphabet == 'F') {
			System.out.println("Father");
		} else if (alphabet == 'm' || alphabet == 'M') {
			System.out.println("Mother");
		} else if (alphabet == 's' || alphabet == 'S') {
			System.out.println("Sister");
		} else if (alphabet == 'b' || alphabet == 'B') {
			System.out.println("Brother");
		} else {
			System.out.println("올바른 문자를 입력하시오.");
		}
		
	}

}
