package CodeUp;

import java.util.Scanner;

public class Test1023 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String a = scanner.next();
		
		String list[] = a.split("[.]");
		
		System.out.println(list[0]);
		System.out.println(list[1]);
		
	}

}
