package com.test.question.q16.t1;

public class Q005 {
	
	public static void main(String[] args) {
		
		int[][] num = new int[5][5];
		int n = 1;
		
		for (int i=0; i<3; i++) {
			
			//0 -> 2
			//1 -> 1,2,3
			//2 -> 0,1,2,3,4
			for (int j=2-i; j<i+3; j++) {
				num[i][j] = n;
				n++;
			}
			
		}
		
		for (int i=3; i<5; i++) {
			
			//3 -> 1,2,3
			//4 -> 2
			for (int j=i-2; j<=(i-(i%3)*2); j++) {
				num[i][j] = n;
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
