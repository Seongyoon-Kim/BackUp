package com.test.question.q17;

public class MainClass {
	
	public static void main(String[] args) throws Exception {
		
		Book b1 = new Book();
		
		//b1.setTitle("자바의정석");
		//System.out.println(b1.getTitle);
		
		//b1.X
		
		b1.setTitle("자바의 정석");
		b1.setPrice(23000);
		b1.setAuthor("김성윤");
		b1.setPage(348);
		b1.setPublisher("도우출판");
		b1.setIsbn("2019");
		
		System.out.println(b1.info()); //모든 정보 문자열을 출력
		
	}//main

}
