package com.test.question.q24;

import java.util.ArrayList;

public class MyArrayList {
	
	private String[] list;
	private int index; //*** 중요한 역할(요소가 들어갈 방의 번호)
	
	public MyArrayList(int room) {
		this.list = new String[room];
		this.index = 0;
		ArrayList list2 = new ArrayList();
	}
	
	public void add(String s) {
		
		
		checkLength();
		
		this.list[this.index] = s;
		this.index++;
		
	} //add
	
	public void checkLength() {
		
		if (this.index >= this.list.length) {
			
			String[] list2 = new String[list.length * 2];
			
			for (int i=0; i<list.length; i++) {
				list2[i] = list[i];
			}
			
			list = list2;
			
		}
		
	}
	
	public String get(int index) {
		
		return this.list[index];
		
	} //get
	
	public int size() {
		
		return this.index;
		
	} //size
	
	public void set(int index, String value) {
		
		this.list[index] = value;
		
	} //set
	
	public void remove(int index) {
		
		for (int i=index; i<this.index - 1; i++) {
			list[i] = list[i+1];
		}
		this.index--;
	}
	
	public void add(int index, String value) {
		
		checkLength();
		
		
		
	}
	
	public int indexOf(String value) {
		
		
		
	}
	
	

}//MyArrayList
