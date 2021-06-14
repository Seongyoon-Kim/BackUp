package com.test.question.q21;

public class Box {

	//요구사항] 다량의 객체를 잘 제어할 수 있는지?
	private Macaron[] list = new Macaron[10];
	
	public void cook() {
		
		for (int i = 0; i < this.list.length; i++) {
			
			Macaron m = new Macaron();
			
			m.setSize((int)(Math.random() * 11) + 5);
			
			String[] color = new String[] {"red", "blue", "yellow", "white", "pink", "purple", "green", "black"};
			m.setColor(color[(int)(Math.random() * color.length)]);
			
			m.setThickness((int)(Math.random() * 20) + 1);
			
			list[i] = m;
			
		}
		
		System.out.printf("마카롱을 %d개 만들었습니다.\n\n", this.list.length);
		
	} //cook
	
	public void check() {
		
		System.out.println("[박스 체크 결과]");
		
		int pass = 0;
		int fail = 0;
		
		for (int i = 0; i < this.list.length; i++) {
			
			if ((list[i].getSize() < 8 || list[i].getSize() > 14) || (list[i].getThickness() < 3 || list[i].getThickness() > 18) || list[i].getColor().equals("black")) {
				
				fail++;
				
			} else {
				
				pass++;
				
			}
			
		}
		
		System.out.printf("QC 합격 개수: %d개\n", pass);
		System.out.printf("QC 불합격 개수: %d개\n\n", fail);
		
		
		//판매 유효 크기(8 ~ 14)
		//판매 유효 색상(black)
		//판매 유효 두께(3 ~ 18)
		
	} //check
	
	public void list() {
		
		System.out.println("[마카롱 목록]");
		
		String txt = "";
		
		for (int i = 0; i < this.list.length; i++) {
			
			if ((list[i].getSize() < 8 || list[i].getSize() > 14) || (list[i].getThickness() < 3 || list[i].getThickness() > 18) || list[i].getColor().equals("black")) {
				
				txt = "불합격";
				
			} else {
				
				txt = "합격";
				
			}
			
			System.out.printf("%d번 마카롱: %dcm(%s, %dmm): %s\n", i+1, list[i].getSize(), list[i].getColor(), list[i].getThickness(), txt);
			
		}
		
		
		
	} //list
	
	
	
}//Box
