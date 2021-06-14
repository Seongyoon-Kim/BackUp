package com.test.question.q27;

import java.io.File;

public class Q005 {
	
public final static String Q005;
	
	static {
		
		Q005 = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\쌍용교육센터\\027_파일_디렉토리\\확장자별 카운트";
		
	}
	
	public static void main(String[] args) {
		
		File dir = new File(Q005);
		
		File[] list = dir.listFiles();
		
		int gifCount = 0;
		int jpgCount = 0;
		int pngCount = 0;
		
		for (File file : list) {
			
			//System.out.println(file.getName());
			
			if (file.getName().contains("gif")) {
				
				gifCount++;
				
			} else if (file.getName().contains("jpg")) {
				
				jpgCount++;
				
			} else {
				
				pngCount++;
				
			}
			
		}
		
		System.out.printf(".gif: %d개\n", gifCount);
		System.out.printf(".jpg: %d개\n", jpgCount);
		System.out.printf(".png: %d개\n", pngCount);
		
	}//main
	

}
