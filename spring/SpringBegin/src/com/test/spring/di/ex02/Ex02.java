package com.test.spring.di.ex02;

import java.util.Scanner;

public class Ex02 {
	
	public static void main(String[] args) {
		
		//요구사항] 사용자에게 이름을 입력받아 인사하시오.
		
		Scanner scan = new Scanner(System.in);
		
		//new Util(scan);
		// - Util 객체가 필요로 하는 의존 객체 scan을 외부 환경인 Ex02가 만들어서 주입했다.
		// -> 의존 주입
		
		//의존 주입 이점
		// - 관리의 주체를 변경한다.(지역 -> 전역)
		// - Spring DI > 관리의 주체를 Spring이 맡는다. > 코드의 간결화(자동화) 제공
		
		Util util = new Util(scan); //의존 주입(DI)
		String name = util.getName(); //업무 위임
		System.out.printf("안녕하세요. %s님\n", name);
		
		Util util2 = new Util(); //의존 주입(DI)
		util2.setScan(scan);
		String name2 = util2.getName(); //업무 위임
		System.out.printf("안녕하세요. %s님\n", name2);
		
	}

}
