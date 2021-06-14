package com.test.question.q16;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("국어 점수: ");
		int kor = Integer.parseInt(reader.readLine());
		
		System.out.print("영어 점수: ");
		int eng = Integer.parseInt(reader.readLine());
		
		System.out.print("수학 점수: ");
		int math = Integer.parseInt(reader.readLine());
		
		String[][] score = new String[10][3];
		
		for (int i=0; i<score.length; i++) {
			if (kor / 10 > i) {
				score[i][0] = "■";
			} else {
				score[i][0] = " ";
			}
			
			if (eng / 10 > i) {
				score[i][1] = "■";
			} else {
				score[i][1] = " ";
			}
			
			if (math / 10 > i) {
				score[i][2] = "■";
			} else {
				score[i][2] = " ";
			}
		}
		
		
		
		
		
		output(score);
		
	}//main
	
	public static void output(String[][] score) {
		
		for (int i=9; i>=0; i--) {
			for (int j=0; j<score[0].length; j++) {
				System.out.print(score[i][j] + "\t");
			}
			System.out.println();
		}
		System.out.println("------------------");
		System.out.println("국어\t영어\t수학");
	}
	

}
