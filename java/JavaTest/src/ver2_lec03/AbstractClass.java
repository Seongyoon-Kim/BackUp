package ver2_lec03;

public abstract class AbstractClass {
	
	public abstract void methodFirst();
	
	public void methodSecond() {
		System.out.println("추상클래스 methodSecond");
		methodFirst();
	}
	
	public int methodThird() {
		return 10 + 2;
	}

}
