package com.test.question.q11;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Q002 {
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("점수: ");
		
		int grade = Integer.parseInt(reader.readLine());
		
		if (grade >= 0 && grade <= 100) {
			
			if (grade >=90 && grade <= 100) {
				System.out.printf("입력한 %d점은 성적 A입니다.", grade);
			} else if (grade >= 80 && grade < 90) {
				System.out.printf("입력한 %d점은 성적 B입니다.", grade);
			} else if (grade >= 70 && grade < 80) {
				System.out.printf("입력한 %d점은 성적 C입니다.", grade);
			} else if (grade >= 60 && grade < 70) {
				System.out.printf("입력한 %d점은 성적 D입니다.", grade);
			} else {
				System.out.printf("입력한 %d점은 성적 F입니다.", grade);
			}
		}
		
		
	}

}

//int score = Integer.parseInt(reader.readLine());
//char grade;
//if(score >= 0 && score <= 100) {
//   
//   if(score >= 90) {
//      grade = 'A';
//   }else if(score >= 80) {
//      grade = 'B';
//   }else if(score >= 70) {
//      grade = 'C';
//   }else if(score >= 60) {
//      grade = 'D';
//   }else{
//      grade = 'F';
//   }         
//   System.out.printf("입력한 %d점은 성적 %c입니다.\n", score, grade);
//}else {
//   System.out.println("올바르지 않은 점수입니다.");
//}
//오... 훨씬 좋아ㅇㄴㅁㅇㄴㅁ






