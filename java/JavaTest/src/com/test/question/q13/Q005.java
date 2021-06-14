package com.test.question.q13;

public class Q005 {
	
	public static void main(String[] args) {
		
		int alphabet = 97;
		
		for (int i=0; i<5; i++) {
			for (int j=0; j<(4-i); j++) {
				System.out.print(" ");
			}
			
			for (int j=0; j<=2*i+1; j++) {
				System.out.printf("%c", alphabet);
			}
			alphabet++;
			System.out.println();
		}
		
	}

}
