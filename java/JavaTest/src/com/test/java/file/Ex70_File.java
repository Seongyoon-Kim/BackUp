package com.test.java.file;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;

public class Ex70_File {
	
	public final static String Q004;
	public final static String Q005;
	public final static String Q008;
	public final static String Q009;
	public final static String Q010;
	
	static {
		
		Q010 = "C:\\Users\\tjddb\\OneDrive\\바탕 화면\\쌍용교육센터\\027_파일_디렉토리\\직원";
		
	}
	
	
	public static void main(String[] args) {
		
		//Ex70_File.java
		//q004();
		//q005();
		//q008();
		//q009();
		q010();
		
		//C:\Users\tjddb\OneDrive\바탕 화면\쌍용교육센터
		
	} // main

	private static void q010() {
		
		File dir = new File(Q010);
		File[] list = dir.listFiles();
		
		for (File file : list) {
			
			if (file.isFile()) {
				
				//아무게_2014__17.txt
				String[] temp = getName(file.getName());
				System.out.println(Arrays.toString(temp));
				
				File subDir = new File(Q010 + "\\" + temp[0] + "\\" + temp[1]);
				subDir.mkdirs();
				
				file.renameTo(new File(subDir.getAbsolutePath() + "\\" + file.getName()));
				
			}
			
		}
		
	}

	private static String[] getName(String name) {
		
		//아무게_2014__17.txt
		String[] temp = new String[2];
		
		int index = name.indexOf("_");
		temp[0] = name.substring(0, index);
		
		int index2 = name.indexOf("_", index + 1);
		temp[1] = name.substring(index+1, index2);
		
		return temp;
		
	}

	private static void q009() {
		
		File dir = new File(Q009);
		
		ArrayList<File> flist = new ArrayList<File>();
		
		addFile(dir, flist);
		
		for (File file : flist) {
			
			System.out.printf("%s\t%s%n", file.getName(), file.getAbsolutePath());
			
		}
		
	}

	private static void q008() {
		
		//'delete' 폴더를 삭제하시오.
		// -> 내용물이 있는 폴더는 삭제를 못한다.
		// -> 내용물? -> 파일(빈폴더)
		
		//모든 파일 지우기
		File dir = new File(Q008);
		
		deleteFile(dir);
		
	}

	private static void deleteFile(File dir) {
		File[] list = dir.listFiles();
		
		for (File file : list) {
			if (file.isFile()) {
				file.delete();
			}
		}
		
		//자식 폴더로 들어가서 동일한 일을 반복 -> 재귀
		for (File sub : list) {
			if (sub.isDirectory()) {
				//재귀 호출
			}
		}
	}
	
	private static void addFile(File dir, ArrayList<File> flist) {
		File[] list = dir.listFiles();
		
		for (File file : list) {
			if (file.isFile()) {
				flist.add(file);
			}
		}
		
		//자식 폴더로 들어가서 동일한 일을 반복 -> 재귀
		for (File sub : list) {
			if (sub.isDirectory()) {
				addFile(sub, flist);
			}
		}
	}

	private static void q005() {
		
		File dir = new File(Q005);
		File[] list = dir.listFiles();
		
		HashMap<String, Integer> count = new HashMap<String, Integer>();
		
		for (File file : list) {
			
			System.out.println(file.getName());
			String ext = file.getName().substring(file.getName().lastIndexOf(".")+1);
			
			
			if (count.containsKey(ext)) {
				count.put(ext, count.get(ext) + 1); //count = count + 1
			} else {
				count.put(ext, 1);
			}
		}
		
		System.out.printf(".gif: %d개%n", count.get("gif"));
		System.out.printf(".jpg: %d개%n", count.get("jpg"));
		System.out.printf(".png: %d개%n", count.get("png"));
		System.out.printf(".txt: %d개%n", count.get("txt"));
		
		//HashMap -> 루프
		Set<String> keys = count.keySet();
		
		for (String key : keys) {
			
		}
		
	}

	private static void q004() {
		
		File dir = new File(Q004);
		
		File[] list = dir.listFiles();
		
		int temp = 0;
		
		for (int i=0; i<list.length; i++) {
			
			//System.out.println(list[i].getName());
			
			String filename = list[i].getName();
			
			if (filename.toLowerCase().endsWith(".mp3")) {
				
				//음악 파일만
				//System.out.println(filename);
				
				filename = String.format("[%03d]%s", (temp+1), filename);
				System.out.println(filename);
				temp++;
				
				//파일명 바꾸기
				list[i].renameTo(new File(Q004 + "\\" + filename));
			}
			
		}
		
	}

}
