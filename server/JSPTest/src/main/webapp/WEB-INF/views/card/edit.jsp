<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>

<style>
</style>
</head>
<body>
	<!--  -->
	<div class="container">
      
		<h1 class="page-header"></h1>
      
      
      	<form method="POST" action="/jsp/card/editok.do">
			<table class="table table-bordered">
				<tr>
					<th>Korname</th>
					<td><input type="text" name="korname" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.korname }"/></td>
				</tr>
				<tr>
					<th>Engname</th>
					<td><input type="text" name="engname" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.engname }"/></td>
				</tr>
				<tr>
					<th>Tel</th>
					<td><input type="text" name="tel" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.tel }"/></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><input type="text" name="email" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.email }"/></td>
				</tr>
				<tr>
					<th>Company</th>
					<td><input type="text" name="company" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.company }"/></td>
				</tr>
				<tr>
					<th>Position</th>
					<td><input type="text" name="position" id="" class="form-control"
						autocomplete="nope" required="required" value="${map.position }"/></td>
				</tr>
			</table>

			<div class="btns">
				<input type="submit" value="수정하기" class="btn btn-default" />
				<input
					type="button" value="목록보기" class="btn btn-default"
					onclick="history.back();" />
				<input type="hidden" name="seq" value="${map.seq }" />
			</div>
		</form>
   </div>

   <script>
      
		<%-- ${'input[name=korname]'}.val('${map.korname}')
		${'input[name=engname]'}.val('${map.engname}')
		${'input[name=tel]'}.val('${map.tel}')
		${'input[name=email]'}.val('${map.email}')
		${'input[name=company'}.val('${map.company}')
		${'input[name=position]'}.val('${map.position}') --%>
   
   </script>
</body>
</html>



