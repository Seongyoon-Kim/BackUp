package ver2_lec05.collectionframework03.samplecode08.repository.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class DataRepository {
	
	private static DataRepository instance = new DataRepository();
	
	public static DataRepository getInstance() {
		return instance;
	}
	
	LinkedHashMap<String, Object> saveDataLkMap = null;
	ArrayList<String> saveDataArrList = null;
	
	private DataRepository() {
		
		System.out.println("DataRepository 기본생성자");
		
		saveDataLkMap = new LinkedHashMap<>();
		saveDataArrList = new ArrayList<>();
		
		saveDataLkMap.put("국가1", "한국");
		saveDataLkMap.put("국가2", "미국");
		saveDataLkMap.put("국가3", "중국");
		saveDataLkMap.put("국가4", "일본");
		saveDataLkMap.put("국가5", "러시아");
		
		saveDataArrList.add("전자");
		saveDataArrList.add("자동차");
		saveDataArrList.add("IT");
		saveDataArrList.add("조선");
		saveDataArrList.add("디스플레이");
		saveDataArrList.add("건설");
		saveDataArrList.add("에너지");
		
	}
	
}
