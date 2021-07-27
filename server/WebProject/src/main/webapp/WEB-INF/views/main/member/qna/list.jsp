<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<%@ include file="/inc/asset.jsp"%>

<style>
.btn-primary {
	float: right;
	width: 100px;
}

.btnWrite {
	margin-top: 20px;
}

.outline span {
	float: left;
	margin-right: 20px;
}
</style>
</head>
<body>
	<!-- list.jsp -->
	<%@ include file="/inc/header.jsp"%>

	<div class="container">

		<h1 class="page-header">Q&A 메인페이지</h1>

		<div
			style="position: relative; display: table; border-collapse: separate;">
			<form action="/webproject/main/member/qna/list.do" method="GET">
				<input type="search" name="search" id="" class="form-control"
					placeholder="검색어를 입력하세요."
					style="height: 30px; padding: 5px 10px; font-size: 12px; line-height: 1.5; border-radius: 3px; margin-bottom: 0; width: 200px; float: right;" />
				<span
					style="font-size: 0; white-space: nowrap; width: 1%; vertical-align: middle; display: table-cell;">
					<button type="submit" class="btn btn-default"
						style="margin-left: -1px; height: 30px; padding: 5px 10px; font-size: 12px; line-height: 1.5; border-radius: 3px; position: relative;">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</span>
			</form>
		</div>

		<c:if test="${not empty id}">
			<div class="btnWrite">
				<button type="button" class="btn btn-primary"
					onclick="location.href='/webproject/main/member/qna/add.do'">글쓰기</button>
			</div>
		</c:if>

		<div style="margin-bottom: 20px;">
			<ul class="nav nav-pills">
				<li role="presentation" class="active"><a href="#">최신순</a></li>
				<li role="presentation"><a href="#">추천순</a></li>
				<li role="presentation"><a href="#">댓글순</a></li>
				<li role="presentation"><a href="#">스크랩순</a></li>
				<li role="presentation"><a href="#">조회순</a></li>
			</ul>
		</div>

		<table class="table table-hover">
			<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="2">게시물이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td style="width: 600px; padding-left: 20px; padding-top: 18px;"><a
						href="/webproject/main/member/qna/view.do?techQnaSeq=${dto.techQnaSeq }">${dto.title}</a></td>
					<td>
						<div class="outline">
							<span> <i class="bi bi-hand-thumbs-up-fill"></i> 0
							</span> <span> <i class="bi bi-hand-thumbs-down-fill"></i> 0
							</span> <span> <i class="bi bi-chat-dots-fill"></i> 0
							</span> <span> <i class="bi bi-eye-fill"></i> 0
							</span>
						</div>
					</td>
					<td>
						<div>${dto.nickName}</div>
						<div style="font-size: 11px;">${dto.regdate}</div>
					</td>
				</tr>
			</c:forEach>
		</table>

		<div class="pagebar">
			${pagebar }
		</div>

	</div>

	<%@ include file="/inc/footer.jsp"%>
	<%@ include file="/inc/init.jsp"%>

	<script>
		
	</script>
</body>
</html>



