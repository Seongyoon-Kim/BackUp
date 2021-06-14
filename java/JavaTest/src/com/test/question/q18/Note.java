package com.test.question.q18;

public class Note {

	private String size = "A5";
	private String color;
	private int page;
	private String owner;
	private int price = 500;
	private String thickness;
	private boolean owned = false;
	private String result = "";
	
	
	//탭 전환
	//Ctrl + Tab
	
	//작업 히스토리 전환
	//Alt + 좌, 우 방향키
	
	
	
	public void setSize(String size) throws Exception {
		
		if (size.equals("A3")) {
			this.price += 400;
			this.size = size;
		} else if (size.equals("A4")) {
			this.price += 200;
			this.size = size;
		} else if (size.equals("A5")) {
			this.size = size;
		} else if (size.equals("B3")) {
			this.price += 500;
			this.size = size;
		} else if (size.equals("B4")) {
			this.price += 300;
			this.size = size;
		} else if (size.equals("B5")) {
			this.price += 100;
			this.size = size;
		} else {
			throw new Exception("잘못된 크기입니다.");
		}
		
	}//setSize
	
	
	public void setColor(String color) throws Exception {
		
		if (color.equals("검정색")) {
			this.price += 100;
			this.color = color;
		} else if (color.equals("흰색")) {
			this.color = color;
		} else if (color.equals("노란색")) {
			this.price += 200;
			this.color = color;
		} else if (color.equals("파란색")) {
			this.price += 200;
			this.color = color;
		} else {
			throw new Exception("잘못된 색상입니다.");
		}
		
	}//setColor
	
	
	public void setPage(int page) throws Exception {
		
		if (page < 10 || page > 200) {
			throw new Exception("잘못된 페이지 수 입니다.");
		} else if (page <= 50) {
			this.price += (page - 10) * 10;
			this.page = page;
			this.thickness = "얇은";
		} else if (page <= 100) {
			this.price += (page - 10) * 10;
			this.page = page;
			this.thickness = "보통";
		} else if (page <= 200) {
			this.price += (page - 10) * 10;
			this.page = page;
			this.thickness = "두꺼운";
		}
		
	}//setPage
	
	
	public void setOwner(String owner) throws Exception {
		
		for (int i = 0; i<owner.length(); i++) {
			
			int word = owner.charAt(i);
			
			if (owner.length() > 1 && owner.length() < 6 || word >= '가' && word <= '힣') { // 조건식을 메소드로 따로 만드는 방법도 있다.
				owned = true;
				this.owner = owner;
			} else {
				owned = false;
			}
				
		}
	}//setOwner
	
//	private boolean checkLength(String owner) {
//		
//		if (owner.length() >= 2 && owner.length() <= 5) {
//			return true;
//		} else {
//			return false;
//		}
//	}
	
//	private boolean checkChar(String owner)	 {
//		
//		for (int i = 0; i<owner.length(); i++) {
//			
//			char c = owner.charAt(i);
//			
//			if (c < '가' && c > '힣') {
//				return false;
//			}
//			
//		}
//		
//		return true;
//		
//	} //checkChar
	
	
	//printf("형식문자열", 인자) : 출력
	//String format("형식문자열", 인자) : 반환
	
	public String info() {
		
		result += "■■■■■■ 노트 정보 ■■■■■■\n";
		
		if (owned == true) {
			
			result += String.format("소유자: %s\n", owner);
			result += String.format("특성: %s %s %s노트\n", color, thickness, size);
			result += String.format("가격: %,d원\n", price);
			
		} else {
			result += "주인 없는 노트\n";
		}
		
		result += "■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\n";
		
		return result;
		
		
		
		//기본 노트
//		this.price = 500;
//		
//		if (this.size.equals("A3")) {
//			this.price += 400;
//		} else if (this.size.equals("A4")) {
//			this.price += 200;
//		} else if (this.size.equals("A5")) {
//			this.price += 500;
//		} else if (this.size.equals("B4")) {
//			this.price += 300;
//		} else if (this.size.equals("B5")) {
//			this.price += 100;
//		}
//		
//		
//		if (this.color.equals("검정색")) {
//			this.price += 100;
//		} else if (this.color.equals("노랑색")) {
//			this.price += 200;
//		} else if (this.color.equals("파란색")) {
//			this.price += 200;
//		}
//		
//		
//		this.price += (this.page - 10) * 10;
		
	} 
	
	
	
}//main
