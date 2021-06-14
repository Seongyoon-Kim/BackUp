package com.test.question.q28;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class Q004 {
	
	private final static String Q004;
	
	static {
		
		Q004 = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\쌍용교육센터\\파일_입출력_문제\\단일검색.dat";
		
	}
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("이름: ");
		
		String name = scanner.nextLine();
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader(Q004));
			
			String line = "";
			
			while ((line = reader.readLine()) != null) {
				
				String[] temp = line.split(",");
				
				if (temp[1].equals(name)) {
					System.out.printf("[%s]\n", temp[1]);
					System.out.printf("번호: %s\n", temp[0]);
					System.out.printf("주소: %s\n", temp[2]);
					System.out.printf("전화: %s\n	", temp[3]);
					
				}
				
			}
			
			reader.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	} // main

}
