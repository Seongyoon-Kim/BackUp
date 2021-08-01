package com.afd.member.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.afd.DBUtil;

public class MyPageDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MyPageDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("MyPageDAO.MyPageDAO()");
			e.printStackTrace();
		}

	}

	public MyPageDTO list(MyPageDTO dto) {
		
		try {
			
			String sql = "select * from tblMember where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setNickName(rs.getString("nickName"));
				dto.setRegistrationNumber(rs.getString("registrationNumber"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setEmail(rs.getString("email"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO myProfileList(MyPageDTO dto) {
		
		try {
			
			String sql = "select * from vwMemberProfile where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setMemberProfileSeq(rs.getString("memberProfileSeq"));
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setCareer(rs.getString("career"));
				dto.setAcademicBackground(rs.getString("academicBackground"));
				dto.setGender(rs.getString("gender"));
				dto.setInterestOccupation(rs.getString("interestOccupation"));
				dto.setAvailableLanguage(rs.getString("availableLanguage"));
				dto.setMajor(rs.getString("major"));
				dto.setScore(rs.getString("score"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setNickName(rs.getString("nickName"));
				dto.setRegistrationNumber(rs.getString("registrationNumber"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setEmail(rs.getString("email"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO qnaScrapCount(MyPageDTO dto) {
		
		try {
			
			String sql = "select count(*) as qnaScrapCount from tblTechQnaScrap where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setQnaScrapCount(rs.getString("qnaScrapCount"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO studyScrapCount(MyPageDTO dto) {
		
		try {
			
			String sql = "select count(*) as studyScrapCount from tblStudyScrap where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setStudyScrapCount(rs.getString("studyScrapCount"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO comScrapCount(MyPageDTO dto) {
		
		try {
			
			String sql = "select count(*) as comScrapCount from tblComScrap where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setComScrapCount(rs.getString("comScrapCount"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO jobPostScrapCount(MyPageDTO dto) {
		
		try {
			
			String sql = "select count(*) as jobPostScrapCount from tblJobPostScrap where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setJobPostScrapCount(rs.getString("jobPostScrapCount"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public MyPageDTO spaceScrapCount(MyPageDTO dto) {
		
		try {
			
			String sql = "select count(*) as jobPostScrapCount from tblJobPostScrap where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMemberSeq());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				dto.setSpaceScrapCount(rs.getString("jobPostScrapCount"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public int myProfileEdit(MyPageDTO dto) {
		
		try {
			
			String sql = "update tblMemberProfile set career = ?, academicBackground = ?, gender = ?, interestOccupation = ?, availableLanguage = ?, major = ? where memberSeq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getCareer());
			pstat.setString(2, dto.getAcademicBackground());
			pstat.setString(3, dto.getGender());
			pstat.setString(4, dto.getInterestOccupation());
			pstat.setString(5, dto.getAvailableLanguage());
			pstat.setString(6, dto.getMajor());
			pstat.setString(7, dto.getMemberSeq());
			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}

	

}
