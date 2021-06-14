package com.test.question.q14.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws IOException {
		
		//주민 등록 번호 유효성 검사를 하시오.
		String jumin = "951220-1021547";
		jumin = jumin.replace("-", "");
		
		int result = 0;
		
		for (int i=0; i<jumin.length()-1; i++) {
			
			int n = Integer.parseInt(jumin.substring(i, i+1));
			result += n * ((i % 8) + 2);
			
		}
		
		result %= 11;
		result = 11 - result;
		result = result % 10;
		
		if (result == jumin.charAt(jumin.length()-1) - 48) {
			System.out.println("올바른 주민등록번호입니다.");
		} else {
			System.out.println("올바르지 않은 주민등록번호입니다.");
		}

		
	}

}
