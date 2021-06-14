package com.test.question.q14;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q001 {
	
	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("문장 입력: ");
		String txt = reader.readLine();
		String newTxt = "";
		
		for (int i = txt.length() - 1; i>=0; i--) {
			
			newTxt += txt.charAt(i);
			//newTxt += txt.substring(i, i+1); // 서브스트링으로 하는 방법.
			
		}//for
		
		System.out.printf("역순 결과: %s", newTxt);

	}//main

}
