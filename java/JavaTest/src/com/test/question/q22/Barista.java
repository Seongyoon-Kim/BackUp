package com.test.question.q22;

public class Barista {
	
	public Espresso makeEspresso(int bean) {
		
		Espresso espresso = new Espresso();
		
		espresso.setBean(bean);
		
		Coffee.espresso++;
		Coffee.bean += bean;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
				
		return espresso;
		
	}//makeEspresso
	
	public Espresso[] makeEspressoes(int bean, int count) {
		
		Espresso[] espressoes = new Espresso[count];
		
		for (int i=0; i<count; i++) {
			
			espressoes[i] = new Espresso();
			
			espressoes[i].setBean(bean);
			
		}
		
		Coffee.espresso += count;
		Coffee.bean += bean * count;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
		
		return espressoes;
		
		
	}//makeEspressoes
	
	public Latte makeLatte(int bean, int milk) {
		
		Latte latte = new Latte();
		
		latte.setBean(bean);
		latte.setMilk(milk);
		
		Coffee.latte++;
		Coffee.bean += bean;
		Coffee.milk += milk;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
		Coffee.milkTotalPrice = (int)(Coffee.milk * Coffee.milkUnitPrice);
		
		return latte;
		
	}//makeLatte
	
	public Latte[] makeLattes(int bean, int milk, int count) {
		
		Latte[] lattes = new Latte[count];
		
		for (int i=0; i<count; i++) {
			
			lattes[i] = new Latte();
			lattes[i].setBean(bean);
			lattes[i].setMilk(milk);
			
		}
		
		Coffee.latte += count;
		Coffee.bean += bean * count;
		Coffee.milk += milk * count;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
		Coffee.milkTotalPrice = (int)(Coffee.milk * Coffee.milkUnitPrice);
		
		return lattes;
		
	}//makeLattes
	
	public Americano makeAmericano(int bean, int water, int ice) {
		
		Americano americano = new Americano();
		
		americano.setBean(bean);
		americano.setWater(water);
		americano.setIce(ice);
		
		Coffee.americano++;
		Coffee.bean += bean;
		Coffee.water += water;
		Coffee.ice += ice;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
		Coffee.waterTotalPrice = (int)(Coffee.water * Coffee.waterUnitPrice);
		Coffee.iceTotalPrice = (int)(Coffee.ice * Coffee.iceUnitPrice);
		
		return americano;
		
	}//makeAmericano
	
	public Americano[] makeAmericanos(int bean, int water, int ice, int count) {
		
		Americano[] americanos = new Americano[count];
		
		for (int i=0; i<count; i++) {
			
			americanos[i] = new Americano();
			
			americanos[i].setBean(bean);
			americanos[i].setWater(water);
			americanos[i].setIce(ice);
			
		}
		
		Coffee.americano += count;
		Coffee.bean += bean * count;
		Coffee.water += water * count;
		Coffee.ice += ice * count;
		Coffee.beanTotalPrice = (int)(Coffee.bean * Coffee.beanUnitPrice);
		Coffee.waterTotalPrice = (int)(Coffee.water * Coffee.waterUnitPrice);
		Coffee.iceTotalPrice = (int)(Coffee.ice * Coffee.iceUnitPrice);
		
		return americanos;
		
	}//makeAmericanos
	
	public void result() {
		
		System.out.println("===================");
		System.out.println("?????? ??????");
		System.out.println("===================\n");
		
		System.out.println("------------");
		System.out.println("?????? ?????????");
		System.out.println("------------");
		System.out.printf("???????????????: %d???\n", Coffee.espresso);
		System.out.printf("???????????????: %d???\n", Coffee.americano);
		System.out.printf("??????: %d???\n\n", Coffee.latte);
		
		System.out.println("------------");
		System.out.println("????????? ?????????");
		System.out.println("------------");
		System.out.printf("??????: %dg\n", Coffee.bean);
		System.out.printf("???: %,dml\n", Coffee.water);
		System.out.printf("??????: %d???\n", Coffee.ice);
		System.out.printf("??????: %,dml\n\n", Coffee.milk);
		
		System.out.println("------------");
		System.out.println("?????????");
		System.out.println("------------");
		System.out.printf("??????: %,d???\n", Coffee.beanTotalPrice);
		System.out.printf("???: %,d???\n", Coffee.waterTotalPrice);
		System.out.printf("??????: %,d???\n", Coffee.iceTotalPrice);
		System.out.printf("??????: %,d???\n", Coffee.milkTotalPrice);
		
	}
	

}//Barista
