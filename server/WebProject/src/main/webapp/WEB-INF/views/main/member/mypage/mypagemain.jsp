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
   <%@ include file="/inc/header.jsp" %>

	<div class="container">
      
		<h1 class="page-header">마이페이지 메인</h1>
		
		<div class="container2">
			<div class="a">
				<div class="b">
						<div>아이콘</div>
						<div>${list.name}</div>
						<div>${list.email}</div>
						<div>${list.tel}</div>
					<input type="button" value="프로필" name="profile" class="btn btn-primary" onclick="location.href='/webproject/main/member/mypage/myprofile.do';" />
				</div>
				<div class="c">
					<div class="myComment">내가 쓴 게시글</div>
					<div>채용 공고</div>
					<div>공간대여 내역</div>
					<div>스터디 모임</div>
				</div>
				<div class="d">
					<div>스크랩 내역</div>
					<div>
						<span>커뮤니티</span>
						<span>${comScrapCount.comScrapCount}</span>
					</div>
					<div>
						<span>Q&A</span>
						<span>${qnaScrapCount.qnaScrapCount}</span>
					</div>
					<div>
						<span>정기모임/스터디</span>
						<span>${studyScrapCount.studyScrapCount}</span>
					</div>
					<div>
						<span>채용공고</span>
						<span>${jobPostScrapCount.jobPostScrapCount}</span>
					</div>
					<div>
						<span>공간대여</span>
						<span>${spaceScrapCount.spaceScrapCount}</span>
					</div>
				</div>
				<div class="e">
					<a href="/webproject/main/member/mypage/accountsetting.do"><span>계정설정</span></a>
				</div>
			</div>
			
			<div class="f">
				<div class="g">
					<div>지원 현황</div>
					<div class="h">
						<div class="i">
							<div>
								<img src="" alt="" />
							</div>
							<div class="j">미열람</div>
						</div>
						<div class="i">
							<div>
								<img src="" alt="" />
							</div>
							<div class="j">미열람</div>
						</div>
						<div class="i">
							<div>
								<img src="" alt="" />
							</div>
							<div class="j">미열람</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
			<div class="k">
				<div class="l">
					<div>공간대여 서비스</div>
					<div class="m">
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
							<div>
								<input type="button" value="평가하러가기" class="btn btn-primary"/>
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
							<div>
								<input type="button" value="평가하러가기" class="btn btn-primary"/>
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
							<div>
								<input type="button" value="평가하러가기" class="btn btn-primary"/>
							</div>
						</div>
					</div>
				</div>
				<div class="l">
					<div>주최한 정기모임/스터디</div>
					<div class="m">
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
					</div>
				</div>
				<div class="l">
					<div>지원한 정기모임/스터디</div>
					<div class="m">
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
					</div>
				</div>
				<div class="l">
					<div>완료된 정기모임/스터디</div>
					<div class="m">
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
						<div class="n">
							<div>
								<img src="" alt="" />이미지
							</div>
						</div>
					</div>
				</div>
			</div>
      
   </div>

	<%@ include file="/inc/footer.jsp" %>
   	<%@ include file="/inc/init.jsp" %>

   <script>
      
   		$(".myComment").click(function () {
			location.href = '/webproject/main/member/mypage/chart/chart.do';
		});
   
   </script>
</body>
</html>



