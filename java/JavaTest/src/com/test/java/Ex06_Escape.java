package com.test.java;

public class Ex06_Escape {
	
	public static void main(String[] args) {
		
		// 특수문자 > Escape Sequence
		// - 컴파일러와 미리 약속된 문자 > 소스에는 특정한 문자를 작성했지만, 실행 시 특정 행동을 하는 문자
		// - 자료형 : char
		
		// 1. \n
		// - new line
		// - 개행 문자 > 엔터
		// - 실행 중 \n 문자를 만나면 즉시 엔터를 쳐라(개행을 해라)
		
		char c1 = '\n';
		
		String str = "안녕하세요.\n홍길동입니다.";
		
		System.out.println(str);
		System.out.println();
		
		String str1 = "안녕하세요.";
		String str2 = "홍길동입니다.";
		System.out.println(str1);
		System.out.println(str2);
		System.out.println();
		
		//문자열 리터럴 내에는 엔터를 입력할 수 없다. -> 문자열 리터럴은 단일 라인이어야 한다.
		//String str3 = "안녕하세요."
		//		   홍길동입니다.";
		
		
		// 2. \r
		// - carriage return
		// - 커서(캐럿)의 위치를 현재 라인의 첫번째 열로 이동해라(Home 키 누르는 것과 비슷)
		
		str = "반갑습니다.\r홍길동";
		System.out.println(str); // 홍길동니다.
		System.out.println();
		//> java.exe -jar ex06.jar
		
		
		// 일반적으로 행을 바꿀 때 -> 엔터키를 누른다.
		// -> 엔터(\r + \n) -> \r\n
		// 운영체제(\r\n, \r, \n)
		// 1. 윈도우 : CRLF (\r\n)
		// 2. 유닉스(리눅스) : LF (\n)
		// 3. 맥 : CR (\r)
		
		
		// 3. \t
		// - 탭문자
		// - 탭이 뭡니까?
		// - 탭은 행동이 아니다.
		// - 가장 가까운 탭의 위치로 이동해라
		str1 = "이름: \t홍길동";
		str2 = "나이: \t20세";
		String str3 = "핸드폰: \t010-4928-5529";
		
		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
		System.out.println();
		
		// 4. \b
		// - Backspace
		str = "홍길동\b입니다.";
		System.out.println(str); // 홍길입니다.
		System.out.println();
		
		// 5. \", \', \\
		
		
		// 요구사항: 화면 -> 홍길동 왈: "안녕하세요"
		str = "홍길동 왈: \"안녕하세요\"";
		System.out.println(str);
		System.out.println();
		
		// 요구사항: 현재 수업 폴더의 경로를 출력하시오.
		// D:\class\java
		
		str = "D:\\class\\java";
		System.out.println(str);
		
		
	}

}
