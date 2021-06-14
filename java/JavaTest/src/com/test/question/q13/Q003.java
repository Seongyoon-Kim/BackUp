package com.test.question.q13;

public class Q003 {
	
	public static void main(String[] args) {
		
		for (int i=0; i<5; i++) {
			
			for (int j=0; j<(4-i); j++) {
				System.out.print(" ");
			}
			
			
			for (int j=0; j<=2*i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
	}

}
