package com.test.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
	
	@Autowired
	private AjaxDAO dao;

	@RequestMapping(value = "/user/user.action", method = { RequestMethod.GET })
	public String user(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String btn) {

		//구분
		if (btn != null && btn != "") {
			int count = dao.getUserCount();
			req.setAttribute("count", count);
		}

		return "user/user";
	}
	
	
	@RequestMapping(value = "/user/user2.action", method = { RequestMethod.GET })
	public String user2(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "user/user2";
	}
	
	
	@RequestMapping(value = "/user/count.action", method = { RequestMethod.GET })
	public String count(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String name, String age) {
		
		System.out.println(req.getQueryString());
		
		System.out.println(req.getParameter("name"));
		
		System.out.println(name);
		System.out.println(age);

		//서버 작업 수행 중 에러 발생
//		Random rnd = new Random();
//		System.out.println(100 / rnd.nextInt(3));
		
		
//		try {
//			Thread.sleep(10000); //하던 일을 잠시 멈춰라
//		} catch (InterruptedException e) {
//			e.printStackTrace();
//		}
		
		
		int count = dao.getUserCount();
		req.setAttribute("count", count);
		
		return "user/count";
	}
	
	
	@RequestMapping(value = "/user/user3.action", method = { RequestMethod.GET })
	public String user3(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "user/user3";
	}
	
	
	@RequestMapping(value = "/user/user4.action", method = { RequestMethod.GET })
	public String user4(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "user/user4";
	}
	
	
	@RequestMapping(value = "/basic/basic.action", method = { RequestMethod.GET })
	public String basic(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		return "basic/basic";
	}
	
	
	
	//서버의 요청 메소드(*.action)
	//** 앞으로는 서버측에 요청 메소드(*.action)를 만들 때는 용도가 브라우저 호출용인지 ajax 호출용인지 미리 정하고 구현한다.
	//1. 브라우저가 요청
	//	> 웹 페이지(소스)를 반환 > JSP 사용
	//2. ajax가 요청
	//  > 데이터를 반환 > Java 사용 + 데이터 출력(반환)
	
	
	@RequestMapping(value = "/basic/m1.action", method = { RequestMethod.GET })
	public void m1(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		try {
			
			//브라우저에게 네가 돌려받는 데이터는 순수한 텍스트이다.(통보)
			//resp.setContentType("text/html");
			
			resp.setContentType("text/plain");
			resp.setCharacterEncoding("UTF-8");
			
//			int count = dao.getUserCount();
//			PrintWriter writer = resp.getWriter();
//			writer.print(count);
//			writer.close();

			
			String name = dao.getUserName();
			PrintWriter writer = resp.getWriter();			
			writer.print(name);
			writer.close();
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	
//	@RequestMapping(value = "/basic/m2.action", method = { RequestMethod.GET })
//	public void m2(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
//
//		try {
//			
//			resp.setContentType("application/json");
//			resp.setCharacterEncoding("UTF-8");
//					
//			UserDTO dto = dao.getUser();
//			
//			PrintWriter writer = resp.getWriter();
//			
//			writer.printf("{");
//			writer.printf("\"seq\": \"%s\",", dto.getSeq());
//			writer.printf("\"name\": \"%s\",", dto.getName());
//			writer.printf("\"age\": \"%s\",", dto.getAge());
//			writer.printf("\"address\": \"%s\",", dto.getAddress());
//			writer.printf("\"birthday\": \"%s\"", dto.getBirthday());
//			writer.printf("}");
//			
//			writer.close();			
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//	}
	
	
	@RequestMapping(value = "/basic/m2.action", method = { RequestMethod.GET })
	@ResponseBody
	public UserDTO m2(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		UserDTO dto = dao.getUser();
			
		return dto; //UserDTO -> json 변환
	}
	
	
}

















