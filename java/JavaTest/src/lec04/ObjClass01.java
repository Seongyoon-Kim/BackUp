package lec04;

public class ObjClass01 {
	
	public static void main(String[] args) {
		
		ProcureItemVO ProcureItemVO = new ProcureItemVO();
		
		System.out.println("아무것도 세팅하지 않은 객체 ::: " + ProcureItemVO.toString());
		
		ProcureItemVO.setId(1);
		ProcureItemVO.setName("옥수수");
		ProcureItemVO.setPrice(10000);
		ProcureItemVO.setQuantity(2);
		
		System.out.println("옥수수 VO : " + ProcureItemVO.toString());
		
		ProcureItemVO procureItemVoNull = null;
		System.out.println("procureItemVoNull ::: " + procureItemVoNull);
		
	}

}
