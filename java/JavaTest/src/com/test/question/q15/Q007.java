package com.test.question.q15;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q007 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("삽입 위치: ");
		int insert = Integer.parseInt(reader.readLine());
		System.out.print("값: ");
		int number = Integer.parseInt(reader.readLine());
		
		int[] list = new int[10];
		
		System.out.print("[");
		
		input(list, insert, number);
		
		output(list);
		
		System.out.print("]");
		
	}//main
	
	public static void input (int[] list, int index, int n) {
		
		for (int i=list.length-2; i>=index; i--) {
			
			list[i+1] = list[i];
			
		}
		
		list[index] = n;
		
	}
	
	
	
	
	public static void output(int[] list) {
		
		for (int i=0; i<list.length; i++) {
			
			list[i] = (int)(Math.random() * 9 + 1);
			
			System.out.printf("%d, ", list[i]);
			
		}
		
	}

}
