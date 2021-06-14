package ver2_lec03;

public class MainMethod {
	
	public static void main(String[] args) {
		
		System.out.println("메인 메소드를 실행합니다.");
		
		ExtendsClass extendsClass = new ExtendsClass();
		
		extendsClass.methodSecond();
		int thirdResult = extendsClass.methodThird();
		System.out.println("세번째 값입니다. ::: " + thirdResult);
		
	}

}
