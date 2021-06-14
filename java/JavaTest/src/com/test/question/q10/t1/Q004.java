package com.test.question.q10.t1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

public class Q004 {

	public static void main(String[] args) throws NumberFormatException, IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("남자이름 : ");
		String bname = reader.readLine();

		System.out.println("여자이름 : ");
		String gname = reader.readLine();
		
		System.out.printf("만날날(년) : ");
		int year = Integer.parseInt(reader.readLine());
		
		System.out.printf("만날날(월) : ");
		int month = Integer.parseInt(reader.readLine());
		
		System.out.printf("만날날(일) : ");
		int day = Integer.parseInt(reader.readLine());

		
		
		Calendar time = Calendar.getInstance();
		time.set(year, month, day); 
		//time.set(year, month, day - 1); -> 계산하고자 하는 날을 포함하려면 -1 해야함.
		
		System.out.printf("'%s'와 '%s'의 기념일\n", bname, gname);
		time.add(Calendar.DATE, 100); // 주의 ! -> DATE가 누적되어 계산되기 때문에 숫자를 입력할 때 유의해야함.
		System.out.printf("100일 : %tF\n", time);
		
		time.add(Calendar.DATE, 100);
		System.out.printf("200일 : %tF\n", time);
		
		time.add(Calendar.DATE, 100);
		System.out.printf("300일 : %tF\n", time);
		
		time.add(Calendar.DATE, 200);
		System.out.printf("500일 : %tF\n", time);
		
		time.add(Calendar.DATE, 500);
		System.out.printf("1000일 : %tF\n", time);

	}

}