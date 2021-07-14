<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//할일
	//1. 선택된 항목 가져오기
	//2. DB 작업 -> delete
	//3. 페이지 이동하기 -> todo_list.jsp
	
	String seq = request.getParameter("seq");
	seq = seq.substring(0, seq.length() - 1);
	String[] seqList = seq.split(",");
	
	Connection conn = null;
	PreparedStatement stat = null;
	int result = -1;
	
	try {
		
		String sql = "delete from tblTodo where seq = ?";
		
		conn = DBUtil.open();
		stat = conn.prepareStatement(sql);
		
		for (String s : seqList) {

			stat.setString(1, s);
			
			stat.executeUpdate();
		}
		
		
		stat.close();
		conn.close();
		
	} catch (Exception e) {
		System.out.println(e);
	}
	
	response.sendRedirect("/jsp/todo/todo_list.jsp");
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
	<!-- todo_del_ok.jsp -->
	
</body>
</html>















