package com.test.question.q4.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {

	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		System.out.print("숫자입력 : ");
		String zero = reader.readLine();
		int num = Integer.parseInt(zero);
		//int num = Integer.parseInt(reader.readLine());
		digit(num);
		

	}//main , Syntax error, insert "}" to complete ClassBody

	public static void digit(int num) {
		System.out.printf("%04d", num);
		//System.out.printf("%d -> %04d", num, num);
	}
	
	
	
	//Syntax error, insert "... VariableDeclaratorId" to complete FormalParameterList

	
}
	
