package com.test.question.q14;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("숫자: ");
		String num = reader.readLine();
		int sum = 0;
		
		System.out.print("결과: ");
		
		for (int i=0; i<num.length(); i++) {
			
			char c = num.charAt(i);
			//num1 = (int)num.charAt(i) - 48;
			sum += (c - 48);
			System.out.printf("%c + ", c);
			
		}//for
		
		System.out.printf("= %d\n", sum);
		
		
		// 다른 방법도 있다. (밑에 코드 참고)
//		System.out.print("숫자 : ");
//	      String str = reader.readLine();
//	      int cast = Integer.parseInt(str);
//	      int sum = 0;
//	      String out = "";
//
//	      for (int i = 0; i < str.length(); i++) {
//	         sum = sum + cast % 10;
//	         out = out + cast % 10 + " + ";
//	         cast = cast / 10;
//	      }
//	      out = out.substring(0, out.length() - 3);
//	      out = out + " = " + sum;
//	      System.out.println(out);
//	   }
//	}
		
		
		
		
		
	}//main

}
