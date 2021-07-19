package com.test.myapp.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 날짜 자르는 업무
		// 1. SQL > 선택 X
		// 2. DAO > 선택 X  > 순수 데이터 입출력 전담 : DAO에서도 데이터 가공은 안한다. 되도록 가공은 서블릿에게 맡긴다.
		// 3. Servlet > 선택 O > 데이터 가공 및 조작
		// 4. JSP > 선택 X > 출력만 전담
		
		// 할일
		// 1. DB 작업 > DAO 위임 > select
		// 2. ArrayList<BoardDTO> 반환
		// 3. JSP 호출하기 + 2번 전달
		
		// 1.
		BoardDAO dao = new BoardDAO();
		
		// 2.
		ArrayList<BoardDTO> list = dao.list();
		
		// 2.5
		for (BoardDTO dto : list) {
			
			// 날짜 > 가공
			String regdate = dto.getRegdate();
			regdate = regdate.substring(0, 10);
			dto.setRegdate(regdate);
			
			// 제목이 길면 > 자르기
			String subject = dto.getSubject();
			
			subject = subject.replace("<script>", "&lt;script").replace("</script>", "&lt;/script&gt;");
			dto.setSubject(subject);
			
			if (subject.length() > 38) {
				subject = subject.substring(0, 38) + "...";
				dto.setSubject(subject);
			}
			
		}
		
		// 새로고침에 의한 조회수 증가 방지 티켓
		HttpSession session = req.getSession();
		
		session.setAttribute("read", "n");
		
		
		// 3.
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/list.jsp");
		dispatcher.forward(req, resp);

	}

}
