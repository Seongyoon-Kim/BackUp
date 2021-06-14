package com.test.java;

public class Task2 {
	
	public static void main(String[] args) {
		
		String name1 = "홍길동";
		int kor1 = 80;
		int eng1= 90;
		int math1 = 95;
		int ave1 = (kor1 + eng1 + math1) / 3;
		
		String name2 = "아무개";
		int kor2 = 76;
		int eng2 = 86;
		int math2 = 79;
		int ave2 = (kor2 + eng2 + math2) / 3;
		
		String name3 = "하하하";
		int kor3 = 89;
		int eng3 = 92;
		int math3 = 85;
		int ave3 = (kor3 + eng3 + math3) / 3;
		
		
		System.out.println("[학생]\t[국어]\t[영어]\t[수학]\t[평균]");
		System.out.println("-------------------------------------");
		System.out.printf(name1 + "\t%5d" + "\t%5d" + "\t%5d" + "\t%5d\n", kor1, eng1, math1, 		ave1);
		System.out.printf(name2 + "\t%5d" + "\t%5d" + "\t%5d" + "\t%5d\n", kor2, eng2, math2, 		ave2);
		System.out.printf(name3 + "\t%5d" + "\t%5d" + "\t%5d" + "\t%5d\n", kor3, eng3, math3, 		ave3);
		
		
		
		
		
		
	}

}
