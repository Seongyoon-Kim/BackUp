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
	<!-- index.jsp -->
   <div class="container">
   		<h1 class="page-header">웹 보안</h1>
   		
   		<c:if test="${empty id }">
		<button type="button" class="btn btn-default" onclick="location.href='/jsp/auth/login.do'">로그인</button>
		</c:if>
   		
   			<c:if test="${not empty id }">
   			<div class="panel panel-default" style="width: 300px;">
   				<div class="panel-heading">
   					회원정보
   				</div>
   				<div class="panel-body">
   					<div>ID: ${id }</div>
   					<div>이름: ${name }</div>
   					<div>LV: ${lv }</div>
   					<div>가입 날짜: ${regdate }</div>
   				</div>
   			</div>
   			</c:if>
   			
   			<c:if test="${not empty id }">
   			<button type="button" class="btn btn-default" onclick="location.href='/jsp/auth/logoutok.do'">로그아웃</button>
   			</c:if>
   		
   		<hr>
   		
   		<c:if test="${empty id }">
   		<button type="button" class="btn btn-default" onclick="location.href='/jsp/auth/member.do'">회원 전용 페이지</button>
   		</c:if>
   		
   		<c:if test="${not empty id }">
   		<button class="btn btn-default" type="button" onclick="location.href='/jsp/auth/member.do'">회원 전용 페이지</button>
   		</c:if>
   		
   		<hr>
   		
   		<button class="btn btn-default" type="button" onclick="location.href='/jsp/auth/admin.do'">관리자 전용 페이지</button>
      
   </div>

   <script>
      
   </script>
</body>
</html>



