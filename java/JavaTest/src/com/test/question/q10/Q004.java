package com.test.question.q10;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q004 {
	
	public static void main(String[] args) throws IOException {
		
	BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
	
	System.out.print("남자 이름: ");
	
	String str1 = reader.readLine();
	
	System.out.print("여자 이름: ");
	
	String str2 = reader.readLine();
	
	System.out.print("만난날(년): ");
	
	int year = Integer.parseInt(reader.readLine());
	
	System.out.print("만난날(월): ");
	
	int month = Integer.parseInt(reader.readLine());
	
	System.out.print("만난날(일): ");
	
	int day = Integer.parseInt(reader.readLine());
	System.out.println();
	
	Calendar now = Calendar.getInstance();
	
	now.set(year, month, day); // month는 0부터 시작하기 때문에 1을 빼줘야 제대로 된 계산을 할 수 있다.
	
	System.out.printf("'%s'과(와) '%s'의 기념일\n", str1, str2);
	
	now.add(Calendar.DATE, 100);
	System.out.printf("100일: %tF\n", now);
	
	now.add(Calendar.DATE, 100);
	System.out.printf("200일: %tF\n", now);
	
	now.add(Calendar.DATE, 100);
	System.out.printf("300일: %tF\n", now);
	
	now.add(Calendar.DATE, 200);
	System.out.printf("500일: %tF\n", now);
	
	now.add(Calendar.DATE, 500);
	System.out.printf("1000일: %tF\n", now);
	
	
	
	}//main


}
