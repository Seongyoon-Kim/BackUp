package CodeUp;

import java.util.Scanner;

public class Test1020 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String ssn = scanner.next();
		
		ssn = ssn.replaceAll("-", "");
		
		System.out.println(ssn);
		
	}

}
