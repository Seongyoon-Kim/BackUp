package com.test.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddOk extends HttpServlet{
	
//	POST -> doPost()
//	GET -> doGet()

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String seq = req.getParameter("seq");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		Connection conn = null;
		PreparedStatement stat = null;
		int result = -1;
		
		try {
			
			String sql = "insert into tblAddress (seq, name, age, gender, address) values (seqAddress.nextval, ?, ?, ?, ?)";
			
			conn = DBUtil.open();
			stat = conn.prepareStatement(sql);
			
			stat.setString(1, name);
			stat.setString(2, age);
			stat.setString(3, gender);
			stat.setString(4, address);
			
			result = stat.executeUpdate();
			
			stat.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (result == 1) {
			resp.sendRedirect("/jsp/list.do");
		} else {
			resp.sendRedirect("/jsp/add.do");
		}
		
//		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/address/addok.jsp");
//		dispatcher.forward(req, resp);
		
	}
	
}

