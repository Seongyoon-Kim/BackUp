package ver2_lec04;

public class InnerClassMake {
	
	public void outMainMethod1() {
		System.out.println("외부 클래스의 메소드1");
	}
	
	class SampleInnerClass {
		
		public void inMethod1() {
			System.out.println("내부 클래스의 메소드1");
		}
		
	}

}
