package com.test.question.q12;

public class Q008 {
	
	public static void main(String[] args) {
		
		int total = 0;
		int year = 2021;
		int month = 4;
		int day = 10;
		
		for (int i=1; i<year; i++) {
			
			if (isLeaf(i)) {
				total += 366;
			} else {
				total += 365;
			}
			
		}
		
		for (int i=1; i<month; i++) {
			switch (i) {
			case 1: case 3: case 5: case 7: case 8: case 10: case 12:
				total += 31;
				break;
				
			case 4: case 6: case 9: case 11:
				total += 30;
				break;
				
			case 2:
				if (isLeaf(year)) {
					total += 29;
				} else {
					total += 28;
				}
				break;
			}
		}
		
		total += day;
		
		
		String date = "";
		
		if (total % 7 == 1) {
			date = "월요일";
		} else if (total % 7 == 2) {
			date = "화요일";
		} else if (total % 7 == 3) {
			date = "수요일";
		} else if (total % 7 == 4) {
			date = "목요일";
		} else if (total % 7 == 5) {
			date = "금요일";
		} else if (total % 7 == 6) {
			date = "토요일";
		} else if (total % 7 == 0) {
			date = "일요일";
		}
		
		System.out.printf("%d년 %d월 %d일 %s은 %,d일째 되는 날입니다.\n", year, month, day, date, total);
		
		
		
	}

	private static boolean isLeaf(int i) {
		if((i % 4 == 0 && i % 100 != 0) || i % 400 == 0) {
			return true;
		} else {
			return false;
		}
		
	}

}
