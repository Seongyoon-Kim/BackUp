package com.test.spring.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {

		//메인 - 흐름 통제(컨트롤)

		//기존의 주업무 + 보조업무 -> AOP를 통해서 통제!! -> 반드시 Memo 객체를 스프링을 통해서 생성해야 한다.

		//Memo memo = new Memo();

		ApplicationContext context = new ClassPathXmlApplicationContext(".\\com\\test\\spring\\aop\\memo.xml");

		Memo memo = (Memo)context.getBean("memo");


		//1. 주업무 실행 - 메모 쓰기
		try {
			memo.memberadd("메모를 작성합니다.");
		} catch (Exception e) {
			//e.printStackTrace();
		}

		//2. 주업무 실행 - 메모 수정
		memo.memberedit(10, "수정합니다.");

		//3. 주업무 실행 - 메모 삭제
		memo.memberdel(10);

		//4. 주업무 실행 - 메모 읽기
		memo.read(5);
		
		//5. 주업무 실행 - 메모 검색
		memo.search("길동");
		memo.search("호호");

	}

}





