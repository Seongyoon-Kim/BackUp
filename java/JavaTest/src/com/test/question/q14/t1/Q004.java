package com.test.question.q14.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	
	public static void main(String[] args) throws IOException {
		
		//파일명 10개를 입력받아 각 확장자별로 총 개수를 출력하시오.
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int sum1 = 0;
		int sum2 = 0;
		int sum3 = 0;
		int sum4 = 0;
		int sum5 = 0;
		
		for (int i=0; i<10; i++) {
			
			System.err.print("파일명: ");
			String file = reader.readLine();
			
			if (file.endsWith(".gif")) {
				sum1++;
			} else if (file.endsWith(".jpg")) {
				sum2++;
			} else if (file.endsWith(".png")) {
				sum3++;
			} else if (file.endsWith(".hwp")) {
				sum4++;
			} else if (file.endsWith(".doc")) {
				sum5++;
			}
			
		}
		
		
		System.out.printf("gif: %d개\n", sum1);
		System.out.printf("jpg: %d개\n", sum2);
		System.out.printf("png: %d개\n", sum3);
		System.out.printf("hwp: %d개\n", sum4);
		System.out.printf("doc: %d개\n", sum5);
		
		
		
		
		
	}

}
