package com.afd.member.mypage.mycomment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.afd.DBUtil;

public class MyCommentDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MyCommentDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("MyCommentDAO.MyCommentDAO()");
			e.printStackTrace();
		}

	}

	public ArrayList<MyCommentDTO> qnaList(MyCommentDTO dto) {
		
		try {
			
			String sql = "select * from vwTechQna where memberSeq = ?";
			
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			//System.out.println("SQL: " + sql);
			
			ArrayList<MyCommentDTO> qnaList = new ArrayList<MyCommentDTO>();
			
			while (rs.next()) {
				
				dto.setTechQnaSeq(rs.getString("techQnaSeq"));
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setReadCount(rs.getString("readCount"));
				dto.setImage(rs.getString("image"));
				dto.setIsNew(rs.getString("isNew"));
				dto.setNickName(rs.getString("nickName"));
				dto.setId(rs.getString("id"));
				dto.setCcnt(rs.getString("ccnt"));
				dto.setRecommendCount(rs.getString("recommendCount"));
				dto.setDecommendCount(rs.getString("decommendCount"));
				
				qnaList.add(dto);
				
			}
			
			return qnaList;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
