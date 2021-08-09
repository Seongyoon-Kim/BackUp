package com.test.spring.di.ex04;

import java.beans.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.jdi.connect.spi.Connection;

public class DB implements IData {

	public ArrayList<String> get() {
		
		//DB로부터 회원 명단 가져오기
		
		try {
			
			java.sql.Connection conn = null;
			java.sql.Statement stat = null;
			ResultSet rs = null;
			
			conn = DBUtil.open();
			
			String sql = "select name from tblUsers order by name asc";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<String> list = new ArrayList<String>();
			
			while (rs.next()) {
				list.add(rs.getString("name"));
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
