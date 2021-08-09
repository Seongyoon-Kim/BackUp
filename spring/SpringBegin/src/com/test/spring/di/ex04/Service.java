package com.test.spring.di.ex04;

import java.util.ArrayList;

public class Service {

	public ArrayList<String> list() {
		
		//File, DB -> 구현된 코드는 다르지만, 두 객체의 역할은 동일하다.(회원 명단 가져오기)
		
//		File file = new File();
//		return file.get();
		
		
//		DB db = new DB();
//		return db.get();
		
		IData data = new DB();
		
		return data.get();
		
	}

}
