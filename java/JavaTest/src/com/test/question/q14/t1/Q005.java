package com.test.question.q14.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q005 {
	
	public static void main(String[] args) throws IOException {
		
		//특정 단어가 문장내에 몇회 있어있는지 수를 세시오.
		
		String content = "안녕~ 길동아~ 잘가~ 길동아~";
		String word = "길동";
		
		int count = 0;
		int index = 0;
		
		while (index != -1) {
			
			index = content.indexOf(word, index);
			
			if (index > -1) {
				count++;
				index += word.length();
			}
			
		}
		
		System.out.printf("'%s'을(를) 총 %d회 발견했습니다.\n", word, count);
		
		
		
	}

}
