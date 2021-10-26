package com.test.ajax;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AjaxDAO {

	@Autowired
	private SqlSessionTemplate template;

	public int getUserCount() {
		
		return template.selectOne("ajax.getUserCount");
	}

	public String getUserName() {
		
		return template.selectOne("ajax.getUserName");
	}

	public UserDTO getUser() {
				
		return template.selectOne("ajax.getUser");
	}
	
}











