package com.test.adbook;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adbook/adedit.do")
public class AdEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String seq = req.getParameter("seq");
		
		AdDAO dao = new AdDAO();
		AdDTO dto = new AdDTO();
		
		dto.setSeq(seq);
		
		HashMap<String, String> map = dao.editlist(dto);
		
		req.setAttribute("map", map);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adbook/adedit.jsp");
		dispatcher.forward(req, resp);

	}

}
