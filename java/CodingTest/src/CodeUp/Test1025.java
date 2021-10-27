package CodeUp;

import java.util.Scanner;

public class Test1025 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String[] number = scanner.next().split("");
		
		System.out.println("[" + Integer.parseInt(number[0]) * 10000 + "]");
		System.out.println("[" + Integer.parseInt(number[1]) * 1000 + "]");
		System.out.println("[" + Integer.parseInt(number[2]) * 100 + "]");
		System.out.println("[" + Integer.parseInt(number[3]) * 10 + "]");
		System.out.println("[" + Integer.parseInt(number[4]) + "]");
		
		
	}

}
