package com.test.question.q28;

import java.io.File;

public class Q001 {
	
	public final static String Q001;
	
	static {
		
		Q001 = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\쌍용교육센터\\파일_입출력_문제";
		
	}
	
	public static void main(String[] args) {
		
		q001();
		
	}

	private static void q001() {
		
		File dir = new File(Q001);
		
		File[] list = dir.listFiles();
		
		for (int i=0; i<list.length; i++) {
			
			String fileName = list[i].getName();
			
			if (fileName.equals("이름수정.dat")) {
				
				fileName = String.format("%s_변환.dat", fileName.substring(0, 4));
				
				list[i].renameTo(new File(Q001 + "\\" + fileName));
				
			}
			
		}
		
		System.out.println("변환 후 다른 이름으로 저장하였습니다.");
		
	}

}


