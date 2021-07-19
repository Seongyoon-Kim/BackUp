package com.test.adbook;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adbook/addelok.do")
public class AdDelOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String seq = req.getParameter("seq");
		
		AdDAO dao = new AdDAO();
		AdDTO dto = new AdDTO();
		
		dto.setSeq(seq);
		
		int result = dao.del(dto);
		
		System.out.println(result);
		
		if (result == 1) {
			resp.sendRedirect("/jsp/adbook/adlist.do");
		} else {
			resp.sendRedirect("/jsp/adbook/addel.do");
		}

	}

}
