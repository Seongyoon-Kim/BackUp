package com.test.question.q13;

public class Q006 {
	
	public static void main(String[] args) {
		
		for (int dan=2; dan<=2; dan++) {
			for (int i=1; i<=9; i++) {
				System.out.printf("%d x %d = %d ", dan, i, dan * i);
				System.out.printf("%d x %d = %d ", dan+1, i, (dan+1)*i);
				System.out.printf("%d x %d = %d ", dan+2, i, (dan+2)*i);
				System.out.printf("%d x %d = %d \n", dan+3, i, (dan+3)*i);
			}
		}
		System.out.println();
		
		for (int dan=6; dan<=6; dan++) {
			for (int i=1; i<=9; i++) {
				System.out.printf("%d x %d = %d ", dan, i, dan * i);
				System.out.printf("%d x %d = %d ", dan+1, i, (dan+1)*i);
				System.out.printf("%d x %d = %d ", dan+2, i, (dan+2)*i);
				System.out.printf("%d x %d = %d \n", dan+3, i, (dan+3)*i);
			}
		}
		
	}

}
