package com.test.question.q16.t1;

public class Q006 {
	
	public static void main(String[] args) {
		
		int[][] num = new int[5][5];
		int n = 1;
		
		for (int i=0; i<4; i++) {
			for (int j=0; j<4; j++) {
				
				num[i][j] = n;
				num[i][4] += n;
				num[4][j] += n;
				num[4][4] += n;
				n++;
			}
		}
		
		output(num);
		
	}

	private static void output(int[][] num) {
		
		for (int i=0; i<5; i++) {
			for (int j=0; j<5; j++) {
				System.out.printf("%3d", num[i][j]);
			}
			System.out.println();
		}
		System.out.println();
		System.out.println();
		
	}
}
