package com.test.myapp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import com.test.myapp.DBUtil;


public class Dummy {
	
	public static void main(String[] args) {
		
		// 글쓰기
		String[] id = { "hong", "test", "admin" };
		
		String[] subject = {"게시판 테스트입니다.",
							"허허허 반갑습니다.",
							"요즘 날씨가 너무 덥네요!",
							"살려주십시오 힘이드네요",
							"하.. 차라리 겨울이 좋아요",
							"코딩 공부는 어떻게 하나요?",
							"프론트엔드 vs 백엔드",
							"아침은 다들 뭐드셨는지요?",
							"다들 취미가 있나여?",
							"주식은 어떻게 시작해야 되나요?",
							"주린이 종목 추천해주세요.",
							"ㅋㅋㅋㅋㅋㅋㅋㅋㅋ안녕",
							"키보드 추천 받습니다.",
							"무소음 적축 vs 적축",
							"확실히 적축도 소음이 있긴 하네요",
							"듀얼 모니터 쓰니깐 편하네요",
							"허리가 너무 아픈데 병원 추천좀요",
							"컴퓨터 의자 추천받습니다.",
							"컴퓨터 책상 추천받습니다,.",
							"페이지가 여러개로 나뉠 예정입니다.",
							"오라클이 자바보다 재밌어요!",
							"자바 복습하고 있습니다. 너무 어렵네요",
							"오늘은 수요일입니다.",
							"어제는 검색창 만들기를 했어요",
							"오늘은 페이징을 배웁니다.",
							"벌써 31도에요",
							"강아지 산책시키는데 힘들어하는게 눈에 보이네요"};
		
		String content = "내용입니다.";
		String tag = "n";
		
		Random rnd = new Random();
		
		Connection conn = null;
		PreparedStatement stat = null;
		
		try {
			
			
			String sql = "insert into tblBoards (seq, id, subject, content, regdate, readcount, tag)"
					+ " values (seqBoards.nextVal, ?, ?, ?, default, default, ?)";
			
			
			conn = DBUtil.open();
			
			stat = conn.prepareStatement(sql);
			
			for (int i=0; i<387; i++) {
				
				stat.setString(1, id[rnd.nextInt(id.length)]);
				stat.setString(2, subject[rnd.nextInt(subject.length)]);
				stat.setString(3, content);
				stat.setString(4, tag);
				
				stat.executeUpdate();
				
				System.out.println(i + "번째 게시물 작성 완료");
			}
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}






























