package ver2_lec05.collectionframework03.samplecode08.main;

import ver2_lec05.collectionframework03.samplecode08.service.impl.CallDataServiceImpl;

public class MainMethod {
	
	public static CallDataServiceImpl callDataServiceImpl = new CallDataServiceImpl();
	
	public static void main(String[] args) {
		
		System.out.println("getNationData: " + callDataServiceImpl.getNationData("국가5"));
		System.out.println("getIndustryData: " + callDataServiceImpl.getIndustryData(4));
		
	}

}
