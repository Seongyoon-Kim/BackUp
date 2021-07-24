package com.test.myapp.map;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.myapp.DBUtil;

public class MapDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MapDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("MapDAO.MapDAO()");
			e.printStackTrace();
		}

	}

	public void add(MapDTO dto) {
		
		try {
			
			String sql = "insert into tblPlace (seq, name, lat, lng) values (seqPlace.nextVal, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getLat());
			pstat.setString(3, dto.getLng());
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<MapDTO> list() {
		
		try {
			
			ArrayList<MapDTO> list = new ArrayList<MapDTO>();
			
			String sql = "select * from tblPlace order by name";
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			while (rs.next()) {
				
				MapDTO dto = new MapDTO();
				
				dto.setName(rs.getString("name"));
				dto.setLat(rs.getString("lat"));
				dto.setLng(rs.getString("lng"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
