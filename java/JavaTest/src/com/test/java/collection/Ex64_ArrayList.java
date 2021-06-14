package com.test.java.collection;

import java.util.Arrays;

public class Ex64_ArrayList {
	
	public static void main(String[] args) {
		
		//Ex64_ArrayList.java
		
		MyList list = new MyList();
		
		
		list.add(100);
		System.out.println(list);
		
		list.add(200);
		System.out.println(list);
		
		list.add(300);
		System.out.println(list);
		
		list.add(400);
		System.out.println(list);
		
		list.add(500);
		System.out.println(list);
		
		list.add(600);
		System.out.println(list);
		
		list.add(700);
		System.out.println(list);
		
		list.add(800);
		System.out.println(list);
		
		list.add(900);
		System.out.println(list);
		
		System.out.println("list.get(0): " + list.get(0));
		System.out.println("size: " + list.size());
		
		list.set(0, 1000);
		System.out.println(list);
		
		list.set(8, 8000);
		System.out.println(list);
		
//		list.set(14, 10000);
//		System.out.println(list);
		
		list.remove(0);
		System.out.println(list);
		
		list.add(1, 50);
		System.out.println(list);
		
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		list.add(1, 50);
		System.out.println(list);
		
		list.clear();
		System.out.println(list); // 개발 + 디버깅 -> 출력 결과는 개발자들만 열람
		
		list.add(100);
		list.add(200);
		
		list.trimToSize();
		System.out.println(list);
		
	}//main

}//Ex64_ArrayList


class MyList {
	
	private int[] list; //내부 배열
	private int index; // 현재 데이터를 넣을 방의 위치
	
	public MyList() {
		
		this.list = new int[4]; // 초기 배열 크기
		this.index = 0; // 처음 넣은 방 번호
		
	}
	
	//추가하기(Append)
	public void add(int n) {
		
		
		//1. 방의 개수 확인 -> 2배로 늘리기
		check();
		
		//2. 데이터 추가하기
			this.list[this.index] = n;
			this.index++;
			
			
		
	}
	
	public String toString() {
		
		
		
		return String.format("length: %d%nindex: %d%n%s%n", this.list.length, this.index, Arrays.toString(this.list));
//		return Arrays.toString(this.list);
		
	}
	
	public void check() {
		if (this.index >= this.list.length) {
			int[] temp = new int[this.list.length * 2];
			
			for (int i=0; i<this.list.length; i++) {
				temp[i] = this.list[i];
			}
			this.list = temp;
		}
	}
	
	public int get(int index) {
		
		if (!(index >= 0 && index < this.index)) {
			throw new IndexOutOfBoundsException();
		} else {
			return this.list[index];
		}
		
	}
	
	public int size() {
		return this.index;
	}
	
	public void set(int index, int n) {
		
		if(!(index >= 0 && index < this.index)) {
			throw new IndexOutOfBoundsException();
		} else {
			this.list[index] = n;
		}
		
	}
	
	public void remove(int index) {
		if(!(index >= 0 && index < this.index)) {
			throw new IndexOutOfBoundsException();
		} else {
			for (int i=index; i<this.index; i++) {
				this.list[i] = this.list[i+1];
			}
			this.index--;
		}
	}
	
	public void add(int index, int n) {
		if(!(index >= 0 && index < this.index)) {
			throw new IndexOutOfBoundsException();
		} else {
			check();
			
			for (int i=this.index-1; i>=index; i--) {
				this.list[i+1] = this.list[i];
			}
			this.list[index] = n;
			this.index++;
		}
	}
	
	public int indexOf(int n) {
		for (int i=0; i<this.index; i++) {
			if (this.list[i] == n) {
				return i;
			}
		}
		return -1;
	}
	
	public int lastIndexOf(int n) {
		for (int i=this.index - 1; i>=0; i--) {
			if (this.list[i] == n) {
				return i;
			}
		}
		return -1;
	}
	
	public void clear() {
//		//Case A.
//		for (int i=0; i<this.index; i++) {
//			this.list[i] = 0;
//		}
		
//		//Case B.
//		this.list = new int[4];
		
		this.index = 0;
	}
	
	public boolean contains(int n) {
		for (int i=0; i<this.index; i++) {
			if (this.list[i] == n) {
				return true;
			}
		}
		return false;
	}
	
	
	//길어진 배열을 데이터 개수만큼으로 줄이기
	public void trimToSize() {
		int[] temp = new int[this.index];
		for(int i=0; i<temp.length; i++) {
			temp[i] = this.list[i];
		}
		this.list = temp;
	}
	
	public boolean isEmpty() {
		return this.index == 0 ? true : false;
	}
	
}


























