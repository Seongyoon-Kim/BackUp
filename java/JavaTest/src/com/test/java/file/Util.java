package com.test.java.file;

import java.util.Scanner;

public class Util {

	public String get(String label) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print(label + ": ");
		return scanner.nextLine();
		
	}
	
}
