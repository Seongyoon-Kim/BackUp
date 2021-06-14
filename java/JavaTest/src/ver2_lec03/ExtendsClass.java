package ver2_lec03;

public class ExtendsClass extends AbstractClass{

	@Override
	public void methodFirst() {
		System.out.println("상속받은 클래스에 오버라이드 된 methodFirst");
	}

	@Override
	public void methodSecond() {
		System.out.println("상속받은 클래스에 약간의 로직이 더 들어갑니다.");
		super.methodSecond();
	}

	@Override
	public int methodThird() {
		int getData = super.methodThird();
		int addMoreValue = 12;
		return getData + addMoreValue;
	}

}
