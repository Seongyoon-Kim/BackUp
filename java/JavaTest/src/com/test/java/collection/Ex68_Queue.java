package com.test.java.collection;

import java.util.Arrays;

public class Ex68_Queue {
	
	
	public static void main(String[] args) {
		
		//Ex68_Queue.java
		
		
		
	}//main

}

class MyQueue {
	
	private String[] list;
	private int index;
	
	public MyQueue() {
		this.list = new String[4];
		this.index = 0;
	}
	
	@Override
	public String toString() {
		return String.format("length: %d%nindex: %d%s\n", this.list.length, this.index, Arrays.toString(list));
	}
	
	public void add(String value) {
		
	}
	
}
