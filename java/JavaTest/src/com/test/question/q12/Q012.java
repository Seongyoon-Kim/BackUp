package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q012 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		String result = "결과: ";
		
		for (int i=1; i<10; i++) {
			
			System.out.print("숫자: ");
			int num = Integer.parseInt(reader.readLine());
			
			if (num < 10) {
				
				switch (num) {
				case 1:
					result += "일";
					break;
				case 2:
					result += "이";
					break;
				case 3:
					result += "삼";
					break;
				case 4:
					result += "사";
					break;
				case 5:
					result += "오";
					break;
				case 6:
					result += "육";
					break;
				case 7:
					result += "칠";
					break;
				case 8:
					result += "팔";
					break;
				case 9:
					result += "구";
					break;
				}
				
			} else {
				System.out.println("잘못된 값을 입력하셨습니다.");
				System.out.println("프로그램을 종료합니다.");
				break;
			}
			
		}
		
		System.out.println(result);
		
	}

}
