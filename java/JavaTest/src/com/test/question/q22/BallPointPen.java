package com.test.question.q22;

public class BallPointPen {
	
	private double thickness;
	private String color;
	
	public void setThickness(double thickness) {
		
		if (thickness == 0.3) {
			this.thickness = thickness;
		} else if (thickness == 0.5) {
			this.thickness = thickness;
		} else if (thickness == 0.7) {
			this.thickness = thickness;
		} else if (thickness == 1) {
			this.thickness = thickness;
		} else if (thickness == 1.5) {
			this.thickness = thickness;
		}
		
	}//setThickness
	
	public double info1() {
		return this.thickness;
	}
	
	public void setColor(String color) {
		
		if (color.equals("red")) {
			this.color = color;
		} else if (color.equals("blue")) {
			this.color = color;
		} else if (color.equals("green")) {
			this.color = color;
		} else if (color.equals("black")) {
			this.color = color;
		}
		
	}//setColor
	
	public String info2() {
		return this.color;
	}

} //BallPointPen
