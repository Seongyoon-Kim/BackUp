<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%

	

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
	<!-- ex13_session.jsp -->
	<div class="container">
	
		<h1 class="page-header">카운트(방문 횟수)</h1>
		
		<%
			int count = 0;
			count += 1;
		%>
		
		<div>count: <%= count %></div>
		
		<%
			if (session.getAttribute("count") == null) {
				session.setAttribute("count", 0);
			} else {
				session.setAttribute("count", (int)session.getAttribute("count") + 1);
			}
		%>
		
		<div>count: <%= session.getAttribute("count") %></div>
		
		<%
			if (application.getAttribute("count") == null) {
				application.setAttribute("count", 0);
			} else {
				application.setAttribute("count", (int)application.getAttribute("count") + 1);
			}
		%>
		
		<div>count: <%= application.getAttribute("count") %></div>
	
	</div>
	
	
	<script>
	
	</script>
</body>
</html>







