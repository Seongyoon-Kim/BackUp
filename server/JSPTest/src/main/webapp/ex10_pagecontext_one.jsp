<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%
	// 페이지 이동하기(Servlet/JSP)
	// 1. response.sendRedirect()
	// 2. pageContext.forward()
	
	
	// *** 대전제 규칙
	// - 모든 서블릿과 JSP 페이지는 자원의 최대 생명 주기 범위가 자기 자신이다.
	
	// 지역 변수
	// - 현재 JSP 페이지에서만 사용 가능한 변수
	int num = 100; // 이 변수를 two.jsp에게 전달하고 싶다.
	int num2 = 200;
	
	// A페이지 -> (데이터 전달) -> B페이지
	// - request or session or application + 컬렉션
	// - pageContext.forward()
	
	
	request.setAttribute("num2", num2);
	
	
	// http://localhost:8090/jsp/ex10_pagecontext_two.jsp
	// response.sendRedirect("ex10_pagecontext_two.jsp");
	// http://localhost:8090/jsp/ex10_pagecontext_one.jsp
	pageContext.forward("ex10_pagecontext_two.jsp");
%>
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
	<!-- ex10_pagecontext_one.jsp -->
	<div class="container">
	
		<h1 class="page-header">첫번째 페이지</h1>
		
		<form action="ex10_pagecontext_two.jsp" method="GET">
			<input type="text" name="num" id="" value="<%= num %>"/>
			<input type="submit" value="보내기" />
		</form>
	
	</div>
	
	
	<script>
	
	</script>
</body>
</html>






