package com.test.question.q5.t1;

public class Q001 {
	
	   public static void main(String[] args) {
		      sum(10);
		      
		      sum(10, 20);
		      
		      sum(10, 20, 30);
		      
		      sum(10, 20, 30, 40);
		      
		      sum(10, 20, 30, 40, 50);
		      
		   }//main
		
	   	  //메소드 오버로딩 조건O
	      //1. 인자의 갯수
	      //2. 인자의 타입
	      
	      //메소드 오버로딩 조건X
	      //1. 인자의 이름
	      //2. 반환값 타입
	   
	   
	   // 메소드 명이 같더라도 인자 개수가 다르다면 오버로딩을 할 수 있다.

		   private static void sum(int i) {
		      
		      int sum = i;
		      System.out.printf("%d = %d\n", i, sum);
		      
		   }
		   
		   private static void sum(int i, int j) {
		            
		      int sum = i + j;
		      System.out.printf("%d + %d = %d\n", i, j, sum);
		      
		   }   
		   
		   private static void sum(int i, int j, int k) {
		      
		      int sum = i + j + k;
		      System.out.printf("%d + %d + %d = %d\n", i, j, k, sum);
		      
		   }
		   
		   private static void sum(int i, int j, int k, int l) {
		      
		      int sum = i + j + k + l;
		      System.out.printf("%d + %d + %d + %d = %d\n", i, j, k, l, sum);
		      
		   }
		   
		   private static void sum(int i, int j, int k, int l, int m) {
		      
		      int sum = i + j + k + l + m;
		      System.out.printf("%d + %d + %d + %d + %d = %d\n", i, j, k, l, m, sum);
		      
		   }
}
