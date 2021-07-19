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
	width: 600px;
}
.container .table th, .table td {
	text-align: center;
	vertical-align: middle;
}
.table th {
	width: 120px;
}
.table td input[name=name] {
	width: 100px;
}
.table td input[name=age] {
	width: 80px;
}
.table td select[name=gender] {
	width: 90px;
}
</style>
</head>
<body>
	<!--  -->
	<div class="container">
      
		<h1 class="page-header">Address Book</h1>
		
		<form method="POST" action="/jsp/adbook/adeditok.do">
			<table class="table table-bordered">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="" class="form-control" autocomplete="nope" required="required" value="${map.name }"></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input type="number" name="age" id="" class="form-control" min="19" max="100" required="required" value="${map.age }"/></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><select name="gender" id="" class="form-control" required="required">
							<option value="m">남자</option>
							<option value="f">여자</option>
					</select></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" id=""
						class="form-control" required="required" value="${map.address }"/></td>
				</tr>
			</table>

			<div class="btns">
				<input type="submit" value="수정하기" class="btn btn-default" />
				<input
					type="button" value="목록보기" class="btn btn-default" onclick="location.href='/jsp/adbook/adlist.do'">
				<input type="hidden" name="seq" value="${map.seq }" />
			</div>
		</form>
      
   </div>

   <script>
   
   		$("select[name=gender]").val("${map.gender}");
      
   </script>
</body>
</html>



