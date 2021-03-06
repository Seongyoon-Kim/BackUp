package ver2_lec05.exception01;

public class TryCatchFinally02 {
	
	public static void main(String[] args) {
		
		/*
		 * try { System.out.println("try-catch-finally 구문이 실행되었습니다.");
		 * 
		 * int allSum = 10 / 0; } catch (Exception e) {
		 * System.out.println("예외가 발생했습니다."); } finally {
		 * System.out.println("try-catch-finally 구문이 종료되었습니다."); }
		 */
		
		try {
			System.out.println("업무 로직입니다.");
		} catch (Exception e) {
			System.out.println("예외가 발생하였습니다.");
		} finally {
			System.out.println("마지막 위치입니다.");
		}
		
	}

}
