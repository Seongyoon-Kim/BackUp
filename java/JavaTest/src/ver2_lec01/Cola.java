package ver2_lec01;

public class Cola {
	
	public String colaName = String.valueOf("콜라");
	
	public void showColaProperty() {
		
		System.out.println("음료 종류는 탄산입니다.");
		
	}
	
	public void showColaName(String getColaName) {
		
		colaName = String.valueOf(getColaName);
		System.out.println("콜라이름 ::: " + colaName);
		
	}

}
