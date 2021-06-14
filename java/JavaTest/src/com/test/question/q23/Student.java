package com.test.question.q23;

public class Student {
	
	private String name;
	private int age;
	private int grade;
	private int classNumber;
	private int number;
	
	
	public Student() {
		
		this("미정", 0, 0, 0, 0);
		
	}
	
	public Student(String name, int age, int grade, int classNumber, int number) {
		
		this.name = name;
		this.age = age;
		this.grade = grade;
		this.classNumber = classNumber;
		this.number = number;
		
	}
	
	public Student(String name, int age) {
		
		this(name, age, 0, 0, 0);
		
	}
	
	public Student(int grade, int classNumber, int number) {
		
		this("미정", 0, grade, classNumber, number);
		
	}
	
	public String info() {
		
		return name + "(나이: " + (age != 0 ? age + "세, " : "미정, ") + "학년: " + (grade != 0 ? grade + ", " : "미정, ") + "반: " + (classNumber != 0 ? classNumber + ", ": "미정, ") + "번호: " + (number != 0 ? number + ")" : "미정)");
		
				
	
	}
	
}//Student
