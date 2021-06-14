package com.test.java;

public class Ex05_DataType {
	
	public static void main(String[] args) {
		
		// 1. 9개 자료형
		// 2. 주변의 데이터 선택
		// 3. 자료형 선택 + 변수 생성 + 데이터 대입 + 화면 출력
		// 4. 각 자료형 X 10개
		
		// 샘플
		// - 내 몸무게 : 70kg -> 데이터는 항상 변할 수 있다.(전제조건)
		
		//short weight;
		
		//weight = 70;
		
		//System.out.println("내 몸무게는 " + weight + "kg입니다.");
		
		
		//byte
		//short
		//int
		//long
		//float
		//double
		//char
		//boolean
		//string
		
		
		byte weight = 89;
		System.out.println("나의 몸무게는 " + weight + "kg입니다.");
		
		byte num = 8;
		System.out.println("나의 사물함 번호는 " + num + "번입니다.");
		
		byte wat = 65;
		System.out.println("내 노트북의 전력량은 " + wat + "와트입니다.");
		
		byte size = 35;
		System.out.println("내 노트북의 크기는 " + size + "cm입니다.");
		
		byte family = 4;
		System.out.println("나의 가족은 " + family + "명입니다.");
		
		byte days = 3, weeks = 1;
		System.out.println("나는 아르바이트를 "+ weeks + "주일에 " + days + "일합니다.");
		
		byte month = 1, books = 3;
		System.out.println("나는 책을 " + month + "달에 " + books + "권 읽습니다.");
		
		byte years = 1, dentist = 2;
		System.out.println("나는 치과를 " + years + "년에 " + dentist + "번 갑니다.");
		
		
		
		
		short floor = 17, noh = 1;
		System.out.println("우리 집은 " + floor + "층에 " + noh + "호입니다.");
		
		short temp = 13, hum = 38;
		System.out.println("오늘의 온도와 습도는 " + temp + "도에 " + hum + "%입니다.");
		
		short hour = 12, minute = 10;
		System.out.println("현재 시간은 " + hour + "시 " + minute + "분입니다.");
		
		short height = 191, age = 28;
		System.out.println("나의 키와 나이는 " + height + "cm이며 " + age + "살입니다.");
		
		short Month = 3, Days = 31;
		System.out.println("오늘은 " + Month + "월 " + Days + "일입니다.");
		
		
		
		
		int series = 7, price = 1_000_000;
		System.out.println("내 스마트폰은 아이폰 " + series + "이고 " + price + "원입니다.");
		
		int generation = 2, Price = 300_000;
		System.out.println("내 에어팟은 " + generation + "세대이고, " + Price + "원입니다.");
		
		int Generation = 3, PRice = 700_000;
		System.out.println("내 아이패드는 " + Generation + "세대이고, " + PRice + "원입니다.");
		
		int displacement = 2000, mileage = 15;
		System.out.println("우리 집의 자동차는 " + displacement + "CC의 연비를 갖췄고, " + "리터당 " + mileage + "km를 갈 수 있습니다.");
		
		int bit = 70_000_000, roe = 30;
		System.out.println("비트코인은 " + bit + "원을 돌파했으며, " + "나의 수익률은 " + roe + "%입니다.");
		
		
		
		
		
		long population = 50_000_000, twentiesPopulation = 6_820_000;
		System.out.println("우리나라의 총 인구는 " + population + "명이며, 20대의 인구는 " + twentiesPopulation + "명입니다.");
		
		long worldPopulation = 7_600_000_000L, asianPopulation = 4_500_000_000L;
		System.out.println("전 세계의 총 인구는 " + worldPopulation + "명이며, 아시아 인구는 " + asianPopulation + "명입니다.");
		
		long gdp = 1600000000000L, gnp = 2000000000000L;
		System.out.println("한국의 GDP는 " + gdp + "이며, GNP는 " + gnp + "입니다.");
		
		long americaArea = 9834000, koreaArea = 100210;
		System.out.println("미국 땅의 면적은 " + americaArea + "km^2이고, 한국 땅의 면적은 " + koreaArea + "km^2입니다.");
		
		long bigCompanyAveragePay = 5140000, smallCompanyAveragePay = 2450000;
		System.out.println("대기업 평균 임금은 " + bigCompanyAveragePay + "원이며, 중소기업 평균 임금은 " + smallCompanyAveragePay + "원입니다.");
		
		
		
		
		float var1 = 3.14F, var2 = 5.89F;
		System.out.println(var1 + var2);
		
		float Height = 191.3F;
		float width = 38.2F;
		System.out.println(Height + width);
		
		float amount = 287.55F;
		float secondAmount = 123.88F;
		float thirdAmount = amount + secondAmount;
		System.out.println("amount + secondAmount = " + thirdAmount);
		
		float water = 12.3F;
		float drink = 32.9F;
		float milk = 1.8F;
		float total = water * drink * milk;
		System.out.println("water X drink X milk = " + total);
		
		
		
		
		double snack = 3.1459;
		double cookie = 2.987;
		double coke = 2.34;
		double Total = snack - cookie / coke;
		System.out.println("snack - cookie / coke = " + Total);
		
		double footSize = 274.8;
		double handSize = 18.2934;
		double bodySize = 432.13;
		double totalSize = footSize + handSize / bodySize;
		System.out.println("footSize + handSize / bodySize = " + totalSize);
		
		double income = 299.9077;
		double expense = 182.3930405;
		double netProfit = income - expense;
		System.out.println("netProfit: " + netProfit);
		
		
	
		
		char firstName = '김';
		System.out.println("나의 성은 " + firstName + "이다.");
		
		char motherFirstName = '홍';
		System.out.println("나의 엄마의 성은 " + motherFirstName + "이다.");
		
		char secondName = '성';
		System.out.println("나의 두번째 이름은 " + secondName + "이다.");
		
		char thirdName = '윤';
		System.out.println("나의 세번째 이름은 " + thirdName + "이다.");
		
		char first = '김', second = '이', third = '박', forth = '최', fifth = '정', sixth = '강';
		System.out.println("우리나라 성씨 순위는 " + first + ", " + second + ", " + third + ", " + forth + ", " + fifth + ", " + sixth + "입니다.");
		
		
		
		boolean a1 = true;
		System.out.println("a1: " + a1);
		
		boolean a2 = false;
		System.out.println("a2: " + a2);
		
		boolean b1 = true;
		System.out.println("b1: " + b1);
		
		boolean b2 = false;
		System.out.println("b2: " + b2);
		
		boolean c1 = true;
		System.out.println("c1: " + c1);
		
		boolean c2 = false;
		System.out.println("c2: " + c2);
		
		boolean d1 = true;
		System.out.println("d1: " + d1);
		
		boolean d2 = false;
		System.out.println("d2: " + d2);
		
		boolean f1 = true;
		System.out.println("f1: " + f1);
		
		boolean f2 = false;
		System.out.println("f2: " + f2);

		
		
		
		String name = "김성윤";
		System.out.println("나의 이름은 " + name + "입니다.");
		
		String adress = "인천광역시 서구 청라에메랄드로 156, 203동 1701호";
		System.out.println("우리집 주소는 " + adress + "입니다.");
		
		String university = "인하대학교";
		System.out.println("내가 졸업한 대학교는 " + university + "입니다.");
		
		String highschool = "세일고등학교";
		System.out.println("내가 졸업한 고등학교는 " + highschool + "입니다.");
		
		String elementaryschool = "만석초등학교";
		System.out.println("내가 졸업한 초등학교는 " + elementaryschool + "입니다.");
		
		String military = "공군 제91항공시설전대";
		System.out.println("내가 복무한 군부대는 " + military + "입니다.");
		
		String hobby = "농구하기와 영화보기";
		System.out.println("나의 취미는 " + hobby + "입니다.");
		
		String futureHope = "행복하게 살기";
		System.out.println("나의 장래 희망은 " + futureHope + "입니다.");
		
		String interest = "주식과 비트코인";
		System.out.println("현재 나의 관심사는 " + interest + "입니다.");
		
		
		
		
		
	}
	

}
