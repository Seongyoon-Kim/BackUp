<%@page import="java.sql.Statement"%>
<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	String seq = request.getParameter("seq");
	String todo = request.getParameter("todo");
	
	Connection conn = null;
	PreparedStatement stat = null;
	int result = -1;
	
	try {

		String sql = "update tblTodo set todo = ? where seq = ?";
		
		conn = DBUtil.open();
		stat = conn.prepareStatement(sql);
		
		stat.setString(1, todo);
		stat.setString(2, seq);
		
		result = stat.executeUpdate();
		
		stat.close();
		conn.close();
		
	} catch (Exception e) {
		System.out.println(e);
	}
	
	if (result == 1) {
		response.sendRedirect("/jsp/todo/todo_list.jsp");
	} else {
		response.sendRedirect("/jsp/todo/todo_edit.jsp");
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
	<!-- todo_editok.jsp -->
	<div class="container">
		<h1 class="page-header"></h1>		
		
	</div>	
	
	<script>
		
	</script>
</body>
</html>















