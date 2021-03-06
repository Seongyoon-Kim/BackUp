<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"  %>

<style>

	body { background: #eee;}

	.main-section{ background-color: #fff; padding: 20px; margin-bottom: 0;}
	
	.main-section .title td {border: 0;}
 	.main-section .title td:nth-child(1) { width: 150px; border-right: 1px solid #ddd;}
 	.main-section .title td:nth-child(2) { width: auto; border-right: 1px solid #ddd; border:0;}
	
 	.main-section .title .posttitle { font-size: 24px; color: #777;}
 	
 	.main-section .main-table { border-bottom: 1px solid #ddd;}
 	
	.nickname { color: #548CA8;}
	
	
	
	
	
	.main-section .main .content {white-space:pre-line;}
	

	.main-section .seek-table td {border-bottom: 1px dashed #ccc; text-align: center; height: 50px; }
	.main-section .seek-table td:nth-child(1) {text-align: center; width: 500px; }
	.main-section .seek-table td:nth-child(2) { width: auto; margin-bottom:3px; }
	.main-section .seek-table td:nth-child(2) div { display: inline-block;}
	
	
	
	.main .scrap {cursor: pointer; font-size: 20px; }
	
  	.border-0 { border: 0;}
  	
  	.red { color: tomato;}
  	
  	.center {text-align: center; margin-top: 20px;}
  	.center-span { display: inline; font-size:  20px;}
  	
  	
	.starR1{
	    background: url('/webproject/asset/images/star.png') no-repeat -52px 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float:left;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	
	.starR2{
	    background: url('/webproject/asset/images/star.png') no-repeat right 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float:left;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	
	.starR1.on{background-position:0 0;}
	.starR2.on{background-position:-15px 0;}
  	
  	
	
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div class="container">
		<h1 class="page-header">????????? ????????? ????????????</h1>
		<c:forEach items="${slist}" var="dto">		
		<section class="main-section">
		<div class="main-table">
			<table class="table title">
				<tr>
					<td class="nickname">${dto.nickName} ???</td>
					<td rowspan="2"><span class="posttitle">${dto.name}</span><br>${dto.postTitle}</td>
				</tr>
				<tr>
					<td>${dto.regdate}</td>
				</tr>
			
			</table>
		</div>
		
		
		<c:if test="dto.studyPostSeq == ilist.studyPostSeq &&"></c:if>
		<c:set var="evlue" value="n" />
		<c:forEach items="${ilist}" var="idto">
			<c:if test="${dto.studyPostSeq == idto.studyPostSeq && idto.memberSeq == memberSeq && idto.evalComplete == 'y'}">
			<c:set var="evlue" value="y" />			
			</c:if>
		</c:forEach>
		<c:if test="${evlue eq 'y'}">
			<div class="center"><span class="red center-span">?????? ????????? ??????????????????</span>.</div>
		</c:if>
		<c:if test="${evlue eq 'n'}">
			
			<form method="POST" action="/webproject/main/member/mypage/evaluationok.do">
			<div class="profile-table">
				<h1 class="border-0">??????</h1>
				<table class="table seek-table">
					<tr>
						<td>
							${dto.nickName}
							<c:if test="${dto.memberSeq != memberSeq}">
								<span class="red">[??????]</span>
							</c:if>
							<c:if test="${dto.memberSeq == memberSeq}">
								<span class="red">[???]</span>
							</c:if>
						</td>
						<td>
							<c:if test="${dto.memberSeq != memberSeq}">
								<div class="starRev">
									  <span class="starR1 on">???1_??????</span>
									  <span class="starR2">???1_?????????</span>
									  <span class="starR1">???2_??????</span>
									  <span class="starR2">???2_?????????</span>
									  <span class="starR1">???3_??????</span>
									  <span class="starR2">???3_?????????</span>
									  <span class="starR1">???4_??????</span>
									  <span class="starR2">???4_?????????</span>
									  <span class="starR1">???5_??????</span>
									  <span class="starR2">???5_?????????</span>
								</div>
								<div>
									<input type="hidden" name="evaluation"  class="evaluation" value="1">
													<input type="hidden" name="seq"  class="evaluation" value="${dto.memberSeq}">
									
								</div>	
								
							</c:if>
						</td>
					</tr>
					
					<c:set var="no" value="n" />
					<c:forEach items="${ilist}" var="idto">
						<c:if test="${idto.studyPostSeq eq dto.studyPostSeq}">
							<c:forEach  items="${plist}" var="pdto">
								<c:if test="${pdto.memberSeq eq idto.memberSeq}">
									<c:if test="${idto.seekerCheck eq 'p'}">
										<c:set var="no" value="y" />
										<tr>
											<td>
												${pdto.nickName}
											</td>
											<td>
												<c:if test="${idto.memberSeq != memberSeq}">
												<div class="starRev">
												  <span class="starR1 on" name="">???1_??????</span>
												  <span class="starR2">???1_?????????</span>
												  <span class="starR1">???2_??????</span>
												  <span class="starR2">???2_?????????</span>
												  <span class="starR1">???3_??????</span>
												  <span class="starR2">???3_?????????</span>
												  <span class="starR1">???4_??????</span>
												  <span class="starR2">???4_?????????</span>
												  <span class="starR1">???5_??????</span>
												  <span class="starR2">???5_?????????</span>
												</div>
												<div>
													
													<input type="hidden" name="evaluation"  class="evaluation" value="1">
													<input type="hidden" name="seq"  class="evaluation" value="${idto.memberSeq}">
													
												</div>	
												</c:if>
												<c:if test="${idto.memberSeq == memberSeq}">
												<div>??????????????? ????????? ??? ??? ????????????.</div>
												</c:if>
											</td>
										</tr>
									</c:if>
								</c:if>
							</c:forEach>
						</c:if>
					</c:forEach>
						<c:if test="${no == 'n'}">
							<tr>
								<td colspan="3">???????????? ????????????.</td>
							</tr>
						</c:if>	
					</table>
					<input type="hidden" name="studyseq"  class="evaluation" value="${dto.studyPostSeq}">
					<div><button type="submit" name="npassSeeker" class="btn btn-danger">????????????</button>
					</div>
			</div>
		</form>
		
			
			
		</c:if>
		
		
		
		
		</section>
		</c:forEach>
		
		
		
		
	</div>
	<%@ include file="/inc/footer.jsp"%>
   	<%@ include file="/inc/init.jsp"%>
	<script>
	
		//????????????
		$('.starRev span').click(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  
			  //hidden??? ??? ??????
			  $(this).parent().next().children().first().val($(this).parent().children('.on').length);
			  
			  return false;
		});
		
	
	
	</script>
</body>
</html>











