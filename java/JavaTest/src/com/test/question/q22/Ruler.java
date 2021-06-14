package com.test.question.q22;

public class Ruler {
	
	private int length;
	private String shape;
	
	public void setLength(int length) {
		
		if (length == 30) {
			this.length = length;
		} else if (length == 50) {
			this.length = length;
		} else if (length == 100) {
			this.length = length;
		}
		
	} //setLength
	
	public void setShape(String shape) {
		
		if (shape.equals("줄자")) {
			this.shape = shape;
		} else if (shape.equals("운형자")) {
			this.shape = shape;
		} else if (shape.equals("삼각자")) {
			this.shape = shape;
		}
		
	} //setShape
	
	public int info1() {
		return this.length;
	}
	
	public String info2() {
		return this.shape;
	}

} //Ruler
