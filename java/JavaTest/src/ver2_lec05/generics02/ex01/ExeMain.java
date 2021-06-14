package ver2_lec05.generics02.ex01;

public class ExeMain {
	
	public static void main(String[] args) {
		
		ExeB b = new ExeB();
		String method1 = b.method1("테스트");
		String method2 = ExeB.method2("테스트2");
		System.out.println("method1 : " + method1);
		System.out.println("method2 : " + method2);
		
		ExeA<String> exeA1 = new ExeA<>("1");
		String t1 = exeA1.getT();
		String method3 = b.method3(exeA1);
		String method4 = ExeB.method04(exeA1);
		
		System.out.println("t1 : " + t1);
		System.out.println("method3 : " + method3);
		System.out.println("method4 : " + method4);
		
		ExeA exeA2 = new ExeA("2");
		Object tg2 = exeA2.getT();
		Object method6 = b.method3(exeA2);
		Object method5 = ExeB.method04(exeA2);
		
		System.out.println(tg2);
		System.out.println(method6);
		System.out.println(method5);
		
		ExeA<Integer> exeAInt = new ExeA<>(100);
		Integer getIntT = exeAInt.getT();
		System.out.println(getIntT);
		Integer intExeAInt1 = b.method3(exeAInt);
		Integer intExeAInt2 = ExeB.method04(exeAInt);
		
		System.out.println("intExeAInt1 : " + intExeAInt1);
		System.out.println("intExeAInt2 : " + intExeAInt2);
		
	}

}
