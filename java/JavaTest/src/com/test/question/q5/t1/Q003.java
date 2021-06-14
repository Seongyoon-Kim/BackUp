package com.test.question.q5.t1;

public class Q003 {
	public static void main(String[] args) {
		
		System.out.printf("양수 : %d개\n", positive(10));
		System.out.printf("양수 : %d개\n", positive(10, 20));
		System.out.printf("양수 : %d개\n", positive(10, 20, -30));
		System.out.printf("양수 : %d개\n", positive(10, 20, -30, 40));
		System.out.printf("양수 : %d개\n", positive(10, 20, -30, 40, 50));
		
		
	}//main
	
	//메소드 오버로딩 조건O
    //1. 인자의 갯수
    //2. 인자의 타입
    
    //메소드 오버로딩 조건X
    //1. 인자의 이름
    //2. 반환값 타입
 
	// 메소드 명이 같더라도 인자 개수가 다르다면 오버로딩을 할 수 있다.
	public static int positive(int a) {
		
		int num = 0; // 0은 양수가 아니기 때문에 포함시키면 안된다!!
		num = (a > 0) ? num + 1 : num;
		
		return num;
	}
	
	public static int positive(int a, int b) {
		
		int num = 0;
		num = (a > 0) ? num + 1 : num;
		
		num = (b > 0) ? num + 1 : num;
				
		return num;
	}
	
	public static int positive(int a, int b, int c) {
		
		int num = 0;
		num = (a > 0) ? num + 1 : num;
		
		num = (b > 0) ? num + 1 : num;
		
		num = (c > 0) ? num + 1 : num;
				
	
		return num;
	}
	
	public static int positive(int a, int b, int c, int d) {
		
		int num = 0;
		num = (a > 0) ? num + 1 : num;
		
		num = (b > 0) ? num + 1 : num;
		
		num = (c > 0) ? num + 1 : num;
		
		num = (d > 0) ? num + 1 : num;
					
		return num;
	}
	
	public static int positive(int a, int b, int c, int d, int e) {
		
		int num = 0;
		num = (a > 0) ? num + 1 : num;
		
		num = (b > 0) ? num + 1 : num;
		
		num = (c > 0) ? num + 1 : num;
		
		num = (d > 0) ? num + 1 : num;
		
		num = (e > 0) ? num + 1 : num;
				
		return num;
	}

}
