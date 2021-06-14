package com.test.question.q21;

import java.util.Iterator;

public class Refrigerator {
	
	private Item[] items = new Item[100];
	private int count = 0;
	
	public void add(Item item) {
		
		this.items[count] = new Item();
		
		this.items[count].setName(item.getName());
		
		this.items[count].setExpiration(item.getExpiration());
		
		this.count++;
		
		System.out.printf("'%s'를 냉장고에 넣었습니다.\n", item.getName());
		
	}
	
	public Item get(String name) {
		Item temp = new Item();
		
		for (int i = 0; i<count; i++) {
			
			if (this.items[i].getName().equals(name)) {
				
				temp = this.items[i];
				
				for (int j = 0; j<items.length; j++) {
					
					items[i] = items[i + 1];
					
				}
				
				this.count--;
				
			}
			
		}
		
		return temp;
	}
	
	public int count() {
		
		return this.count;
		
	}
	
	public void listItem() {
		
		for (int i = 0; i < this.count; i++) {
			
			System.out.printf("%s(%s)\n", items[i].getName(), items[i].getExpiration());
			
		}
		
	}

}
