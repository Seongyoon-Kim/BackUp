package CodeUp;

import java.util.Scanner;

public class Test1046 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		int c = scanner.nextInt();
		
		System.out.println(a + b + c);
		System.out.printf("%.1f", (float)(a + b + c) / 3);
		
	}

}
