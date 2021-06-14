package com.test.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Identity;

public class Ex25_String {
	
	public static void main(String[] args) throws IOException {
		
		//Ex25_String.java
		
		//문자열, String
		// - 문자열 관련된 여러가지 기능을 자바가 제공
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		//m1();
		//m2(reader);
		//m3(reader);
		//m4(reader);
		//m5(reader);
		//m6(reader);
		//m7(reader);
		//m8(reader);
		//m9(reader);
		m10(reader);
		//m11(reader);
		//m12(reader);
		//m13(reader);
		//m14(reader);
		//m15(reader);
		
	}//main

	private static void m15(BufferedReader reader) {
		
		//문자열 치환(바꾸기)
		// - 문자열의 일부를 교체
		// - String replace(String old, String new)
		
		String txt = "안녕하세요. 홍길동님.";
		System.out.println(txt.replace("홍길동", "아무개"));
		
		
		String oldValue = "홍길동";
		String newValue = "아무개";
		
		//"안녕하세요. 홍길동님"
		//"안녕하세요. "
		//"홍길동" -> "아무개"
		//"님."
		
		int index = txt.indexOf(oldValue);
		
		if (index > -1) {
			
			String str1 = txt.substring(0, index); //"안녕하세요. "
			String str3 = txt.substring(index + oldValue.length()); //"님."
			
			System.out.println(str1 + newValue + str3);
			
		}//if
		
		txt = "안녕하세요. 홍길동님. 반갑습니다. 홍길동님. 잘가세요. 홍길동님";
		
		System.out.println(txt.replace("홍길동", "아무개"));
		
		System.out.println(txt.replace(" ", ""));//*****
		
		
		txt = "우리는 Java Class입니다.";
		String word = "JavaClass";
		
		if (txt.replace(" ", "")
				.toUpperCase()
				.indexOf(word.replace(" ", "")
						.toUpperCase()) > -1) {
			System.out.println("O");
		} else {
			System.out.println("X");
		}
		
		
	}//main15

	private static void m14(BufferedReader reader) {
		
		//문자열 추출
		// - char charAt(int index) : 1문자 추출
		// - String substring(int beginIndex, int endIndex)
		//		- beginIndex(inclusive), endIndex(exclusive)
		
		String txt = "가나다라마바사아자차카타파하";
		
		System.out.println(txt.substring(3, 8)); //라마바사아
		//System.out.println(txt.substring(3, 100));
		System.out.println(txt.substring(3)); //라마바사아자차카타파하
		System.out.println();
		
		
		String jumin = "950413-1234567";
		
		System.out.println(jumin.charAt(6) == '-');
		System.out.println(jumin.indexOf("-") == 6);
		System.out.println(jumin.substring(6, 7).equals("-"));
		System.out.println();
		
		//남자? 여자?
		System.out.println(jumin.substring(7, 8).equals("1") ? "남자" : "여자");
		
		//charAt() or substring()
		// -> 추출한 글자수에 따라서
		// 1글자 추출 -> charAt() or substring() -> 문자 코드값이 필요
		// N글자 추출 -> substring()
		
		
		//자주 사용하는 예제
		String path = "D:\\class\\java\\JavaTest\\src\\com\\test\\java\\Hello.java";
		
		//파일명?? Hello.java
		int index = path.lastIndexOf("\\");
		
		String fileName = path.substring(index + 1);
		System.out.println(fileName);
		
		//확장자 없는 파일명?? Hello
		index = fileName.lastIndexOf(".");
		String fileNameWithoutExt = fileName.substring(0, index);
		System.out.println(fileNameWithoutExt);
		
		//확장자?? .java
		String ext = fileName.substring(index);
		System.out.println(ext);
		
		
		
		
	}

	private static void m13(BufferedReader reader) {
		
		//검색
		// - int indexOf(String s)
		// - int lastIndexOf(String s)
		
		String txt = "안녕 홍길동. 잘가 홍길동";
		
		System.out.println(txt.indexOf("홍길동")); //1
		System.out.println(txt.lastIndexOf("홍길동")); //2
		System.out.println(txt.lastIndexOf("홍길동", 10));
		
	}//m13

	private static void m12(BufferedReader reader) {
		
		//패턴 검색
		// - boolean startsWith(String word)
		// - boolean endsWith(String word)
		
		String name = "홍길동";
		
		//이름이 '홍'씨? > boolean
		System.out.println(name.startsWith("홍"));
		System.out.println(name.startsWith("김"));
		
		System.out.println(name.charAt(0) == '홍');
		System.out.println(name.indexOf("홍") == 0);
		System.out.println();
		
		
		//이름이 '동'으로 끝나는가?
		System.out.println(name.endsWith("동"));
		System.out.println(name.charAt(name.length() - 1) == '동');
		System.out.println(name.indexOf("동") == name.length() - 1);
		System.out.println();
		
		
		String file = "cat.txt";
		
		//해당 파일이 이미지?
		if (file.endsWith(".jpg")) {
			System.out.println("이미지 파일입니다.");
		} else {
			System.out.println("이미지 파일이 아닙니다.");
		}
		
		
		
		
	}

	private static void m11(BufferedReader reader) {
		
		//대소문자 변경
		// - String toLowerCase()
		// - String toUppercase()
		
		String txt = "Hello World";
		
		System.out.println(txt);
		System.out.println(txt.toLowerCase());
		System.out.println(txt.toUpperCase());
		System.out.println();
		
		
		//검색
		//1. 정확도 높음
		//2. 검색률 높음
		String content = "우리가 배우는 과목은 Java입니다."; //DB
		String word = "java";
		
		//System.out.println(content.toUpperCase());
		//System.out.println(word.toUpperCase());
		
		//if (content.indexOf(word) > -1) {
		if (content.toUpperCase().indexOf(word.toUpperCase()) > -1) {
			System.out.println("검색 결과 있음");
		} else {
			System.out.println("검색 결과 없음");
		}
		
		
		//메소드 체인
		//content.toUpperCase().indexOf()
		//"abc".toUppercase().indexOf()
		//"ABC".indexOf()
		
		
	}//m11

	private static void m10(BufferedReader reader) {
		
		//문자열 검색(***)
		// - 문자열 내에서 원하는 문자(열)을 검색 > 위치 반환
		// - int indexOf(char c)
		// - int indexOf(String s)
		// - int indexOf(char c, int index)
		// - int indexOf(String s, int index)
		
		String txt = "안녕하홍길동세요. 님. 반갑홍길동습니다. 홍길동님.홍길동홍길동asdsad홍길동aosjaoijoijvojxvj홍길동";
		
		//indexOf는 무조건 처음 만나는 검색어의 위치만 반환한다.
		System.out.println(txt.indexOf("홍길동"));
		System.out.println(txt.indexOf("홍길동"));
		
		System.out.println(txt.indexOf("홍길동", 10));
		
		
		int index = txt.indexOf("홍길동");
		System.out.println(index); //7
		
		index = txt.indexOf("홍길동", index + "홍길동".length());
		System.out.println(index); //20
		
		index = txt.indexOf("홍길동", index + "홍길동".length());
		System.out.println(index); //-1
		System.out.println();
		
		
		// 최종본~!!!
		// - 검색어를 모두 찾기!!!
		
		index = 0;
		
		while (true) {
			
			index = txt.indexOf("홍길동", index);
			
			if (index == -1) {
				break;
			}
			
			System.out.printf("%d번째 발견\n", index);
			
			index += "홍길동".length();
			
		}
		
	}//m10

	private static void m9(BufferedReader reader) {
		
		//게시판 > 글쓰기
		// - 관리자 모드: 금지어 설정
		
		String txt = "안녕하세요, 반갑습니다. 바보야";
		
		//금지어: 바보
		
		if (txt.indexOf("바보") == -1) {
			System.out.println("글쓰기 진행..");
		} else {
			System.out.println("금지어 사용 금지!");
		}
		
	}//m9

	private static void m8(BufferedReader reader) throws IOException {
		
		//문자열 검색(***)
		// - 문자열 내에서 원하는 문자(열)을 검색 > 위치 반환
		// - int indexOf(char c)
		// - int indexOf(String s)
		
		String txt = "안녕하세요. 홍길동입니다."; // 0 ~ 13
		
		int n = txt.indexOf('홍');
		System.out.println(n);
		
		n = txt.indexOf("홍길동");
		System.out.println(n);
		
		n = txt.indexOf("아무개");
		System.out.println(n); // -1
		
		txt = "(서울=뉴스1) 주성호 기자 = \"우리는 21세기에 다시 한번 세계를 이끌어갈 것이다.\"(We’re going to lead the world again. We’re going to lead it again in the 21st century.)\r\n"
				+ "\r\n"
				+ "올초 취임 후 3개월여만인 12일(현지시간) 백악관에 주요 반도체 기업 최고경영자(CEO)들을 불러모은 바이든 미국 행정부의 의도는 예상대로 '투자'로 모아졌다.\r\n"
				+ "\r\n"
				+ "바이든 대통령은 \"미국은 20세기에 세계를 이끌어갔고 21세기에도 그렇게 할 것\"이라며 노골적으로 반도체를 앞세운 차세대 기술 리더십 패권을 놓치지 않겠다는 야욕도 드러냈다.\r\n"
				+ "\r\n"
				+ "이를 위해서는 미국이 세계 반도체 공급망의 중심에 있어야 하는데, 결국 민간기업들이 앞장서서 미국에 새로운 공장을 짓기 위한 투자에 서둘러 달라고 압박한 모양새다.\r\n"
				+ "\r\n"
				+ "이날 백악관에서 화상 방식으로 열린 회의에서 바이든 대통령은 \"반도체는 인프라\"라면서 \"반도체와 배터리 같은 분야에 공격적으로 투자해야 한다\"고 밝혔다.\r\n"
				+ "\r\n"
				+ "그는 \"중국을 비롯한 다른 나라들은 미국을 기다려주지 않는다\"면서 \"20세기에 그러했듯이 21세기에도 미국이 세계를 주도할 것\"이라고 덧붙였다.";
		
		
		while (true) {
			
			System.out.print("검색어: ");
			String word = reader.readLine();
			
			if (txt.indexOf(word) > -1) {
				//검색O
				System.out.printf("txt의 %d번째 위치에서 발견함\n", txt.indexOf(word));
			} else {
				break;
			}
			
		}//while
		
		System.out.println("프로그램 종료");
		
	}//m8

	private static void m7(BufferedReader reader) {
		
		//공백 제거
		// - String trim()
		// - 문자열 내의 시작과 끝에 존재하는 공백을 제거
		
		String txt = "     하나     둘     셋     ";
		
		System.out.printf("[%s]\n", txt);
		System.out.printf("[%s]\n", txt.trim());
		

		
	}//m7

	private static void m6(BufferedReader reader) throws IOException {
		
		//주민등록번호 입력
		// - 반드시 '-'를 입력하시오.
		
		char c = 'A';
		
		System.out.print("주민등록번호: ");
		String jumin = reader.readLine();
		
		//950413-1234567
		if (jumin.charAt(6) == '-') {
			
			System.out.println("올바른 주민등록번호");
			
			if (jumin.charAt(7) == '1') {
				
				System.out.println("남자입니다.");
				
			} else if (jumin.charAt(7) == '2') {
				
				System.out.println("여자");
				
			}
			
		} else {
			
			System.out.println("잘못된 주민등록번호");
			
		}
		
	}

	private static void m5(BufferedReader reader) throws IOException {
		
		//1. length() : 문자열 길이(문자수)
		//2. charAt() : 특정 위치의 문자 추출
		
		//*** 원시형과 참조형 간에는 형변환이 불가능하다.
		char c = 'A'; //값형, 원시형
		String s = "A"; //참조형
		
		System.out.println((int)c);
//		System.out.println((int)s); // 문자열로부터는 형변환을 통해서 문자 코드값을 얻어낼 수 없다.
		
		c = 'A'; // -> 정수 -> 1문자의 문자 코드
		s = "A";
		
		c = s.charAt(0);
//		System.out.println((int)c);
		
		
		
		System.out.print("입력: ");
		String input = reader.readLine();
		
		//A. 영어 소문자만 입력
		// "hello" : 0 ~ 4
		// "hello123"
		// "1asdasdsadsadasdsadsadsaf"
		
		for (int i=0; i<input.length(); i++ ) {
			
			c = input.charAt(i);
			//System.out.printf("%c(%d)\n", c, (int)c);
			
			//'a' <= c <= 'z'
			
//			if ((int)c >= 97 && (int)c <= 122) {
//				
//			}
			
//			if ((int)c < 97 || (int)c > 122) {
//			if ((int)c < (int)'a' || (int)c > (int)'z') {
			
			//A. 영어 소문자만 입력
			// "hello" : 0 ~ 4
			// "hello123"
			// "1asdasdsadsadasdsadsadsaf"
			
//			if (c < 'a' || c > 'z') {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			//B. 영어 대문자만 입력
//			if (c < 'A' || c > 'Z') {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			//C. 영어 대소문자만 입력
//			if ((c < 'a' || c > 'z') && (c < 'A' || c > 'Z')) {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			
			//D. 숫자만 입력
//			if (c < '0' || c > '9') {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			//E. 영어대소문자 + 숫자
//			if ((c < 'a' || c > 'z') && (c < 'A' || c > 'Z') && (c < '0' || c > '9')) {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			//F. 한글만 입력
			//조합형 한글 : 자음, 모음 조합 -> 한문자
			//완성형 한글 : 글자 자체를 등록
			
//			if (c < '가' || c > '힣') {
//				System.out.println("유효하지 않음");
//				break;
//			}
			
			
			//G. 영어대소문자 + 숫자 + '_' + 공백만 입력
			if ((c < 'a' || c > 'z') && (c < 'A' || c > 'Z') && (c < '0' || c > '9') && (c != '_') && (c != ' ')) {
				System.out.println("유효하지 않음");
				break;
			}
			
		}//for
		
		System.out.println("종료");
		
	}//main

	private static void m4(BufferedReader reader) {
		
		//유효성 검사
		// - 이름 입력 > 2자 ~ 5자 이내 + 한글만..
		
		//영소문자로만 구성
		String id = "test";
		
		for (int i=0; i<id.length(); i++) {
			
			char c = id.charAt(i);
			int code = (int)c;
			
			//유효성 검사 -> 잘못된 경우 찾는것이 좋다.
			if (code < 97 || code > 122) {
				System.out.println("잘못된 문자가 있습니다.");
				break; // 잘못된 문자가 발견되면 더이상 유효성 검사가 필요 없다.
			}
			
		}
		
		System.out.println("종료");
		
	}

	private static void m3(BufferedReader reader) {
		
		//문자열 추출
		// - 원하는 위치의 문자를 추출
		// - char charAt(int index)
		//		- index: 추출하고자 하는 문자의 위치(첨자, index)
		// - 서수를 0부터 센다. > Zero-based Index
		
		String txt = "홍길동"; //0, 1, 2 + 3
		
//		char c = txt.charAt(4);
		
//		System.out.println(c);
		
		for (int i=1; i<=10; i++) {
			//10회전(빈도 낮음)
		}
		
		for (int i=0; i<10; i++) {
			//10회전(빈도 높음)
		}
		
		
		for (int i=0; i < txt.length(); i++) {
			System.out.println(txt.charAt(i));
		}
		
	}

	private static void m2(BufferedReader reader) throws IOException {
		
		//길이
		// - 유효성 검사
		
		//회원 가입 > 이름 입력 > [유효성 검사] -> DB 저장(10글자)
		// -> 20자 입력 -> DB 에러 발생
		
		//이름 입력 > 2자~5자 이내
		
//		System.out.print("이름 입력: ");
//		String name = reader.readLine();
//		
//		if (name.length() >= 2 && name.length() <= 5) {
//			System.out.println("회원 가입 진행..");
//		} else {
//			System.out.println("이름은 2자 ~ 5자 이내로 입력하세요.");
//		}
		
		
		//올바른 이름을 입력할 때까지 위의 작업을 반복해보자!!
		
		String name = "";
		
		while (true) {
			
			System.out.print("이름: ");
			name = reader.readLine();
			
			if (name.length() >= 2 && name.length() <= 5) {
				break;
			} else {
				System.out.println("이름은 2자 ~ 5자 이내로 입력하세요.");
			}
			
		}//while
		
		System.out.println("회원 가입...");
		
		
	}

	private static void m1() throws IOException {
		
		//문자열 길이
		// - 문자열을 구성하는 문자의 개수(글자 수)
		// - int length()
		
		String txt = "";
		
		txt = "ABCDEF";
		
		System.out.println(txt.length()); //6글자
		System.out.println("ABCDEF".length());
		
		txt = "123 홍길동 !@#"; //숫자, 한글, 영어, 특수문자, 공백 -> 모두 1글자로 취급
		System.out.println(txt.length()); //11
		
		System.out.println((int)' '); //스페이스(32)
		System.out.println((int)'\t');
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("문장 입력: ");
		txt = reader.readLine();
		
		//요구사항] 사용자 입력한 문장이 몇글자로?
		System.out.printf("입력한 문장은 총 %d개의 문자로 구성되어 있습니다.\n", txt.length());
		
		
		
	}//m1

}
