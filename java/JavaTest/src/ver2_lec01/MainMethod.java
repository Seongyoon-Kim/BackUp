package ver2_lec01;

public class MainMethod {
	
	public static void main(String[] args) {
		
		CocaCola coca = new CocaCola();
		coca.showColaName("코카콜라는 맛있다.");
		coca.showColaProperty();
		coca.whereIsCocaCola();
		
		PepsiCola pepsi = new PepsiCola();
		pepsi.showColaName("펩시콜라도 맛있다.");
		pepsi.showColaProperty();
		pepsi.whereIsPepsiCola();
		
	}

}
