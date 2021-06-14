package com.test.question.q12.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q009 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		//컴퓨터가 1~10 사이의 숫자 1개를 생각하면 사용자가 맞추는 프로그램을 구현하시오.
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		int com = (int)(Math.random() * 10) + 1;
		
		System.out.println("컴퓨터가 1~10 사이의 숫자를 1개 생각했습니다.");
		
		int count = 0;
		int user = 0;
		
		for (count=1; true; count++) {
		
			System.out.print("숫자: ");
			user = Integer.parseInt(reader.readLine());
			
			if (com == user) {
				break;
			}
			
			System.out.println("틀렸습니다.");
			
		}
		
		System.out.println("맞췄습니다.");
		
		System.out.printf("컴퓨터가 생각한 숫자는 %d입니다.\n", com);
		System.out.printf("정답을 맞추는데 시도한 횟수는 %d회입니다.\n", count);
		System.out.println("프로그램을 종료합니다.");

		
		
	}

}








