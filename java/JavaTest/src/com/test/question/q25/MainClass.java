package com.test.question.q25;

public class MainClass {
	
	public static void main(String[] args) {
		
		MyHashMap map = new MyHashMap();
		
		map.put("국어", "합격");
		map.put("영어", "불합격");
		map.put("수학", "보류");
		
		System.out.println(map.get("국어"));
		System.out.println(map.get("영어"));
		System.out.println(map.get("수학"));
		
		System.out.println(map.size());
		
		map.set("영어", "합격");
		System.out.println(map.get("영어"));
		
		map.remove("영어");
		System.out.println(map.get("영어"));
		
	} // main

}
