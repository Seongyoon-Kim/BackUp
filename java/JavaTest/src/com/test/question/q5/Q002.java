package com.test.question.q5;

public class Q002 {
	
	public static void main(String[] args) {
		
		position("홍길동");
		
		position("홍길동", "유재석");
		
		position("홍길동", "유재석", "박명수");
		
		position("홍길동", "유재석", "박명수", "정형돈");
		
	}//main
	
	public static void position(String str1) {
		
		System.out.printf("사원: %s\n", str1);
		System.out.println();
		
	}
	
	public static void position(String str1, String str2) {
		
		System.out.printf("사원: %s\n", str1);
		System.out.printf("대리: %s\n", str2);
		System.out.println();
		
	}
	
	public static void position(String str1, String str2, String str3) {
		
		System.out.printf("사원: %s\n", str1);
		System.out.printf("대리: %s\n", str2);
		System.out.printf("과장: %s\n", str3);
		System.out.println();
		
	}
	
	public static void position(String str1, String str2, String str3, String str4) {
		
		System.out.printf("사원: %s\n", str1);
		System.out.printf("대리: %s\n", str2);
		System.out.printf("과장: %s\n", str3);
		System.out.printf("부장: %s\n", str4);
		System.out.println();
		
	}
	
	
	

}
