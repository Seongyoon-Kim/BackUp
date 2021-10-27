package CodeUp;

import java.util.Scanner;

public class Test1027 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String[] date = scanner.next().split("\\.");
		
		int year = Integer.parseInt(date[0]);
		int month = Integer.parseInt(date[1]);
		int day = Integer.parseInt(date[2]);
		
		System.out.printf("%02d-%02d-%04d", day, month, year);
		
	}

}
