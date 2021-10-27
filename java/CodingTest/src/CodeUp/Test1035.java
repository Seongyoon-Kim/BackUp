package CodeUp;

import java.util.Scanner;

public class Test1035 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String hexNum = scanner.next();
		
		int num = Integer.parseInt(hexNum, 16);
		
		System.out.println(Integer.toOctalString(num));
		
	}

}
