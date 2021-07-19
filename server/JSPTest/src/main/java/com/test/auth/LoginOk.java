package com.test.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/auth/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		AuthDAO dao = new AuthDAO();
		AuthDTO dto = new AuthDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		
		AuthDTO resultDTO = new AuthDTO();
		
		resultDTO = dao.login(dto);
		
		if (resultDTO != null) {
			
			HttpSession session = req.getSession();
			
			session.setAttribute("id", resultDTO.getId());
			session.setAttribute("pw", resultDTO.getPw());
			session.setAttribute("name", resultDTO.getName());
			session.setAttribute("lv", resultDTO.getLv());
			session.setAttribute("regdate", resultDTO.getRegdate());
			
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/auth/loginok.jsp");
		dispatcher.forward(req, resp);

	}

}



















