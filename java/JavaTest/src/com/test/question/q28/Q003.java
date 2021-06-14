package com.test.question.q28;

import java.io.BufferedReader;
import java.io.FileReader;

public class Q003 {
	
	private final static String Q003;
	
	static {
		
		Q003 = "C:\\Users\\tjddb\\OneDrive\\바탕화~1-DESKTOP-F4154AD-875\\쌍용교육센터\\파일_입출력_문제\\성적.dat";
		
	}
	
	public static void main(String[] args) {
		
		passList();
		failList();
		
	}//main
	
	private static void failList() {
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader(Q003));
			
			String line = "";
			
			System.out.println("[불합격자]");
			
			while ((line = reader.readLine()) != null) {
				
				String[] temp = line.split(",");
				
				if (Integer.parseInt(temp[1]) < 40 || Integer.parseInt(temp[2]) < 40 || Integer.parseInt(temp[3]) < 40) {
					
					System.out.println(temp[0]);
					
				} 
				
			}
			
			reader.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

	private static void passList() {
		
		try {
			
			BufferedReader reader = new BufferedReader(new FileReader(Q003));
			
			String line = "";
			
			System.out.println("[합격자]");
			
			while ((line = reader.readLine()) != null) {
				
				String[] temp = line.split(",");
				
				if (Integer.parseInt(temp[1] + temp[2] + temp[3]) / 3 >= 60)  {
					
					if (!(Integer.parseInt(temp[1]) < 40 || Integer.parseInt(temp[2]) < 40 || Integer.parseInt(temp[3]) < 40)) {
						
						System.out.println(temp[0]);
						
					} 
					
				}
				
			}
			
			reader.close();
		
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}


// 밑의 방법은 ArrayList를 활용한 방법이다.

//package com.test.question.q73;
//
//import java.io.BufferedReader;
//import java.io.FileReader;
//import java.util.ArrayList;
//
//public class Q003 {
//   
//   public final static String DATA;
//   
//   static {
//      DATA = "C:\\Users\\신보경\\Desktop\\파일_입출력_문제\\성적.dat";
//   }
//   
//   
//   public static void main(String[] args) {
//      
//      try {
//         
//         BufferedReader reader = new BufferedReader (new FileReader(DATA));
//         
//         String line = "";
//         
//         ArrayList<String> passName = new ArrayList<String>();
//         ArrayList<String> nonpassName = new ArrayList<String>();
//         
//         while((line = reader.readLine()) != null) {
//            
//            String[] temp = line.split(",");
//            
//            int kor = Integer.parseInt(temp[1]);
//            int eng = Integer.parseInt(temp[2]);
//            int math = Integer.parseInt(temp[3]);
//            
//            if((kor + eng + math) / 3 >= 60) {
//               passName.add(temp[0]);
//            } else {
//               nonpassName.add(temp[0]);
//            }
//            
//         }//while
//         
//         reader.close();
//         
//         System.out.println("[합격자]");
//         for(String name : passName) {
//            System.out.println(name);
//         }
//         
//         System.out.println("[불합격자]");
//         for(String name : nonpassName) {
//            System.out.println(name);
//         }      
//            
//         
//         
//      } catch (Exception e) {
//         System.out.println(e);
//      }
//      
//      
//   }
//
//}
