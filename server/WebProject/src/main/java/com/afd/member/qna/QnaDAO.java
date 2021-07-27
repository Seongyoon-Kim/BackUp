package com.afd.member.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.afd.DBUtil;

public class QnaDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public QnaDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			System.out.println("QnaDAO.QnaDAO()");
			e.printStackTrace();
		}

	}

	public ArrayList<QnaDTO> list() {

		try {

			String sql = "select * from vwTechQna order by techQnaSeq desc";

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<QnaDTO> list = new ArrayList<QnaDTO>();

			while (rs.next()) {

				QnaDTO dto = new QnaDTO();

				dto.setTechQnaSeq(rs.getString("techQnaSeq"));
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setReadcount(rs.getString("readcount"));
				dto.setImage(rs.getString("image"));
				dto.setNickName(rs.getString("nickName"));
				dto.setId(rs.getString("id"));
				dto.setCcnt(rs.getString("ccnt"));
				dto.setIsNew(rs.getString("isNew"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}

	public QnaDTO get(String techQnaSeq) {

		try {

			QnaDTO dto = new QnaDTO();

			String sql = "select * from vwTechQna where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			rs = pstat.executeQuery();

			if (rs.next()) {

				dto.setTechQnaSeq(rs.getString("techQnaSeq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setNickName(rs.getString("nickName"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setReadcount(rs.getString("readCount"));

				return dto;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public int add(QnaDTO dto) {

		try {

			String sql = "insert into tblTechQna (techQnaSeq, memberSeq, title, content, regdate, readCount) values (techQnaSeq.nextVal, ?, ?, ?, default, default)";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getMemberSeq());
			pstat.setString(2, dto.getTitle());
			pstat.setString(3, dto.getContent());

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public ArrayList<CommentDTO> commentList(String techQnaSeq) {

		try {

			String sql = "select * from vwTechQnaComment where techQnaSeq = ? order by techQnaCommentSeq desc";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			rs = pstat.executeQuery();

			ArrayList<CommentDTO> clist = new ArrayList<CommentDTO>();

			while (rs.next()) {

				CommentDTO dto = new CommentDTO();

				dto.setTechQnaCommentSeq(rs.getString("techQnaCommentSeq"));
				dto.setTechQnaSeq(rs.getString("techQnaSeq"));
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setContent(rs.getString("content"));
				dto.setNickName(rs.getString("nickName"));

				clist.add(dto);

			}

			return clist;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public int del(String techQnaSeq) {

		try {

			String sql = "delete from tblTechQna where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, techQnaSeq);

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public void delAllComment(String techQnaSeq) {

		try {

			String sql = "delete from tblTechQnaComment where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delAllRecommend(String techQnaSeq) {

		try {

			String sql = "delete from tblTechQnaRecommend where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delAllScrap(String techQnaSeq) {

		try {

			String sql = "delete from tblTechQnaScrap where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int edit(QnaDTO dto) {

		try {

			String sql = "update tblTechQna set title = ?, content = ? where techQnaSeq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getTechQnaSeq());

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public void updateReadCount(String techQnaSeq) {

		try {

			String sql = "update tblTechQna set readCount = readCount + 1 where techQnaSeq=?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, techQnaSeq);

			pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int getTotalCount(HashMap<String, String> map) {

		try {

			String where = "";

			if (map.get("isSearch").equals("y")) {
				// 검색
				// where name like '%홍길동%'
				// where subject like '%날씨%'
				// where all like '%날씨%'

					where = String.format(" where subject like '%%%s%%' or content like '%%%s%%' ", map.get("search"), map.get("search"));
			}

			String sql = String.format("select count(*) as cnt from tblTechQna %s", where);

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			if (rs.next()) {
				return rs.getInt("cnt");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

}
