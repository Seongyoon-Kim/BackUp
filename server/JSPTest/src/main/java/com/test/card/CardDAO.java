package com.test.card;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.mvc.DBUtil;

public class CardDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CardDAO() {
		
		try {
			
			conn = DBUtil.open();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public int add(CardDTO dto) {
		
		try {
			
			String sql = "insert into tblCard (seq, korname, engname, tel, email, company, position) values (seqCard.nextVal, ?, ?, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getKorname());
			pstat.setString(2, dto.getEngname());
			pstat.setString(3, dto.getTel());
			pstat.setString(4, dto.getEmail());
			pstat.setString(5, dto.getCompany());
			pstat.setString(6, dto.getPosition());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public ArrayList<CardDTO> list() {
		
		try {
			
			String sql = "select * from tblCard order by seq desc";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			ArrayList<CardDTO> list = new ArrayList<CardDTO>();
			
			while (rs.next()) {
				
				CardDTO dto = new CardDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setKorname(rs.getString("korname"));
				dto.setEngname(rs.getString("engname"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setCompany(rs.getString("company"));
				dto.setPosition(rs.getString("position"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public int delete(CardDTO dto) {
		
		try {
			
			String sql = "delete from tblCard where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeq());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public int edit(CardDTO dto) {
		
		try {
			
			String sql = "update tblCard set korname = ?, engname = ?, tel = ?, email = ?, company = ?, position = ? where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getKorname());
			pstat.setString(2, dto.getEngname());
			pstat.setString(3, dto.getTel());
			pstat.setString(4, dto.getEmail());
			pstat.setString(5, dto.getCompany());
			pstat.setString(6, dto.getPosition());
			pstat.setString(7, dto.getSeq());
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	public HashMap<String, String> editlist(CardDTO dto) {
		
		try {
			
			String sql = "select * from tblCard where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeq());
			
			rs = pstat.executeQuery();
			
			while (rs.next()) {
				
				HashMap<String, String> map = new HashMap<String, String>();
				
				map.put("seq", rs.getString("seq"));
				map.put("korname", rs.getString("korname"));
				map.put("engname", rs.getString("engname"));
				map.put("tel", rs.getString("tel"));
				map.put("email", rs.getString("email"));
				map.put("company", rs.getString("company"));
				map.put("position", rs.getString("position"));
				
				return map;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	

	

}
