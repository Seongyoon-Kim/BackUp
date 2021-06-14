package ver2_lec05.thread04.one;

public class ThreadExerMain02 {
	
	public static void main(String[] args) {
		
		System.out.println("메인 함수 실행");
		
		Thread thread1 = new DoThread("Alpha", 1000);
		Thread thread2 = new DoThread("Bravo", 700);
		
		Thread thread3 = new Thread(new DoRunnable("Charlie", 300));
		
		thread1.start();
		thread2.start();
		thread3.start();
		
		System.out.println("메인 함수 종료");
		
	}

}
