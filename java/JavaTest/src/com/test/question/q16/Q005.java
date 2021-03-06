package com.test.question.q16;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		//다이아몬드형 배열 출력
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("행: ");
		int line1 = Integer.parseInt(reader.readLine());
		System.out.print("열: ");
		int line2 = Integer.parseInt(reader.readLine());
		int[][] num = new int[line1][line2];
		int n = 1;
		int i = 0;
		int j = 0;
		
		for (i=0; i<num.length/2+1; i++) {
			for (j=num.length/2-i; j<=i + num.length/2; j++) {
				num[i][j] = n;
				n++;
			}
			
		}
		
		for (i=num.length/2 + 1; i<num.length; i++) {
			for (j=i-num.length/2; j<=num.length + (num.length%3) - i; j++) {
				num[i][j] = n;
				n++;
			}
		}
		
		
		output(num);
		
	}//main
	
	private static void output(int[][] list) throws NumberFormatException, IOException {
		
		for (int i=0; i<list.length; i++) {
			for (int j=0; j<list[0].length; j++) {
				System.out.printf("%3d", list[i][j]);
			}
			System.out.println();
		}
	}
}