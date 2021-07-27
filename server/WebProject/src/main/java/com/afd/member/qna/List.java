package com.afd.member.qna;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/main/member/qna/list.do")
public class List extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doPostGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPostGet(req, resp);
	}

	protected void doPostGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String search = req.getParameter("search");
		String isSearch = "n";
		
		if (search != null && !search.equals("")) {
			isSearch = "y";
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("search", search);
		map.put("isSearch", isSearch);
		
		QnaDAO dao = new QnaDAO();
		
		ArrayList<QnaDTO> list = dao.list();
		
		/*
		 * for (QnaDTO dto : list) {
		 * 
		 * String regdate = dto.getRegdate(); regdate = regdate.substring(0, 10);
		 * dto.setRegdate(regdate);
		 * 
		 * String title = dto.getTitle(); title = title.replace("<script",
		 * "&lt;script").replace("</script>", "&lt;/script&gt;"); dto.setTitle(title);
		 * 
		 * if (title.length() > 42) { title = title.substring(0, 50) + "...";
		 * dto.setTitle(title); }
		 * 
		 * }
		 */
		
		HttpSession session = req.getSession();
		
		session.setAttribute("read", "n");
		
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/member/qna/list.jsp");
		dispatcher.forward(req, resp);

	}

}
