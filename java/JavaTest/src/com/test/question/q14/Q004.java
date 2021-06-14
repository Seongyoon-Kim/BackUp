package com.test.question.q14;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q004 {
	
	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		int gifSum = 0;
		int jpgSum = 0;
		int pngSum = 0;
		int hwpSum = 0;
		int docSum = 0;
		
		for (int i=0; i<10; i++) {
			
			System.out.print("파일명: ");
			String fileName = reader.readLine();
			
			if (fileName.endsWith(".gif")) {
				gifSum++;
			} else if (fileName.endsWith(".jpg")) {
				jpgSum++;
			} else if (fileName.endsWith(".png")) {
				pngSum++;
			} else if (fileName.endsWith(".hwp")) {
				hwpSum++;
			} else if (fileName.endsWith(".doc")) {
				docSum++;
			}
			
		}//for
		
		System.out.printf("gif: %d개\n", gifSum);
		System.out.printf("jpg: %d개\n", jpgSum);
		System.out.printf("png: %d개\n", pngSum);
		System.out.printf("hwp: %d개\n", hwpSum);
		System.out.printf("doc: %d개\n", docSum);
		
	}//main

}
