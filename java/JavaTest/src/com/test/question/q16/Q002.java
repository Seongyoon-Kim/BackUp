package com.test.question.q16;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {
	
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
		
		for (i=num.length-1; i>=0; i--) {
			for (j=num[0].length-1; j>=0; j--) {
				num[i][j] = n;
				n++;
				
				
			}
		}
		
//		int[][] list = new int[row][column];
//	      
//	      int n=1;
//	      
//	      for(int i=list.length-1; i>=0; i--) {
//	         for(int j=list[0].length-1; j>=0; j--) {
//	            list[i][j]= n;
//	            n++;
//	         }
//	         
//	      }
//	      output(list);
		
		
		
		
		
//		int n = hang*row;
//		   
//		   for (int i=0; i<hang; i++) {
//		      for (int j=0; j<row; j++) {
//		         num[i][j] = n;
//		         n--;
//		      }
//		   }
//		   output(num, hang, row);
		
		
		
		output(num);
		
		
	}//main
	
	private static void output(int[][] num) throws NumberFormatException, IOException {
		
		for (int i=0; i<num.length; i++) {
			for (int j=0; j<num[0].length; j++) { // num[0]에서 대괄호 0을 꼭 입력해야한다.
				System.out.printf("%3d", num[i][j]);
			}
			System.out.println();
		}
		
	}//output

}
