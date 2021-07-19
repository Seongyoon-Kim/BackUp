<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>

<style>
   .container {width: 600px;}
   .table th:nth-child(1) { width: 60px; }
   .table th:nth-child(2) { width: 90px; }
   .table th:nth-child(3) { width: 60px; }
   .table th:nth-child(4) { width: 70px; }
   .table th:nth-child(5) { width: auto }
   .table th, .table td { text-align: center; vertical-align: middle; }
   .table th:nth-child(5) { text-align: left; }
</style>
</head>
<body>
	<!--  -->
	<div class="container">
      
		<h1 class="page-header">Address Book</h1>
		
		<table class="table table-bordered">
	         <tr>
	            <td>번호</td>
	            <td>이름</td>
	            <td>나이</td>
	            <td>성별</td>
	            <td>주소</td>
	         </tr>
	         <c:forEach items="${list }" var="dto">
	         <tr>
	            <td>${dto.seq }</td>
	            <td>${dto.name }</td>
	            <td>${dto.age }</td>
	            <td>${dto.gender.equals("m") ? "남자" : "여자" }</td>
	            <td>
	            	${dto.address }
	            	<span class="glyphicon glyphicon-trash" onclick="location.href='/jsp/adbook/addel.do?seq=${dto.seq}'"></span>
	         		<span class="glyphicon glyphicon-edit" onclick="location.href='/jsp/adbook/adedit.do?seq=${dto.seq}'"></span>
	            </td>
	         </tr>
	         <c:if test="${dto.seq == null }">
	         <tr>
	         	<td colspan="5">데이터가 없습니다.</td>
	         </tr>
	         </c:if>
	         </c:forEach>
	         
	   </table>
	   
	   <div class="btns">
	         <input type="button" value="추가하기" class="btn btn-default" onclick="location.href='/jsp/adbook/adadd.do'">
	   
	   </div>
      
   </div>

   <script>
      
   </script>
</body>
</html>



