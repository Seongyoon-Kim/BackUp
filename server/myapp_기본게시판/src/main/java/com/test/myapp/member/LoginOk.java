package com.test.myapp.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1. 데이터 가져오기(id, pw)
		// 2. DB 작업 > select
		// 3. 인증 티켓 발급
		
		// 1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		// 2.
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		
		MemberDTO result = dao.login(dto);
		
		if (result != null) {
			// 인증 -> 티켓 발급
			HttpSession session = req.getSession();
			
			session.setAttribute("id", result.getId());
			session.setAttribute("name", result.getName());
			session.setAttribute("lv", result.getLv());
			session.setAttribute("regdate", result.getRegdate());
			
			resp.sendRedirect("/myapp/index.do");
			
		} else {
			resp.sendRedirect("/myapp/member/login.do");
		}

		
	}

}
