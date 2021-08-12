<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <!-- template.jsp > add.jsp -->
	<div class="container">
	
		<h1 class="page-header">Memo</h1>
		
		<form action="/spring/addok.memo" method="POST">
			<table class="table table-bordered">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="" class="form-control" required /></td>
				</tr>
				<tr>
					<th>메모</th>
					<td><input type="text" name="memo" id="" class="form-control" required /></td>
				</tr>
				<tr>
					<th>분류</th>
					<td><input type="text" name="category" id="" class="form-control" required /></td>
				</tr>
			</table>
			
			<div>
				<button type="submit" class="btn btn-default">메모쓰기</button>
				<button type="button" class="btn btn-default" onclick="location.href='/spring/list.memo';">돌아가기</button>
			</div>
		</form>
      
	</div>   
   
	<script>
      
	</script>
</body>
</html>