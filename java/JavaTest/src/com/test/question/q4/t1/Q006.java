package com.test.question.q4.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader (new InputStreamReader(System.in));
		System.out.print("국어 :");
		int Kor = Integer.parseInt(reader.readLine());
		
		System.out.print("영어 :");
		int Eng = Integer.parseInt(reader.readLine());
		
		System.out.print("수학 :");
		int Math = Integer.parseInt(reader.readLine());
		
		
		int average = (Math + Eng + Kor)/3;
				
		String result = test(average, Kor, Eng, Math) ;
		
		System.out.printf("%s입니다.", result);
		//System.out.printf("%s입니다.", test(average, Kor, Eng, Math));


	}//main
	
		public static String test (int a,int b,int c,int d) {
			return ((a >= 60) && ((b> 40) && (c>40) && (d>40))) ? "합격" : "불합격";
			
			// String result = ((kor + eng + math) / 3 >= 60) && (kor > 40 && eng > 40 && math > 40)? "합격" : "불합격";
			
		}

}
