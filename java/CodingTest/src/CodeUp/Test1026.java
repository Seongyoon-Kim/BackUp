package CodeUp;

import java.util.Scanner;

public class Test1026 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String[] time = scanner.next().split(":");
		
		System.out.println(Integer.parseInt(time[1]));
		
	}

}
