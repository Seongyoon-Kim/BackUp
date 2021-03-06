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
	
	.menu {
		background-color: #ddd;
		width: 1050px;
		height: 50px;
  		padding-top: 10px;
  		padding-bottom: 5px;
  		padding-left: 20px;
  		font-size: 20px;
  		width: 1050px;
  		margin-left: -20px;
  		margin-top: -20px;
  		border-bottom: 1px solid #ccc;
  		margin-bottom: 20px;
	}
	
	
	.main-section .main-table { margin-bottom: 40px;}
	.main-section .main-table td { border: 0;}
	
	.main-section .main-table tr:nth-child(3) textarea { height:700px; }
	
	.condition-ment { text-align: center;} 
	
	.condition-section .condition-table { width: 800px; margin: auto; }
  	
	.condition-section .condition-table td {border: 0;}
 	.condition-section .condition-table td:nth-child(1) { width: 150px; border-right: 1px solid #ddd;}
 	.condition-section .condition-table td:nth-child(2) { width: 300px; }
 	.condition-section .condition-table td:nth-child(3) { width: 150px; border-right: 1px solid #ddd;}
 	.condition-section .condition-table td:nth-child(4) { width: 200px; }
 	
 	
 	.condition-table select, .select-place { width: 200px;}
 	
 	.condition-table .city { width: 80px; display: inline-block; float: left;}
 	.condition-table .gu { width: 80px; display: inline-block; }
 	
 	.cb { width: 200px; font-weight: normal; border: 1px solid #ddd; border-radius: 7px; padding: 5px;}
 	
 	.cb label { width: 200px; font-weight: normal;text-align: left;}
 	
 	.btns {width: 1000px; justify-content: space-between; margin-top: 20px; display: flex;}
 	
 	.memberCount{ width: 200px; }
 	
	
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<!--  -->
	<div class="container">
		<h1 class="page-header">스터디 게시글 작성</h1>
		
		<section class="main-section">
		<div class="menu">
			${nickName} 님
		</div>
			<form method="POST" action="/webproject/main/member/study/addok.do" id="mform">
				<table class="table main-table">
					<tr>
						<td>
							<input type="text" name="subject" class="form-control" required placeholder="스터디 공고 제목을 입력해 주세요." required value="${dto.postTitle}"> 
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="title" class="form-control" required placeholder="스터디명을 입력해 주세요." required value="${dto.name}">
						</td>
					</tr>
					<tr>
						<td>
							<textarea type="text" name="content" class="form-control" required placeholder="내용을 입력해 주세요" required >${dto.content}</textarea>
						</td>
					</tr>
				</table>
			<section class="condition-section">
			<div class="menu condition-ment">
				모집요건
			</div>
			
			<table class="table condition-table">
				<tr>
					<td>구성원 나이대</td>
					<td>
					<select name="ageGroup" class="form-control" id="ageGroup" required>
							<option value="20~25세">20~25세</option>
							<option value="25~30세">25~30세</option>
							<option value="30~35세">30~35세</option>
							<option value="35~40세">35~40세</option>
							<option value="무관">무관</option>
						</select>	
					</td>
					<td>스터디 기간</td>
					<td>
					<select name="period" id="period" class="form-control" required>
							<option value="1개월">1개월</option>
							<option value="2개월">2개월</option>
							<option value="3개월">3개월</option>
							<option value="6개월">6개월</option>
						</select>	
					</td>
				</tr>
				<tr>
					<td>지역</td>
					<td>
						<select id="city" name="city" onchange="categoryChange(this)" class="form-control">
							<option value="" disabled selected hidden>전체</option>
							<option value="all">전체</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="전남">전남</option>
							<option value="전북">전북</option>
							<option value="경북">경북</option>
							<option value="경남">경남</option>
							<option value="강원도">강원도</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="제주도">제주도</option>
						</select>
						<select id="gu" name="gu" class="form-control">
							<option>전체</option>
						</select>
					</div>
					<td>시작날짜</td>
					<td>
						<input type="date" name="startDate" class="startDate form-control" id="startDate" required>	
					</td>
				</tr>
				<tr>
					<td>학과</td>
					<td>
					<select name="major" id="major" class="form-control" required>
							<option value="전공">전공</option>
							<option value="비전공">비전공</option>
							<option value="무관">무관</option>
						</select>	
					</td>
					<td>종료날짜</td>
					<td>
						<input type="date" name="endDate" class="endDate form-control" id="endDate">	
					</td>
				</tr>
				<tr>
					<td>경력</td>
					<td>
					<select name="career" id="career" class="form-control" required>
							<option value="1년미만">1년미만</option>
							<option value="1년이상~3년 미만">1년이상~3년 미만</option>
							<option value="3년이상~5년 미만">3년이상~5년 미만</option>
							<option value="5년 이상">5년 이상</option>
							<option value="무관">무관</option>
						</select>	
					</td>
					
					<td>용도</td>
					<td>
						<select name="purpose" id="purpose" class="form-control" required>
							<option value="자격증 공부">자격증 공부</option>
							<option value="포트폴리오">포트폴리오</option>
							<option value="면접">면접</option>
							<option value="멘토-멘티 스터디">멘토-멘티 스터디</option>
						</select>	
					</td>
				</tr>
				
				<tr>
					<td>사용가능 언어</td>
					<td>
					<div class="cb">
						<label><input type="checkbox" name="language" value="c">C</label>
						<label><input type="checkbox" name="language"  value="cplus">C++</label>
						<label><input type="checkbox" name="language"  value="Python">Python</label>
						<label><input type="checkbox" name="language"  value="java">java</label>
						<label><input type="checkbox" name="language"  value="css">css</label>
						<label><input type="checkbox" name="language"  value="js">javaScript</label>
						<label><input type="checkbox" name="language"  value="db">Database</label>
						<label><input type="checkbox" name="language"  value="linux">linux</label>
						<label><input type="checkbox" name="language"  value="React">React</label>
						<label><input type="checkbox" name="language"  value="html">html</label>
						<label><input type="checkbox" name="language"  value="Kotlin">html</label>
						<label><input type="checkbox" name="language"  value="XML">XML</label>
						<label><input type="checkbox" name="language"  value="GO">GO</label>
						<label><input type="checkbox" name="language"  value="무관">무관</label>
					</div>
					</td>
					<td>관련직군</td>
					<td>
					<div class="cb">
						<label><input type="checkbox" name="jobGroup"  value="웹개발">웹개발</label>	
						<label><input type="checkbox" name="jobGroup"  value="응용프로그램개발">응용프로그램개발</label>	
						<label><input type="checkbox" name="jobGroup"  value="시스템개발">시스템개발</label>	
						<label><input type="checkbox" name="jobGroup"  value="서버네트워크보안">서버네트워크보안</label>	
						<label><input type="checkbox" name="jobGroup"  value="ERP시스템분석설계">ERP시스템분석설계</label>	
						<label><input type="checkbox" name="jobGroup"  value="데이터베이스DBA">데이터베이스DBA</label>	
						<label><input type="checkbox" name="jobGroup"  value="퍼블리싱UI개발">퍼블리싱UI개발</label>	
						<label><input type="checkbox" name="jobGroup"  value="웹디자인">웹디자인</label>	
						<label><input type="checkbox" name="jobGroup"  value="소프트웨어">소프트웨어</label>	
						<label><input type="checkbox" name="jobGroup"  value="게임">게임</label>	
						<label><input type="checkbox" name="jobGroup"  value="웹기획PM">웹기획PM</label>	
						<label><input type="checkbox" name="jobGroup"  value="컨텐츠사이트운영">컨텐츠사이트운영</label>	
						<label><input type="checkbox" name="jobGroup"  value="인공지능빅데이터">인공지능빅데이터</label>	
						<label><input type="checkbox" name="jobGroup"  value="무관">무관</label>
					</div>	
					</td>
				</tr>
				<tr>
					<td>모집 인원수</td>
					<td>
						<input type="number" name="memberCount" class="form-control memberCount" min="1" max="100" value="${dto.memberCount}" required>
					</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			
			
			
			<div class="btns">
				<button type="button" class="btn btn-default"
					onclick="location.href='/webproject/main/member/study/list.do';">돌아가기</button>
				<button type="submit" class="btn btn-primary">등록하기</button>
			</div>
			</form>
			
			
			
			
		</section>
		
		
	</div>
	<%@ include file="/inc/footer.jsp"%>
   	<%@ include file="/inc/init.jsp"%>
	<script>
	
		//오늘날짜 이후~ 종료날짜 이전
		$('#startDate').click(function(){
			var today = new Date();

			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);

			var dateString = year + '-' + month  + '-' + day;
			
			var startDate = "${dto.startDate}";
						 
			$('#startDate').val(startDate.substring(0, 10));
			
			$('#startDate').prop('min', dateString); 
			$('#startDate').prop('max',  $('#endDate').val()); 
		});
		
		
		
		//시작날짜 이후부터 선택 가능
		$('#endDate').click(function(){
			$('#endDate').prop('min', $('#startDate').val());
			
			var endDate = "${dto.endDate}";
			 
			$('#endDate').val(endDate.substring(0, 10));
			
		})
		
		//체크박스가 아무것도 선택되지 않았을때 경고창이 뜨게해주는 함수
		$('.btns').click(function(){
			
			var lvalues = document.getElementsByName("language");
			var lcheck = 0;
			
			for(var i=0; i<lvalues.length; i++){
				if(lvalues[i].checked){
					lcheck++;
				}
			}
			if(lcheck == 0){
				alert('사용가능 언어를 선택하세요!')
			}
			
			var jvalues = document.getElementsByName("jobGroup");
			var jcheck = 0;
			
			for(var i=0; i<jvalues.length; i++){
				if(jvalues[i].checked){
					jcheck++;
				}
			}
			if(lcheck == 0){
				alert('관련직군을 선택하세요!')
			}
		})
		
		
		//지역마다 시, 구 검색 조건 설정하기
		function categoryChange(e) {
			var seoul =["강남구", "강동구", "강서구", "관악구", "광진구", "동작구", "마포구", "서초구", "서대문구", "영등포구"];
			var gyengki =["기흥구","단원구", "상록구", "부평구", "분당구", "소사구", "영통구"];
			var incheon =["미추홀구","부평구", "서초구"];
			var all=["전체보기"]
			var target = document.getElementById('gu');
			
			if(e.value == "서울") var d = seoul;
			else if(e.value == "경기") var d = gyengki;
			else if(e.value == "인천") var d = incheon;
			else if(e.value == "all") var d = all;
			else if(e.value == "전남") var d = all;
			else if(e.value == "전북") var d = all;
			else if(e.value == "전남") var d = all;
			else if(e.value == "경북") var d = all;
			else if(e.value == "경북") var d = all;
			else if(e.value == "강원도") var d = all;
			else if(e.value == "충북") var d = all;
			else if(e.value == "충남") var d = all;
			else if(e.value == "제주도") var d = all;
			
			target.options.length = 0;
			
			for(x in d){
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
				
			}
			
		}

 

		//select에 기본값 option 설정		 
		$("#ageGroup").val("${dto.ageGroup}").attr("selected", "selected");
		$("#period").val("${dto.period}").attr("selected", "selected");
		$("#city").val("${dto.city}").attr("selected", "selected");
		$("#gu").val("${dto.gu}").attr("selected", "selected");
		$("#major").val("${dto.major}").attr("selected", "selected");
		$("#career").val("${dto.career}").attr("selected", "selected");
		$("#purpose").val("${dto.purpose}").attr("selected", "selected");
		
		
		
		
		$(document).ready(function(){ 
			var language = "${dto.language}";
			var jobGroup = "${dto.jobGroup}";
			
			var llist = language.split(',');
			var jlist = jobGroup.split(',');			
			
			llist.forEach(function(item, index){
				$('input[value='+ item +']').prop("checked", true);
			})
				
			jlist.forEach(function(item, index){
				$('input[value='+ item +']').prop("checked", true);
			})
				
				
			
		});





		
		
	</script>
</body>
</html>











