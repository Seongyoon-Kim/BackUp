package lec08.jth.world;

import java.util.Scanner;

import lec08.jth.world.machine.SetInfo;

public class PracticeMainMethod {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		SetInfo setInfo = new SetInfo();
		
		setInfo.setCompanyInfo();
		
		boolean loop = true;
		
		while (loop) {
			
			System.out.print("회사명 입력: ");
			
			String companyName = scanner.next();
			System.out.println();
			
			String lowerCompanyName = companyName.toLowerCase();
			
			showCompanyName(scanner, companyName, lowerCompanyName, setInfo);
			
			System.out.println();
			System.out.println("종료 하기를 원하신다면 1을 아니면 아무 숫자나 입력해주세요.");
			
			int result = scanner.nextInt();
			
			if (result == 1) {
				
				loop = false;
				
				System.out.println("프로그램을 종료하겠습니다.");
				
			}
			
		} // while
		
	} // main

	public static void showDetailInformation(SetInfo setInfo, int kindCompany, int kindNumber) {
		
		switch(kindCompany) {
		
			case 1:
			
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.hcc.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.hcc.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.hcc.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.hcc.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.hcc.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.hcc.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.hcc.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
			
			case 2:
				
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.lgChem.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.lgChem.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.lgChem.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.lgChem.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.lgChem.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.lgChem.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.lgChem.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
				
			case 3:
				
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.lotteChemical.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.lotteChemical.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.lotteChemical.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.lotteChemical.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.lotteChemical.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.lotteChemical.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.lotteChemical.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
			
			case 4:
				
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.lgElectronics.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.lgElectronics.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.lgElectronics.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.lgElectronics.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.lgElectronics.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.lgElectronics.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.lgElectronics.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
			
			case 5:
				
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.samElec.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.samElec.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.samElec.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.samElec.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.samElec.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.samElec.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.samElec.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
			
			case 6:
				
				switch (kindNumber) {
				
					case 1:
						System.out.println("회사명: " + setInfo.skhynix.getCompanyName());
						break;
						
					case 2:
						System.out.println("회사 주력 사업: " + setInfo.skhynix.getCompanyProperty());
						break;
						
					case 3:
						System.out.println("회사 위치: " + setInfo.skhynix.getHeadOfficeAddress());
						break;
						
					case 4:
						System.out.printf("근무인원: %d명", setInfo.skhynix.getTotalEmployee());
						System.out.println();
						break;
						
					case 5:
						System.out.printf("매출액: %,d(천만)원", setInfo.skhynix.getSalesAmount());
						System.out.println();
						break;
						
					case 6:
						System.out.printf("자산액: %,d(천만)원", setInfo.skhynix.getPropertyAmount());
						System.out.println();
						break;
						
					case 7:
						System.out.printf("부채액: %,d(천만)원", setInfo.skhynix.getCapitalAmount());
						System.out.println();
						break;
						
					default:
						System.out.println("잘못된 번호입니다.");
						break;
			
				}
				
			break;
			
			default :
				
				System.out.println("올바른 번호를 선택해주세요.");
				break;
		
		} // switch outer
		
		
	} // showDetailInformation

	public static int selectInformationNumber(Scanner scanner, SetInfo setInfo) {
		
		System.out.println("어떤 정보를 원하세요?");
		System.out.println("1. 회사명");
		System.out.println("2. 회사 주력 사업");
		System.out.println("3. 회사 위치");
		System.out.println("4. 근무 인원");
		System.out.println("5. 매출액");
		System.out.println("6. 자산액");
		System.out.println("7. 부채액");
		
		System.out.println();
		System.out.print("번호입력: ");
		
		String informationNumber = scanner.next();
		
		int intInformationNumber = 0;
		
		try {
			
			intInformationNumber = Integer.parseInt(informationNumber);
			
		} catch (Exception e) {
			
			System.out.println("숫자만 입력해주셔야 합니다.");
			
		}
		
		return intInformationNumber;
	}

	public static void showCompanyName (Scanner scanner, String companyName, String lowerCompanyName, SetInfo setInfo) {
		
		int kindCompany = 0;
		int kindNumber = 0;
		
		if (lowerCompanyName.contains("한화")) {
			
			System.out.println(setInfo.hcc.getCompanyName() + "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 1;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		} else if (lowerCompanyName.contains("lg화")) {
			
			System.out.println(setInfo.lgChem.getCompanyName() + "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 2;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		} else if (lowerCompanyName.contains("롯데")) {
			
			System.out.println(setInfo.lotteChemical.getCompanyName() + "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 3;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		} else if (lowerCompanyName.contains("lg전")) {
			
			System.out.println(setInfo.lgElectronics.getCompanyName() + "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 4;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		} else if (lowerCompanyName.contains("삼성")) {
			
			System.out.println(setInfo.samElec.getCompanyName() +  "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 5;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		} else if (lowerCompanyName.contains("sk")) {
			
			System.out.println(setInfo.skhynix.getCompanyName() + "(을)를 선택하셨습니다.");
			System.out.println();
			
			kindCompany = 6;
			
			kindNumber = selectInformationNumber(scanner, setInfo);
			
		}
		
		System.out.println();
		showDetailInformation(setInfo, kindCompany, kindNumber);
		
	} // showCompanyName

} // PracticeMainMethod
