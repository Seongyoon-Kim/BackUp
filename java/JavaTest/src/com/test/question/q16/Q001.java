package com.test.question.q16;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q001 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("행: ");
		int line1 = Integer.parseInt(reader.readLine());
		System.out.print("열: ");
		int line2 = Integer.parseInt(reader.readLine());
		
		int[][] num = new int[line1][line2];
		
		int n = 1;
		int i = 0;
		int j = 0;
		
		for (i=0; i<line1; i++) {
			if (i % 2 == 1) {
				for (j=line2-1; j>=0; j--) {
					num[i][j] = n;
					n++;
				}
			} else if (i % 2 == 0) {
				for (j=0; j<line2; j++) {
					num[i][j] = n;
					n++;
				}
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
