package com.test.question.q3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.println("한달 수입 금앤(원): ");
		
		int first = Integer.parseInt(reader.readLine());
		
		int salary = first;
		
		double afterTax = salary - (salary * 0.033);
		
		double tax = salary * 0.033;
		
		System.out.printf("세후 금액(원): %,.0f원\n", afterTax);
		System.out.printf("세금(원): %,.0f원\n", tax);
		
		
		
		
		
		
	}

}
