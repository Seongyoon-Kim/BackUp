package com.test.question.q15;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q001 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int[] nums = new int[5];
		int number = 0;
		
		for (int i=nums.length-1; i>=0; i--) {
			
			System.out.print("숫자: ");
			number = Integer.parseInt(reader.readLine());
			
			nums[i] = number;
			
		}
		
		for (int i=0; i<nums.length; i++) {
			System.out.printf("nums[%d] = %d\n", i, nums[i]);
		}
		
		
	}//main

}
