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
 	.main-section .title td:nth-child(1) { width: 150px; border-right: 1px solid #ddd; }
 	.main-section .title td:nth-child(2) { width: auto; border-right: 1px solid #ddd;}
 	.main-section .title td:nth-child(3) { width: 150px; }
	
 	.main-section .title .posttitle { font-size: 24px; color: #777;}
 	
 	.main-section .main-table { border-bottom: 1px solid #ddd;}
 	
	.nickname { color: #548CA8;}
	
	
	
	.condition-section{ background-color: #fff; padding: 20px; width: 1050px; margin: 35px auto; margin-top:0; }
	
	.condition-section .condition-ment {
		display: flex;
  		justify-content: center;
  		background-color: #ddd;
  		padding-top: 5px;
  		padding-bottom: 5px;
  		font-size: 20px;
  		width: 1050px;
  		margin-left: -20px;
  	}
	
	.condition-section .condition-table {
		width: 800px;
		margin: auto;
		margin-bottom: 20px;
  	}
  	
	.condition-section .condition-table td {border: 0;}
 	.condition-section .condition-table td:nth-child(1) { width: 150px; border-right: 1px solid #ddd}
 	.condition-section .condition-table td:nth-child(2) { width: 300px; }
 	.condition-section .condition-table td:nth-child(3) { width: 150px; border-right: 1px solid #ddd;}
 	.condition-section .condition-table td:nth-child(4) { width: 200px; }
	.condition-section .main td {border: 0; text-align: left;}
	
	
	
	.main-section .main .content {white-space:pre-line;}
	

	.main-section .seek-table td {border-bottom: 1px dashed #ccc; text-align: center}
	.main-section .seek-table td:nth-child(1) {text-align: center; width: 200px}
	.main-section .seek-table td:nth-child(2) { width: 170px; margin-bottom:3px;}
	.main td:nth-child(3) { width: auto;}
	
	
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
  	
  	.starRev { width: 150px; display: inline-block;}
	
	
	
	
	.main .scrap {
		cursor: pointer;
		font-size: 20px;
	}
	

  	.border-0 { border: 0;}
  	
  	.red { color: tomato};
  	
  	
	
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<div class="container">
		<h1 class="page-header">???????????? ?????????</h1>
		<c:forEach items="${slist}" var="dto">
		
		<section class="main-section">
		<div class="main-table">
			<table class="table title">
				<tr>
					<td class="nickname">${dto.nickName} ???</td>
					<td rowspan="2"><span class="posttitle">${dto.postTitle}</span></td>
					<td rowspan="2">
						<i class="bi bi-hand-thumbs-up"></i> ${dto.recommendCount}
						<i class="bi bi-hand-thumbs-down"></i> ${dto.decommendCount}
						<i class="bi bi-eye"></i> ${dto.readCount}
					</td>
				</tr>
				<tr>
					<td>${dto.regdate}</td>
				</tr>
			
			</table>
		</div>
		
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
						<c:if test="${dto.score >= 1}">
							<div class="starRev">
								  <span class="starR1">???1_??????</span>
								  <span class="starR2">???1_?????????</span>
								  <span class="starR1">???2_??????</span>
								  <span class="starR2">???2_?????????</span>
								  <span class="starR1">???3_??????</span>
								  <span class="starR2">???3_?????????</span>
								  <span class="starR1">???4_??????</span>
								  <span class="starR2">???4_?????????</span>
								  <span class="starR1">???5_??????</span>
								  <span class="starR2">???5_?????????</span>
								  <span>???????????????.</span>
							</div>
						  	<div>
								<input type="hidden" name="evaluation"  class="evaluation" value="${dto.score}">
							</div>	
							</c:if>
							<c:if test="${dto.score == 0}">
							<span>?????? ????????? ????????????.</span>
							</c:if>
					</td>
					<td>
						<c:if test="${dto.memberSeq != memberSeq}">
							<button type="button" class="btn btn-default profile" id="profile"  name="profile" value="${dto.memberSeq}">????????????????????????</button>
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
											<c:if test="${pdto.score >= 1}">
												<div class="starRev">
													  <span class="starR1">???1_??????</span>
													  <span class="starR2">???1_?????????</span>
													  <span class="starR1">???2_??????</span>
													  <span class="starR2">???2_?????????</span>
													  <span class="starR1">???3_??????</span>
													  <span class="starR2">???3_?????????</span>
													  <span class="starR1">???4_??????</span>
													  <span class="starR2">???4_?????????</span>
													  <span class="starR1">???5_??????</span>
													  <span class="starR2">???5_?????????</span>
													  <span>???????????????.</span>
												</div>
											  	<div>
													<input type="hidden" name="evaluation"  class="evaluation" value="${pdto.score}">
												</div>	
												</c:if>
												<c:if test="${pdto.score == 0}">
												<span>?????? ????????? ????????????.</span>
											</c:if>
										</td>
										<td>
											<button type="button" class="btn btn-default profile" id="profile"  name="profile" value="${pdto.memberSeq}">????????????????????????</button>
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
		</div>
		</section>
		
		
		
		<section class="condition-section">
			<div class="condition-ment">????????????</div>
			<table class="table condition-table">
				<tr>
					<td>????????? ?????????</td>
					<td>${dto.ageGroup}</td>
					<td>????????? ??????</td>
					<td>${dto.period}</td>
				</tr>
				<tr>
					<td>??????</td>
					<td>${dto.career}</td>
					<td>????????????</td>
					<td>${dto.startDate}</td>
				</tr>
				<tr>
					<td>??????</td>
					<td>${dto.major}</td>
					<td>????????????</td>
					<td>${dto.endDate}</td>
				</tr>
				<tr>
					<td>???????????? ??????</td>
					<td>${dto.language}</td>
					<td>??????</td>
					<td>${dto.purpose}</td>
				</tr>
				<tr>
					<td>??????</td>
					<td>${dto.city} ${dto.gu}</td>
					<td>????????????</td>
					<td>${dto.jobGroup}</td>
				</tr>
				<tr>
					<td>?????? ?????????</td>
					<td>${dto.memberCount} ???</td>
					<td></td>
					<td></td>
				</tr>
			</table>
		
			
			
		</section>
		
		
		</c:forEach>

		
	</div>
	<%@ include file="/inc/footer.jsp"%>
   	<%@ include file="/inc/init.jsp"%>
	<script>
	
	
		//?????? ??????		
		$('.starRev').click(function(){
			  for(let i=0; i< $(this).next().children().first().val(); i++){
				  $(this).children().eq(i).addClass("on");
				}
			  
		});
		
		//????????? ?????????
		$('.profile').click(function(){
	         
	         window.name = "parentForm";
	         
	         openWin = window.open("studyprofile.do?seq="+ $(this).val(), "childForm", "width=570, height=350, resizable = no, scrollbars = no");
	         
	      })
	
	</script>
</body>
</html>











