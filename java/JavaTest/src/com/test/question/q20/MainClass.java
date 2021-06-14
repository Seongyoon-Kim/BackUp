package com.test.question.q20;

public class MainClass {
	
	public static void main(String[] args) throws Exception {
		
		Bugles snack = new Bugles();
		
		snack.setWeight(500);
		snack.setCreationTime("2021-04-18");
		System.out.printf("가격: %d원\n", snack.getPrice());
		System.out.printf("유통 기한이 %d일 남았습니다.\n", snack.getExpiration());
		
		snack.eat();
		System.out.println();
		
		Bugles snack2 = new Bugles();
		
		snack2.setWeight(300);
		snack2.setCreationTime("2021-04-01");
		System.out.printf("가격: %d원\n", snack2.getPrice());
		System.out.printf("유통 기한이 %d일 남았습니다.\n", snack2.getExpiration());
		
		snack2.eat();
		
		
	}

}
