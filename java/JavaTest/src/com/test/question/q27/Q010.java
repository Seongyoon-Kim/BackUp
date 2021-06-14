package com.test.question.q27;

import java.io.File;

public class Q010 {
	
	public final static String Q010;
	
	static {
		
		Q010 = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\쌍용교육센터\\027_파일_디렉토리\\직원";
		
	}
	
	public static void main(String[] args) {
		
		
		File dir = new File(Q010);
		
		File[] list = dir.listFiles();
		
		for (File file : list) {
			
			if (file.isFile()) {
				
				String[] temp = getName(file.getName());
				
				File subdir = new File(Q010 + "\\" + temp[0] + "\\" + file.getName());
				
				subdir.mkdirs();
				
				file.renameTo(new File(subdir.getAbsolutePath() + "\\" + file.getName()));
				
			}
			
		}
		
		
	}//main

	private static String[] getName(String name) {
		
		String[] temp = new String[2];
		
		int index = name.indexOf("_");
		
		temp[0] = name.substring(0, index);
		
		int index2 = name.indexOf("_", index + 1);
		
		temp[1] = name.substring(index + 1, index2);
		
		return temp;
	}

}
