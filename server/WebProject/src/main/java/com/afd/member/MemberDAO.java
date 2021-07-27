package com.afd.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.afd.DBUtil;

public class MemberDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	//DB연결
	public MemberDAO() {
		
		try {
			
			conn = DBUtil.open();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.MemberDAO()");
			e.printStackTrace();
		}
		
	}
	
	public MemberDTO login(MemberDTO dto) {

		try {
			
			//로그인 처리
			String sql = "select * from tblMember where id=? and pw=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				//로그인 O
				MemberDTO resultDTO = new MemberDTO();
				
				resultDTO.setMemberSeq(rs.getString("memberSeq"));
				resultDTO.setName(rs.getString("name"));
				resultDTO.setId(rs.getString("id"));
				resultDTO.setNickName(rs.getString("nickName"));
				resultDTO.setRegistrationNumber(rs.getString("registrationNumber"));
				resultDTO.setTel(rs.getString("tel"));
				resultDTO.setAddress(rs.getString("address"));
				resultDTO.setEmail(rs.getString("email"));
			
				return resultDTO;
			}
	
		} catch (Exception e) {
			System.out.println("MemberDAO.login()");
			e.printStackTrace();
		} 
	
		
		return null;
	}
	
}
