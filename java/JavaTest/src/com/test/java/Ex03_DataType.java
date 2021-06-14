package com.test.java;

public class Ex03_DataType { // 파스칼 + 스네이크 표기법
	
	public static void main(String[] args) {
		
		/*
		
		자료형, Data Type P55 ~ P85
		
		- 데이터의 형태, 길이(범위) 등을 미리 정의하고 분류한 규칙(약속)
		
		"숫자"
		100
		200
		300
		
		"정수"
		100
		
		"실수"
		12.3
		
		"문자"
		홍길동
		아무개
		하하하
		
		
		자바 언어의 자료형 p20 ~ p41, p55 ~ p73
		1. 원시형(Primitive Type), 값형(Value Type)
			a. 숫자형(양수 + 음수)
				1. 정수형(-2^n-1 ~ 2^n-1-1)
					- byte : 1byte(8bit)
					- short : 2byte(16bit)
					- int : 4byte(32bit)
					- long : 8byte(64bit)
					
				2. 실수형(부동 소수점)
					- 범위 : -무한대 ~ +무한대
					- float : 4byte(32bit) -> 단정도형(정도 : 정밀도, 정확도)
					- double : 8byte(64bit) -> 배정도형(단정도형보다 정밀도가 배나 높음)
				
			b. 문자형
				- char : 2byte(16bit)
				- 다른 언어(옛날 언어) : char(1byte)
				- 1byte -> 2byte(Unicode)
			
			c. 논리형
				- boolean : 1byte(8bit)
				- 명제(참,거짓) -> true, false
		
		2. 참조형(Reference Type)
		- 나중에 수업 (2~3주차)
		
		
		성적 처리 프로그램
		- 데이터 : 학생 성적 -> 메모리 등록
		
		1. 내가 취급하려는 데이터를 선택
		- 국어 점수
		
		2. 데이터의 형태와 길이를 선택
		- 국어 점수 : 형태(숫자) + 길이(0~100)
		
		3. 자바의 자료형을 선택
		- byte 선택(-128 ~ 127)
		
		4. 메모리에 3번의 자료형에 해당하는 공간을 얻어오기
		- 변수
		
		5. 얻은 공간에 데이터 입출력하기
		
		*/
		
		// 변수 생성 (변수 선언)	
		byte kor; // 문장(Statement) - 명령어, ;(=문장 종결자)
		
		// 변수값 대입하기, 할당하기
		// 변수 초기화하기
		kor = 100; // 대입 연산자, 우항의 데이터를 좌항의 공간에 넣어라.
		
		
		// 변수값 호출하기 -> 뭘할지? -> 화면 출력
		System.out.println(kor);
		System.out.println(10);
		
		
		
		/* 변수, Variable
		
		- 메모리에 할당 받은 공간(공간의 이름)
		
		1. 변수 선언하기
		byte eng;
		
		2. 변수 초기화
		eng = 90;
		
		3. 변수 사용하기
		System.out.println(eng);
		
		4. 변수 치환하기
		eng = 80;
		
		System.out.println(eng);
		
		
		// const int num; // 상수
		// final int num; // 상수
		
		
		System.out.println(100); // 100 -> 상수(변하지 않는 수) = 데이터 = 리터럴(Literal)
		
		
		*/
		
		
		// 변수 선언하기
		byte n1; // 선언
		n1 = 100; // 초기화
		
		byte n2 = 120; // 선언과 동시에 초기화
		
		byte n3;
		byte n4;
		
		byte n5, n6;
		byte n7, n8, n9, n10;
		
		byte n11 = 10, n12 = 20, n13 = 30;
		
		byte n14, n15 = 40, n16;
		
		
		// 너비, 높이, 거리를 저장하는 변수
		// byte width = 100, height = 50, distance = 70;
		
		//byte width = 100;		// 너비
		//byte height = 50;		// 높이
		//byte distance = 70;	// 거리
		
		byte width = 100,	// 너비
			 height = 50,	// 높이
			 distance = 70;	// 거리
		
		
		
		byte a = 10;
		byte b;
		
		b = a;
		
		System.out.println(b);
		
		a = 5;
		
		System.out.println(b);
		
		
		
		// 자바는 대소문자를 구분한다.
		// 수학 점수(2^4 = 16가지)
		byte math;
		byte Math;
		
		
		// 자바는 변수가 초기화되지 않은 상태에서 사용이 불가능하다.
		// The local variable size may not have been initialized
		byte size;
		//size = 20;
		//System.out.println(size);
		
		
		
		// 변수명 명명법
		// 1. 영문자 + 숫자 + '_' + $ 조합
		// 2. 숫자로 시작 하면 안된다.
		// 3. 예약어 사용 불가
		// 4. 의미있게(***********)
		
		//Syntax error on token "123", delete this token
		//byte 123num;
		byte _123num;
		
		//byte byte; // 컴파일러가 혼동이 될 수 있으므로...
		
		
		//왜 이런 짓을 계속 할까? -> 편하니까.. 타이핑하기 귀찮아서..
		//byte a = 100;	// 국어점수
		//byte b = 90;	// 영어점수
		//byte c = 70;	// 수학점수
		
		
		//byte kor = 100;
		//byte eng = 90;
		//byte math = 80;
		
		byte koreaScore = 100;
		
		// Ctrl + Space
		// 자동 완성 기능
		// 이클립스(Code Assist)
		// Visual Studio(인텔리센스)
		// 1. 오타 줄어듬
		// 2. 구문 제공 (암기 줄어듬)
		// 3. 타이핑 속도 향상
		// 4. 생산성 향상 -> 돈(Money)
		System.out.println(koreaScore);
		
		
		// 식별자 명명법 패턴
		// 많은 사람 + 오랜 시간 -> 이름 짓기 -> 경험 -> 패턴
		
		// 1. 헝가리언 표기법
		// 2. 파스칼 표기법
		// 3. 캐멀 표기법
		// 4. 스네이크 표기법
		// 5. 케밥 표기법
		
		
		// 헝가리언 표기법
		// - 식별자를 만들 때 식별자의 접두어로 해당 자료형을 표시하는 방법
		// 사용) 인터페이스명
		//		- interface IHello {}
		byte num;
		byte bnum;
		byte b_num;
		byte byte_num;
		
		
		// 파스칼 표기법
		// - 식별자를 만들 때 식별자의 첫 문자를 항상 대문자로 표기 + 나머지 문자는 소문자로 표기
		// - 식별자가 2개 이상의 단어로 조합되면 각 단어의 첫 문자는 항상 대문자로 표기 + 나머지 문자는 소문자로 표기
		// 사용) 클래스명 
		
		// 수학 점수 -> math + score
		byte mathscore;		// XXX
		byte math_score;	// 스네이크 표기법
		byte mathScore; 	// 캐멀 표기법
		byte MathScore;		// 파스칼 표기법
		
		
		// 캐멀 표기법
		// - 식별자를 만들 때 식별자의 첫 문자를 항상 대문자로 표기 + 나머지 문자는 소문자로 표기
		// - 식별자가 2개 이상의 단어로 조합되면 각 단어의 첫 문자는 항상 대문자로 표기 + 나머지 문자는 소문자로 표기
		// - 첫 단어의 첫 문자는 소문자로 시작한다.(***)
		// 사용) 메소드명, 변수명
		
		// 영어점수 -> english + score
		byte englishScore;
		
		
		// 스네이크 표기법
		// - 식별자를 만들 때 각 단어의 연결을 _를 사용해서 표기
		// - 가독성 높음
		byte english_score;
		
		
		// 케밥 표기법
		// - 식별자를 만들 때 각 단어의 연결을 -를 사용해서 표기
		// - 가독성 높음
		// byte english-score;
		
		
	}
	

}
