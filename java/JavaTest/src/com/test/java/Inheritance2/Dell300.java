package com.test.java.Inheritance2;



//새로운 모니터 출시 -> 혹시.. 모니터로서 갖춰야할 규칙이 있는지? > Monitor 인터페이스
public class Dell300 implements Monitor {
	
	public void powerOn( ) {
		System.out.println("Dell300 Power on");
	}
	
	public void powerOff() {
		System.out.println("Dell300 Power off");
	}

}
