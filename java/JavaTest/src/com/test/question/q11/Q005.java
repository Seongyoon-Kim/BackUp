package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("첫번째 숫자: ");
		int num1 = Integer.parseInt(reader.readLine());
		
		System.out.print("두번쨰 숫자: ");
		int num2 = Integer.parseInt(reader.readLine());
		
		System.out.print("연산자: ");
		char cal = (char) reader.read();
		
		if (cal == '+') {
			System.out.printf("%d %c %d = %d", num1, cal, num2, num1 + num2);
		} else if (cal == '-') {
			System.out.printf("%d %c %d = %d", num1, cal, num2, num1 - num2);
		} else if (cal == '*') {
			System.out.printf("%d %c %d = %d", num1, cal, num2, num1 * num2);
		} else if (cal == '%') {
			System.out.printf("%d %c %d = %d", num1, cal, num2, num1 % num2);
		} else if (cal == '/') { // else로 입력하면 안된다. 다른 문자를 입력할 수도 있기 때문에!
			System.out.printf("%d %c %d = %.1f", num1, cal, num2, (double) num1 / num2);
		} else {
			System.out.println("연산이 불가능합니다.");
		}
	}

}
