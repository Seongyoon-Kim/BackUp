package com.test.question.q16;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q003 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("행: ");
		int line1 = Integer.parseInt(reader.readLine());
		System.out.print("열: ");
		int line2 = Integer.parseInt(reader.readLine());
		
		int[][] num = new int[line1][line2];
		int n = 1;
		
		for (int i=0; i<num.length; i++) {
			for (int j=0; j<num.length; j++) {
				num[j][i] = n;
				n++;
			}
		}
		
		
		
		
		
		
		
		output(num);
		
	}//main
	
	private static void output(int[][] num) throws NumberFormatException, IOException {
		
		for (int i=0; i<num.length; i++) {
			for (int j=0; j<num[0].length; j++) {
				System.out.printf("%3d", num[i][j]);
			}
			System.out.println();
		}
		
	}//output

}
