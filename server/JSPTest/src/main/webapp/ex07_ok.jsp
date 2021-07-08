<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%

	String width = request.getParameter("width");
	String height = request.getParameter("height");
	String text = request.getParameter("text");
	String backgroundColor = request.getParameter("backgroundColor");
	String color = request.getParameter("color");
	String size = request.getParameter("size");
	String count = request.getParameter("count");
	String range1 = request.getParameter("range1");
	String range2 = request.getParameter("range2");
	String icon = request.getParameter("icon");
	String border = request.getParameter("border");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp" %>

<style>
	.table {width: 100%; text-align: center; height: auto;}
	button {
	
		width: <%= width %>px;
		height: <%= height %>px;
		background-color: <%= backgroundColor %>;
		color: <%= color %>;
		font-size: <%= size %>px;
		margin: <%= range2 %>px <%= range1 %>px;
		
		<% if (border.equals("invisible")) { %>
		border: 0;
		<% } %>
	
	}
</style>
</head>
<body>
	<!-- ex07_ok.jsp -->
	<div class="container">
	
		<h1 class="page-header">결과</h1>
		<table class="table table-bordered">
			<tr>
				<td>버튼</td>
			</tr>
			<tr>
				<td>
					<% for (int i=0; i<Integer.parseInt(count); i++) { %>
					<button>
						<% if (!icon.equals("none")) { %>
						<span class="<%= icon %>"></span>
						<% } %>
						<%= text %>
					</button>
					<% } %>
				</td>
			</tr>
		</table>
	
	</div>
	
	
	<script>
	
	</script>
</body>
</html>







