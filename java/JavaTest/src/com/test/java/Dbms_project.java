package com.test.java;

import java.util.Calendar;
import java.util.Random;

public class Dbms_project {
	
	public static void main(String[] args) {
	
		classroomOne();
		//teacherSurvey();
		//completeStudent();
		
	}//main
	
	public static void completeStudent() {
		
		Calendar completeDate = Calendar.getInstance();
		
		completeDate.set(Calendar.YEAR, 0);
		completeDate.set(Calendar.MONTH, 0);
		completeDate.set(Calendar.DATE, 0);
		
		String condition = "";
		int student = 60;
		
		for (int i=0; i<student; i++) {
		
			if (completeDate.equals("(null)")) {
				
				condition = "중도탈락";
				
			} else {
				
				condition = "수료";
				
			}
			
			System.out.printf("INSERT INTO tblCompleteStudent values (completeStudentSeq.nextVal, %tF, %s, tblEnrollment.enrollmentSeq);", completeDate, condition);
			System.out.println();
		
		}
		
	}//completeStudent
	
	public static void teacherSurvey() {
		
		for (int i=0; i<138; i++) {
			
			System.out.println("INSERT INTO tblTeacherSurvey (teacherSurveySeq, studentComment) values (teacherSurveySeq.nextVal, '')");
			
		}
		
	}

	public static void classroomOne() {
		
		Calendar courseBeginDate = Calendar.getInstance();
		Calendar courseEndDate = Calendar.getInstance();
		Random rnd = new Random();
		
		courseBeginDate.set(Calendar.YEAR, 2021);
		courseBeginDate.set(Calendar.MONTH, 2);
		courseBeginDate.set(Calendar.DATE, 2);
		
		courseEndDate.set(Calendar.YEAR, 2021);
		courseEndDate.set(Calendar.MONTH, 7);
		courseEndDate.set(Calendar.DATE, 13);
		
		long beginTick = courseBeginDate.getTimeInMillis();
		long endTick = courseEndDate.getTimeInMillis();
		long endMinusBegin = (endTick - beginTick) / 1000 / 60 / 60 / 24;
		int student = 30;
		int studentSeq = 61;
		
		//System.out.println(beginMinusEnd);
		//System.out.println(courseDate.get(Calendar.DAY_OF_WEEK));
		
		for (int i=0; i <= endMinusBegin; i++) {
			
			int day = courseBeginDate.get(Calendar.DAY_OF_WEEK); //일요일(1) ~ 토요일(7)
			
				int count = 1;
				
				for (int j=0; true; j++) {
					
					if (!(day > 1 && day < 7)) {
						break;
					}
					
					String condition = "";
					
					int inHour = rnd.nextInt(2) + 8;
					int inMinute = rnd.nextInt(59);
					
					int outHour = 17;
					int outMinute = rnd.nextInt(5) + 50;
					
					if (inHour >= 9 && inMinute <= 12) {
						
						if (inMinute >= 10 && inMinute <= 12) {
							
							condition = "지각";
							
						} else {
							
							condition = "정상";
							
						}
						
						System.out.printf("INSERT INTO tblAttendance (attendanceSeq, AttendanceDate, inTime, outTime, condition, studentSeq) values (attendanceSeq.nextVal, '%tF', '%02d:%02d', '%02d:%02d', '%s', %d);", courseBeginDate, inHour, inMinute, outHour, outMinute, condition, studentSeq);
						System.out.println();
						
						studentSeq++;
					
						count++;
						
						if (count > student) {
							break;
						}
						
					}
					
					
				}
				
				courseBeginDate.add(Calendar.DATE, 1);
				
				studentSeq = 61;
				
			
		} // for
		
	}//classroomOne

}//mainClass
