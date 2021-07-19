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
	<!-- loginok.jsp -->
   <div class="container">
      <h1 class="page-header"></h1>
      
      

      
   </div>

   <script>
      
		<c:if test='${not empty id && not empty pw}'>
		location.href='/jsp/auth/index.do';
		</c:if>
		
		<c:if test='${empty id || empty pw}'>
		alert('아이디 혹은 비밀번호를 잘못 입력하셨습니다.')
		location.href='/jsp/auth/login.do'
		</c:if>
   
   </script>
</body>
</html>



