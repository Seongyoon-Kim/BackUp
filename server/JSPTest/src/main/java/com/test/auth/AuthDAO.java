package com.test.auth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.mvc.DBUtil;

public class AuthDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AuthDAO() {
		
		try {
			
			conn = DBUtil.open();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public AuthDTO login(AuthDTO dto) {
		
		try {
			
			String sql = "select * from tblUsers where id = ? and pw = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				AuthDTO resultDTO = new AuthDTO();
				
				resultDTO.setId(rs.getString("id"));
				resultDTO.setPw(rs.getString("pw"));
				resultDTO.setName(rs.getString("name"));
				resultDTO.setLv(rs.getString("lv"));
				resultDTO.setRegdate(rs.getString("regdate"));
				
				return resultDTO;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}