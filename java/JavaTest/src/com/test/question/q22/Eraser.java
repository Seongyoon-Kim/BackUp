package com.test.question.q22;

public class Eraser {
	
	private String size;
	
	public void setSize(String size) {
		
		if (size.equals("Large")) {
			this.size = size;
		} else if (size.equals("Medium")) {
			this.size = size;
		} else if (size.equals("Small")) {
			this.size = size;
		}
		
	}
	
	public String info() {
		return this.size;
	}

} //Eraser
