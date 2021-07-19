package com.test.adbook;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adbook/adeditok.do")
public class AdEditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");

		String seq = req.getParameter("seq");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		AdDAO dao = new AdDAO();
		AdDTO dto = new AdDTO();
		
		dto.setSeq(seq);
		dto.setName(name);
		dto.setAge(age);
		dto.setGender(gender);
		dto.setAddress(address);
		
		int result = dao.editok(dto);
		
		if (result == 1) {
			resp.sendRedirect("/jsp/adbook/adlist.do");
		} else {
			resp.sendRedirect("/jsp/adbook/adedit.do");
		}

	}

}
