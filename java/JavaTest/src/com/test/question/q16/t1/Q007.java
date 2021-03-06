package com.test.question.q16.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		String[][] score = new String[10][3];
		
		System.out.print("국어 점수: ");
		int kor = Integer.parseInt(reader.readLine());
		
		System.out.print("영어 점수: ");
		int eng = Integer.parseInt(reader.readLine());
		
		System.out.print("수학 점수: ");
		int math = Integer.parseInt(reader.readLine());
		
		
		for (int i=0; i<10; i++) {
			
			for (int j=0; j<3; j++) {
				score[i][j] = "";
			}
			
			if ((kor / 10) >= (10 - i)) {
				score[i][0] = "■";
			}
			if ((eng / 10) >= (10 - i)) {
				score[i][1] = "■";
			}
			if ((math / 10) >= (10 - i)) {
				score[i][2] = "■";
			}
		}
		
		output(score);
		
	}

	private static void output(String[][] score) {
		
		for (int i=0; i<10; i++) {
			for (int j=0; j<3; j++) {
				System.out.printf("%5s", score[i][j]);
			}
			System.out.println();
		}
		System.out.println("--------------------");
		System.out.println("   국어  영어  수학");
		System.out.println();
		System.out.println();
		
	}
}
