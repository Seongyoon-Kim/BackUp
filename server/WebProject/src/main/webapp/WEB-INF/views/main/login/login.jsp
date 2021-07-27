<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myProject</title>

<%@ include file="/inc/asset.jsp" %>

<style>
	
	.login{
		width: 400px;
		margin: 0 auto;
	}

	.logo{
		width: 330px;
		font-size: 35px;
		color: #476072;
		margin: 0 auto;
		margin-bottom: 30px;
	}

	
	.login input {
		width: 100%;
		height: 50px;
		margin-bottom: 10px;
		border-radius: 0px;
	}
	
	.login .logbutton {
		background-color: #476072;
		border: 0px;
		color: white;
	}
	
	.login input:focus {outline:1px solid #476072;}
	
	
	
</style>
	
</head>
<body>
	<!-- login.jsp -->
	<%@ include file="/inc/header.jsp" %>
	
	<section class="main-section">
		
		<div class="login">
			<div class="logo">All For Developer</div>
			<form method="POST" action="/webproject/main/member/membermain.do">
				<input type="text" name="id" class="form-control" required placeholder="아이디">
				<input type="password" name="pw" class="form-control" required placeholder="비밀번호">
				<input type="submit" value="로그인" class="logbutton">
			</form>
		</div>
		
	</section>	
	
	
	<%@ include file="/inc/init.jsp" %>
	<script>
		
	</script>
</body>
</html>

