package com.test.card;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/card/deleteok.do")
public class DeleteOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CardDAO dao = new CardDAO();
		CardDTO dto = new CardDTO();
		
		String seq = req.getParameter("seq");
		dto.setSeq(seq);
		
		int result = dao.delete(dto);
		
		if (result == 1) {
			resp.sendRedirect("/jsp/card/list.do");
		} else {
			resp.sendRedirect("/jsp/card/delete.do");
		}

	}

}
