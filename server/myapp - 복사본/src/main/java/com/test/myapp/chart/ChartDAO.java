package com.test.myapp.chart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.myapp.DBUtil;

public class ChartDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public ChartDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("ChartDAO.ChartDAO()");
			e.printStackTrace();
		}

	}

	public ArrayList<ChartDTO> list1() {
		
		try {
			
			String sql = "select name, (select count(*) from tblBoards where id = tblUsers.id) as cnt from tblUsers";
			
			stat = conn.createStatement();
			
			rs = stat.executeQuery(sql);
			
			ArrayList<ChartDTO> list = new ArrayList<ChartDTO>();
			
			while (rs.next()) {
				
				ChartDTO dto = new ChartDTO();
				dto.setName(rs.getString("name"));
				dto.setCnt(rs.getString("cnt"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<ChartDTO> list2() {
		
		try {
			
			String sql = "select name, (select count(*) from tblComments where id = tblUsers.id) as cnt from tblUsers";
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ChartDTO> list = new ArrayList<ChartDTO>();
			
			while (rs.next()) {
				
				ChartDTO dto = new ChartDTO();
				dto.setName(rs.getString("name"));
				dto.setCnt(rs.getString("cnt"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
