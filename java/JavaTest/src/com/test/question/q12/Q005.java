package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("시작 숫자: ");
		
		int start = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자: ");
		
		int end = Integer.parseInt(reader.readLine());
		
		int sum = 0;
		
		for (int i = start; i <= end; i++) {
			
			sum += i;
			
			System.out.print(i);
			
			if (i <= end - 1) { // ( i < end)로 넣어도 됨
				System.out.print(" + ");
			}
			
			if (i == end) {
				System.out.print(" = ");
				System.out.print(sum);
			}
		}
		
		// 1. break 사용하는 방법도 있다.
//		for(int i=start; i<=finish; i++) {
//	         
//	         System.out.printf("%d",i);
//	         
//	         sum += i;
//	         
//	         if(i==finish) {
//	            break;
//	         }else {
//	            System.out.printf(" + ");
//	         }
//	      }
//	      
//	      System.out.printf(" = " + sum);
		
		
		// 2. 이런 방법도 있다.
//		
//		int sum = 0;
//	      for(int i = start; i<= end; i++) {
//	         if(i == end) {
//	            System.out.printf("%d = %d ", i, sum + end);
//	            break;
//	         }
//	         sum += i;
//	         System.out.printf("%d + ", i);
//	      }//for문
		
		
		
	}

}
