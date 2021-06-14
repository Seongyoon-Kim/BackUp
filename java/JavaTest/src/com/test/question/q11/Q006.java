package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
//		System.out.print("문자: ");
//		
//		int small1 = reader.read();
//		
//		int big1 = small1 - 32;
//		
//		System.out.printf("결과: %c\n", big1);
//		System.out.println();
//		
//		//위에 코드랑 아래 코드랑 왜 같이 실행이 안되지..?
//		//위 아래, 두 코드를 실행하려면 하나는 주석 처리하고 실행해야 함..
//		
//		System.out.print("문자: ");
//		
//		int big2 = reader.read();
//		
//		int small2 = big2 + 32;
//		
//		System.out.printf("결과: %c\n", small2);
		
		System.out.print("문자: ");
		
		int alphabet = reader.read();		
		
		if (alphabet >= 97 && alphabet <= 122) {
			System.out.printf("결과: %c\n", alphabet - 32);
		} else if (alphabet >= 65 && alphabet <= 90) {
			System.out.printf("결과: %c\n", alphabet + 32);
		} else {
			System.out.println("영문자가 아닙니다.");
		}
		
		
		
		
		
	}

}
