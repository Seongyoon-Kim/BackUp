package com.test.java;

public class Ex07_DataType {
	
	public static void main(String[] args) {
		
		// 변수 2개 -> 두 변수의 + 과정을 출력
		// 10 + 20 = 30
		
		int a = 10;
		int b = 20;
		int c = a + b;
		
		//변수가 문자열 내에 있으면 변수가 아닌 그냥 단순한 문자열로 취급한다.
		System.out.println("a + b = 30");
		System.out.println(a + " + " + b + " = " + a + b);
		//"10 + 20 = 1020"
		
		System.out.println(a + " + " + b + " = " + (a + b));
		System.out.println();
		// 10 + 20 = 30
		
		// 1 + 2 + 3 + 4 + 5
		// 1 + 2
		// 3
		// 3 + 3
		// 6 + 4
		// 10 + 5
		// 15
		
		// + 연산자
		// - 값 + 값
		// - 숫자 + 숫자
		// - 문자열 + 문자열 : "사과" + "포도" = "사과포도" <- concat
		
		// - 숫자 + 문자열 : 1 + "사과" = "1사과"
		// - 문자열 + 숫자 : "포도" + 2 = "포도2"
		
		//----------------------------------------------------------
		
		
		// 숫자 형태의 데이터를 다룰 때 주의할 점
		// -> 100, "100"
		// - 숫자 형태의 데이터는
		// 1. 산술 연산의 대상인가?
		// 2. 산술 연산의 대상이 아닌가?
		
		// 주민등록번호 > 숫자 > 앞자리 : 940609-1157811
		
		int jumin = 940609;
		System.out.println("주민번호: " + jumin);
		
		//*** 주민등록번호를 숫자로 생각하기 때문
		//***** 주민등록번호는 숫자가 아니다.
		jumin = 030510;
		System.out.println("주민번호: " + jumin);
		System.out.println();
		
		String jumin2 = "950331";
		System.out.println(jumin2);
		
		jumin2 = "030510";
		System.out.println(jumin2);
		System.out.println();
		
		// 자바에서 숫자 상수 표기법(정수만 해당)
		// - 기수법 명시 가능
		// 1. 10진수
		// 2. 8진수
		// 3. 16진수
		// 4. 2진수
		
		int num = 10; // 소스(10) -> 10진수 표현
		System.out.println(num);
		
		num = 010; // 소스(0XX) -> 8진수 표현
		System.out.println(num);
		
		num = 0x10; // 소스(0xXX) -> 16진수 표현
		System.out.println(num);
		
		
		// 숫자 형태지만 숫자로 만들면 안되는 데이터
		// 1. 주민등록번호
		// 2. 전화번호
		// 3. 상품번호
		// ex) 001234324 -> "001234324"
		
	}

}
