package CodeUp;

import java.util.Scanner;

public class Test1024 {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String word = scanner.next();
		
		String wordSplit[] = word.split("");
		
		for (int i=0; i<wordSplit.length; i++) {
			
			System.out.printf("\'%s\'\n", wordSplit[i]);
			
		}
		
	}

}
