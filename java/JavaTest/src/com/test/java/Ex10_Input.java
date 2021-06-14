package com.test.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

// import java.io.BufferedReader;		// 창고에서 도구를 가져와 사용하겠습니다. > 클래스 임포트
// import java.io.InputStreamReader;


// import java.io.*; // *(Wild Card - all)


//Ctrl + Shift + O (임포트 해야 할 구문을 한번에 임포트 해주는 단축키)


public class Ex10_Input {
	
	public static void main(String[] args) throws IOException {
		
		//Ex10_Input.java
		
		//BufferedReader 클래스
		
		//System.out.print("문자 입력: ");
		
		int a = 10;
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//reader: 키보드 입력을 받을 수 있는 도구
		
		
		//int data = reader.read();
		//System.out.println(data);
		
		
		//이클립스 주석 단축키
		// - 단일라인: Ctrl + /
		// - 다중라인: Ctrl + Shift + /
		//			 Ctrl + Shift + \
		
		
		
		//String data = reader.readLine(); // 입력한 라인 전체를 반환한다.(****)
		//System.out.println(data);
		
		
		
		//요구사항] 이름 입력 > 인사하시오.
//		System.out.println("이름 입력: ");
//		
//		String name = reader.readLine();
//		
//		System.out.printf("안녕하세요. %s님\n", name);
		
		
		//요구사항] 태어난 년도를 입력 받아 나이를 출력하시오.
//		System.out.println("출생년도: ");
		
//		String year = reader.readLine();
		
		
		// 2021 - year
		// 2021 - 1995
		// 2021 - "1995"
		
		// 문자열을 숫자로 변환해야한다.
		
		//"문자열" -> byte: Byte.parseByte("문자열")
		//"문자열" -> short: Short.parseShort("문자열")
		//"문자열" -> int: Integer.parseInt("문자열")
		//"문자열" -> long: Long.parseLong("문자열")
		//"문자열" -> float: Float.parseFloat("문자열")
		//"문자열" -> double: Double.parseDouble("문자열")
		//"문자열" -> boolean: Boolean.parseBoolean("문자열")
		//"문자열" -> char: X
		//"A" -> 'A' : "A".charAt(0)
		
//		int iyear = Integer.parseInt(year); // "1995" -> 1995
//		
//		int age = 2021 + 1 - iyear;
//		
//		System.out.printf("당신의 나이는 %d세입니다.\n", age);
		
		
		
		//요구사항] 숫자(정수)를 2개 입력 받아 > + 연산을 하시오. > 연산 과정과 결과를 모두 출력하세요.
		
		System.out.println("첫번째 숫자: ");
		
		String data1 = reader.readLine();
		
		int first = Integer.parseInt(data1);
		
		
		System.out.println("두번째 숫자: ");
		
		String data2 = reader.readLine();
		
		int second = Integer.parseInt(data2);
		
		System.out.printf("%d + %d = %d\n", first, second, first + second);
		
		
		
		//숫자 입력
		String data3 = reader.readLine();
		int num3 = Integer.parseInt(data3);
		
		//100
		int num4 = Integer.parseInt(reader.readLine());
		
	}

}
