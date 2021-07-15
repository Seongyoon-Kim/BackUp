<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
   <div class="container">
      <h1 class="page-header">Add</h1>
      
      <form action="/jsp/addok.do" method="POST">
			<table class="table table-bordered">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="" class="form-control" autocomplete="nope" /></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input type="number" name="age" id="" class="form-control" min="19" max="" /></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<select name="gender" id="" class="form-control">
							<option value="m">남자</option>
							<option value="f">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" id="" class="form-control" /></td>
				</tr>
			</table>
			
			<div class="btns">
				<input type="submit" value="추가하기" class="btn btn-default" />
				<input type="button" value="목록보기" class="btn btn-default" onclick="history.back();" />
			</div>
		</form>

      
   </div>

   <script>
      
   </script>
</body>
</html>




