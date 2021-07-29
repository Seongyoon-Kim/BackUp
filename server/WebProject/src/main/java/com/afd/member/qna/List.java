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
		
		req.setCharacterEncoding("UTF-8");
		
		QnaDAO dao = new QnaDAO();
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		String column = req.getParameter("column");
		String search = req.getParameter("search");
		String isSearch = "n";
		
		String orderRegdate = req.getParameter("orderRegdate");
		String orderRecommendCount = req.getParameter("orderRecommendCount");
		String orderComment = req.getParameter("orderComment");
		String orderReadCount = req.getParameter("orderReadCount");

		if (column != null && search != null && !column.equals("") && !search.equals("")) {
			isSearch = "y";
		}
		
		map.put("column", column);
		map.put("search", search);
		map.put("isSearch", isSearch);
		map.put("orderRegdate", orderRegdate);
		map.put("orderRecommendCount", orderRecommendCount);
		map.put("orderComment", orderComment);
		map.put("orderReadCount", orderReadCount);
		
		int nowPage = 0; // 현재 페이지 번호
		int totalCount = 0; // 총 게시물 수
		int pageSize = 10; // 한 페이지당 출력할 게시물 수
		int totalPage = 0; // 총 페이지 수
		int begin = 0; // 가져올 게시물 시작 위치
		int end = 0; // 가져올 게시물 끝 위치
		int n = 0; // 페이지바 제작
		int loop = 0; // 페이지바 제작
		int blockSize = 10; // 페이지바 제작
		
		
		String page = req.getParameter("page");
		
		if (page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		totalCount = dao.getTotalCount(map);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = "	<nav>\r\n" + "			<ul class=\"pagination\">";
		
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		
		if (n == 1) {
			pagebar += pagebar += String.format(" <li class='disabled'><a href='#!' aria-label='Previous'> <span aria-hidden='true'>&laquo;</span></a></li> ");
		} else {
			pagebar += pagebar += String.format(" <li><a href='/webproject/main/member/qna/list.do?page=%d' aria-label='Previous'> <span aria-hidden='true'>&laquo;</span></a></li> ", n - 1);
		}
		
		if (totalPage == 0) {
			pagebar += " <li class='active'><a href='#!'>1</a></li> ";
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format(" <li class='active'><a href='#!'>%d</a></li> ", n);
			} else {
				pagebar += String.format(" <li><a href='/webproject/main/member/qna/list.do?page=%d'>%d</a></li> ", n, n);
			}

			loop++;
			n++;
			
		}
		
		if (n > totalPage) {
			pagebar += String.format(
					" <li class='disabled'><a href='#!' aria-label='Next'> <span aria-hidden='true'>&raquo;</span></a></li> ");
		} else {
			pagebar += String.format(
					" <li><a href='/webproject/main/member/qna/list.do?page=%d' aria-label='Next'> <span aria-hidden='true'>&raquo;</span></a></li> ", n);
		}
		
		pagebar += "</ul>\r\n" + "		</nav>";
		
		
		
		
		ArrayList<QnaDTO> list = dao.list(map);
		
		for (QnaDTO dto : list) {

			// 날짜 > 가공
			String regdate = dto.getRegdate();
			regdate = regdate.substring(0, 10);
			dto.setRegdate(regdate);

			String title = dto.getTitle();

			// 무조건 글 제목과 내용에 들어있는 <script>태그는 비활성화!!!
			title = title.replace("<script", "&lt;script").replace("</script>", "&lt;/script&gt;");
			dto.setTitle(title);

			// 제목이 길면 > 자르기
			if (title.length() > 50) {
				title = title.substring(0, 50) + "..";
				dto.setTitle(title);
			}

			// 제목으로 검색 중이면.. 검색어를 부각시키기
			// "자유 게시판입니다." > 검색어(게시판) > "자유 <span
			// style='color:tomato;background-color:yellow;'>게시판</span>입니다."

			if (isSearch.equals("y") && column.equals("title")) {
				title = title.replace(search,
						"<span style='color:tomato;background-color:yellow;'>" + search + "</span>");
				dto.setTitle(title);
			}

		}
		
		
		
		
		
		
		HttpSession session = req.getSession();
		
		session.setAttribute("read", "n");
		
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);

		req.setAttribute("pagebar", pagebar);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/member/qna/list.jsp");
		dispatcher.forward(req, resp);

	}

}
