package ver2_lec05.collectionframework03.samplecode08.repository.impl;

import ver2_lec05.collectionframework03.samplecode08.repository.CallDataRepository;

public class CallDataRepositoryImpl implements CallDataRepository {
	
	DataRepository dataRepository = DataRepository.getInstance();
	
	private static CallDataRepositoryImpl instance = new CallDataRepositoryImpl();
	
	public static CallDataRepositoryImpl getInstance() {
		return instance;
	}
	
	private CallDataRepositoryImpl() {
		System.out.println("CallDataRepositoryImpl 기본생성자");
	}

	@Override
	public Object getNationData(String nationName) {
		return dataRepository.saveDataLkMap.get(nationName);
	}

	@Override
	public String getIndustryData(int paramIndex) {
		return dataRepository.saveDataArrList.get(paramIndex);
	}
	
	
	
}
