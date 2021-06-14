package com.test.question.q14;

public class Q005 {
	
	public static void main(String[] args) {
		
		String content = "안녕~ 길동아~ 잘가~ 길동아~";
		String word = "길동";
		
		int index = 0;
		int count = 0;
		
		while (index != -1) {
			
			index = content.indexOf(word, index);
			
			if (index > 1) {
				
				count++;
				index += word.length();
				
			}
	
		}//while
		
		System.out.printf("'%s'을 총 %d회 발견했습니다.\n", word, count);
		
	}//main

}
