package com.test.question.q22;

public class Pencil {
	
	private String hardness;
	
	public void setHardness(String hardness) {
		if (hardness.equals("4B")) {
			this.hardness = hardness;
		} else if (hardness.equals("3B")) {
			this.hardness = hardness;
		} else if (hardness.equals("2B")) {
			this.hardness = hardness;
		} else if (hardness.equals("B")) {
			this.hardness = hardness;
		} else if (hardness.equals("HB")) {
			this.hardness = hardness;
		} else if (hardness.equals("H")) {
			this.hardness = hardness;
		} else if (hardness.equals("2H")) {
			this.hardness = hardness;
		} else if (hardness.equals("3H")) {
			this.hardness = hardness;
		} else if (hardness.equals("4H")) {
			this.hardness = hardness;
		}
	}
	
	public String info() {
		return this.hardness;
	}

}//Pencil
