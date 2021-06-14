package com.test.question.q13;

public class Q009 {
	
	public static void main(String[] args) {
		
		int sum = 0;
		int n = 1;
		
		for (int i=1; true; i++) {
			System.out.printf("%d + ", n);
			sum += n;
			n += i;
			
			if (n > 100) {
				break;
			}
		}
		System.out.println("\b\b\b = " + sum);
		
		
		// if문 없이 작성하는 방법입니다.
//		int add =0;
//	      int sum =0;
//	      
//	      for(int i=1; i<=100; i+=add) {
//	         System.out.printf("%d +", i);
//	         ++add;
//			 add++; // -> 이렇게 하면 결과가 달라질 수도 있다.
//	         sum += i;
//	      }
//	      System.out.println("\b\b\b =" + sum);
		
		
		
		
		// 이런 방법도 있습니다.
//		int sum=0;
//	      int add = 0;
//	      int i;
//	      
//	      for(i=0; ; i++) {
//	         
//	         if(i==0) {
//	            add++;
//	            System.out.printf("%d ", add + i);            
//	         }else {
//	            if(add + i >100) {
//	               System.out.printf("= %d", sum);
//	               break;               
//	            }
//	            System.out.printf("+ %d ", add + i);
//	         }
//	         add =add+i;
//	         sum += add;
//	      }
		
		
		
		
		
		
	}//main

}

//