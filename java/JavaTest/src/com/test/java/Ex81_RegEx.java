package com.test.java;

public class Ex81_RegEx {
	
	public static void main(String[] args) {
		
		//Ex81_RegEx.java
		
		m1();
		
	}//main

	private static void m1() {
		
		//자바 + 정규식
		// - 자바의 일부 메소드가 정규식을 지원
		
		String txt = "안녕하세요. 홍길동입니다. 제 전화번호는 010-4928-5529입니다. 그리고 집 전화는 02-987-6543입니다. 연락주세요.";
		
		//게시판 정책 -> 연락처 작성 금지 -> 마스킹 처리
		//System.out.println(txt.replace("010-1234-5678", "XXX-XXXX-XXXX"));
		
		//Charsequence -> String 클래스의 부모 인터페이스
		
		System.out.println(txt.replaceAll("010-[0-9]{4}-[0-9]{4}", "XXX-XXXX-XXXX"));
		
	}

}//Ex81_RegEx
