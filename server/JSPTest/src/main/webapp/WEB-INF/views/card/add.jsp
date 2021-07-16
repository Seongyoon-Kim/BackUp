<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>

<style>
	.container {
      width: 1000px;
   }
</style>
</head>
<body>
   <div class="container">
      <h1 class="page-header">Business Card</h1>
      
      <form action="/jsp/card/addok.do" method="POST">
      	<table class="table table-bordered" style="width: 600px;">
      		<tr>
      			<th>이름(한글)</th>
      			<td><input type="text" name="korname" id="" class="form-control" required="required" /></td>
      		</tr>
      		<tr>
      			<th>이름(영문)</th>
      			<td><input type="text" name="engname" id="" class="form-control" required="required" /></td>
      		</tr>
      		<tr>
      			<th>연락처</th>
      			<td><input type="text" name="tel" id="" class="form-control" required="required" /></td>
      		</tr>
      		<tr>
      			<th>이메일</th>
      			<td><input type="text" name="email" id="" class="form-control" required="required" /></td>
      		</tr>
      		<tr>
      			<th>회사</th>
      			<td><input type="text" name="company" id="" class="form-control" required="required" /></td>
      		</tr>
      		<tr>
      			<th>직급</th>
      			<td><input type="text" name="position" id="" class="form-control" required="required" /></td>
      		</tr>
      	</table>
      	<div class="btns">
      		<input type="submit" value="Register" class="btn btn-default" />
      		<input type="button" value="Cancel" class="btn btn-default" onclick="location.href='/jsp/card/list.do';" />
      	</div>
      </form>

      
   </div>

   <script>
      
   </script>
</body>
</html>



