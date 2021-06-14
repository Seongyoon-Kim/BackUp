package com.test.question.q25;

public class MyHashMap {
	
	private String[] keys;
	private String[] values;
	private int index;
	
	public MyHashMap() {
		this.keys = new String[4];
		this.values = new String[4];
		this.index = 0;
	}
	
	public void put(String key, String value) {
		this.keys[this.index] = key;
		this.values[this.index] = value;
		this.index++;
	}
	
	public String get(String key) {
		int i;
		for (i=0; i<index; i++) {
			if (this.keys[i].equals(key)) {
				return this.values[i];
			}
		}
		throw new IndexOutOfBoundsException();
	}
	
	public int size() {
		return this.index;
	}
	
	public void set(String key, String value) {
		
		if (!(this.index >= 0 && this.index < this.keys.length)) {
			throw new IndexOutOfBoundsException();
		} else {
			this.keys[this.index] = key;
			this.values[this.index] = value;
		}
	}
	
	public void remove(String key) {
		if (!(this.index >= 0 && this.index < this.keys.length)) {
			throw new IndexOutOfBoundsException();
		} else {
			for (int i=0; i<index; i++) {
				if (this.keys[i].equals(key)) {
					for (int j=i; j<index; j++) {
						keys[i] = keys[i+1];
						values[i] = values[i+1];
					}
				}
			}
		}
	} // remove
	
	public boolean containKey(String key) {
		
	}
	
	
	
} // MyHashMap
