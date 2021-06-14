package com.test.java.collection;

import java.util.Arrays;

public class Ex66_HashMap {
	
	public static void main(String[] args) {
		
		MyMap map = new MyMap();
		System.out.println(map);
		
		map.put("red", "빨강");
		System.out.println(map);
		
		map.put("blue", "파랑");
		System.out.println(map);
		
		map.put("yellow", "노랑");
		map.put("green", "녹색");
		map.put("white", "흰색");
		System.out.println(map);
		
		System.out.println(map.get("red"));
		System.out.println(map.get("blue"));
		System.out.println(map.get("yellow"));
		System.out.println(map.get("black"));
		
		map.put("white", "하양");
		System.out.println(map);
		
	} // main

} // Ex66

class MyMap {
	private Entry[] list;
	private int index;
	
	public MyMap() {
		this.list = new Entry[4];
		this.index = 0;
	}
	
	@Override
	public String toString() {
		return String.format("length: %d%nindex: %d%n%s%n", this.list.length, this.index, Arrays.toString(this.list));
	}
	
	public void put(String key, String value) {
		doubling();
		
		if (!containsKey(key)) {
			Entry e = new Entry();
			
			e.key = key;
			e.value = value;
			
			this.list[this.index] = e;
			this.index++;
		} else {
			this.list[getIndex(key)].value = value;
		}
	}

	private boolean containsKey(String key) {
		for (int i=0; i<this.index; i++) {
			if (this.list[i].key.equals(key)) {
				return true;
			}
		}
		return false;
	} 



	private void doubling() {
		if (this.index >= this.list.length) {
			
			Entry[] temp = new Entry[this.list.length * 2];
			
			for (int i=0; i<this.list.length; i++) {
				temp[i] = this.list[i];
			}
			this.list = temp;
		}
	}
	
	public String get(String key) {
		
//		for (int i=0; i<this.index; i++) {
//			if (this.list[i].key.equals(key)) {
//				return this.list[i].value;
//			}
//		}
		
		if (getIndex(key) > -1) {
			return this.list[getIndex(key) ].value;
		} else {
			return null;
		}
	}
	
	public int getIndex(String key) {
		
		for (int i=0; i<this.index; i++) {
			if (this.list[i].key.equals(key)) {
				return i;
			}
		}
		
		return -1;
		
	}
}

class Entry {
	public String key;
	public String value;
	
	public String toString() {
		return String.format("(%s, %s)", this.key, this.value);
	}
}

























