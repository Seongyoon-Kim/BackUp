package com.test.question.q12;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q006 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		
		System.out.print("시작 숫자: ");
		
		int start = Integer.parseInt(reader.readLine());
		
		System.out.print("종료 숫자: ");
		
		int end = Integer.parseInt(reader.readLine());
		
		int odd = 0;
		
		int even = 0;
		
		int sum = 0;
		
		
		for (int i = start; i <= end; i++) {
			
		if (i % 2 == 1) {
			
			sum += i;
			
			System.out.print(i);
			
			if (i == end) {
				break;
			}
			
			System.out.print(" - ");
			
		} else if (i % 2 == 0) {
			
			sum -= i;
			
			System.out.print(i);
			
			if (i == end) {
				break;
			}
			
			System.out.print(" + ");
			
		}
			
	} System.out.print(" = " + sum);
	
  }
}
	//1.
//	for(int i=start; i<=finish; i++) {
//        if (i % 2 == 1) {
//           
//           sum += i;
//           
//           System.out.printf("%d",i);
//           
//           if(i==finish) {
//              
//              break;
//              
//           }
//           
//           System.out.printf(" - ");
//           
//        } else {
//           
//           sum -= i;
//
//           System.out.printf("%d",i);
//           
//           if(i==finish) {
//              
//              break;
//           }
//           
//           System.out.printf(" + ");
//           
//        }//esle
//     
//     }//for
//
//     System.out.printf(" = " + sum);
	
	
//	//2.
//	  for(int i = startnum; i<= endnum; i++ ) {
//	         if (i ==1 ) {
//	            Oddsum += i;
//	         System.out.printf("%d",i);
//	         }else if (i%2==1) {
//	            Oddsum += i;
//	            System.out.printf("+%d",i);
//	            
//	         } else {
//	            Evensum -= i;
//	            System.out.printf("-%d",i);
//	            
//	         }
//	      }
//	      
//	      System.out.printf("=%d",Evensum+Oddsum);
//	      
//	   }//main
//	
	
	
	
	
	
	
	
	
	


