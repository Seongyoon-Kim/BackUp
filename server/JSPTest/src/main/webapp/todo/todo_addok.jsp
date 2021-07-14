<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//할일
	//1. 데이터 가져오기(request.getParameter())
	//2. DB 작업 -> insert
	//3. 페이지 이동하기 -> todo_list.jsp
	
	request.setCharacterEncoding("UTF-8");
	String todo = request.getParameter("todo");
	
	Connection conn = null;
	PreparedStatement stat = null;
	int result = -1;
	
	try {
		
		String sql = "insert into tblTodo (seq, todo, complete, regdate) values (seqTodo.nextval, ?, '0', sysdate)";
		
		conn = DBUtil.open();
		stat = conn.prepareStatement(sql);
		
		stat.setString(1, todo);
		
		result = stat.executeUpdate();
		
		stat.close();
		conn.close();
		
		
	} catch (Exception e) {
		System.out.println(e);
	}
	
	if (result == 1) {
		response.sendRedirect("/jsp/todo/todo_list.jsp");
	} else {
		response.sendRedirect("/jsp/todo/todo_add.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp" %>

<style>
	
</style>

</head>
<body>
	<!-- todo_addok.jsp -->
	
</body>
</html>















