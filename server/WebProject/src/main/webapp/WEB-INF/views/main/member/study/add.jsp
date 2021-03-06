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
	
	.condition-table { width: 800px; margin: auto; }
  	
	.main-section .condition-table td {border: 0;}
 	.condition-table td:nth-child(1) { width: 150px; border-right: 1px solid #ddd;}
 	.condition-table td:nth-child(2) { width: 300px; }
 	.condition-table td:nth-child(3) { width: 150px; border-right: 1px solid #ddd;}
 	.condition-table td:nth-child(4) { width: 200px; }
 	
 	
 	.condition-table select, .select-place { width: 200px;}
 	
 	.condition-table .city { width: 80px; display: inline-block; float: left;}
 	.condition-table .gu { width: 80px; display: inline-block; }
 	
 	.cb { width: 200px; font-weight: normal; border: 1px solid #ddd; border-radius: 7px; padding: 5px;}
 	
 	.cb label { width: 200px; font-weight: normal;text-align: left;}
 	
 	.memberCount{ width: 200px; }
 	
	.submit { display: none; }
	
	.locaioin-ment {
		background-color: #ddd;
		width: 1050px;
		height: 50px;
  		padding-top: 10px;
  		padding-bottom: 5px;
  		padding-left: 20px;
  		font-size: 20px;
  		width: 1050px;
  		margin-left: -20px;
  		margin-top: 20px;
  		margin-bottom: 20px;
  		border-bottom: 1px solid #ccc;
  		text-align: center;
	}
	
	#map {
		width: 100%; height: 400px;
	}
	
	.btnss {
		width: 1000px; justify-content: space-between; margin-top: 20px; display: flex;
	}
	
</style>
</head>
<body>
	<%@ include file="/inc/header.jsp" %>
	<!--  -->
	<div class="container">
		<h1 class="page-header">????????? ????????? ??????</h1>
		
		<section class="main-section">
		<div class="menu">
			${nickName} ???
		</div>
			<form method="POST" action="/webproject/main/member/study/addok.do" id="mform">
				<table class="table main-table">
					<tr>
						<td>
							<input type="text" name="subject" class="form-control" required placeholder="????????? ?????? ????????? ????????? ?????????." required>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="title" class="form-control" required placeholder="??????????????? ????????? ?????????." required>
						</td>
					</tr>
					<tr>
						<td>
							<textarea type="text" name="content" class="form-control" required placeholder="????????? ????????? ?????????" required></textarea>
						</td>
					</tr>
				</table>
			<div class="menu condition-ment">
				????????????
			</div>
			
			<table class="table condition-table">
				<tr>
					<td>????????? ?????????${dto.ageGroup}</td>
					<td>
					<select name="ageGroup" class="form-control" id="ageGroup" required>
							<option value="20~25???">20~25???</option>
							<option value="25~30???">25~30???</option>
							<option value="30~35???">30~35???</option>
							<option value="35~40???">35~40???</option>
							<option value="??????">??????</option>
						</select>	
					</td>
					<td>????????? ??????${dto.period}</td>
					<td>
					<select name="period" id="period" class="form-control" required>
							<option value="1??????">1??????</option>
							<option value="2??????">2??????</option>
							<option value="3??????">3??????</option>
							<option value="6??????">6??????</option>
						</select>	
					</td>
				</tr>
				<tr>
					<td>??????${dto.city} ${gu}</td>
					<td>
						<select id="city" name="city" onchange="categoryChange(this)" class="form-control" required>
							<option value="all" disabled selected hidden>??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="?????????">?????????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="?????????">?????????</option>
						</select>
						<select id="gu" name="gu" class="form-control" required>
							<option value="??????">??????</option>
						</select>
					<td>????????????${dto.startDate}</td>
					<td>
						<input type="date" name="startDate" class="startDate form-control" id="startDate" required>	
					</td>
				</tr>
				<tr>
					<td>??????${dto.major}</td>
					<td>
					<select name="major" class="form-control" required>
							<option value="??????">??????</option>
							<option value="?????????">?????????</option>
							<option value="??????">??????</option>
						</select>	
					</td>
					<td>????????????${dto.endDate}</td>
					<td>
						<input type="date" name="endDate" class="endDate form-control" id="endDate" required>	
					</td>
				</tr>
				<tr>
					<td>??????${dto.career}</td>
					<td>
					<select name="career" class="form-control" required>
							<option value="1?????????">1?????????</option>
							<option value="1?????????~3??? ??????">1?????????~3??? ??????</option>
							<option value="3?????????~5??? ??????">3?????????~5??? ??????</option>
							<option value="5??? ??????">5??? ??????</option>
							<option value="??????">??????</option>
						</select>	
					</td>
					
					<td>??????${dto.purpose}</td>
					<td>
						<select name="purpose" class="form-control" required>
							<option value="????????? ??????">????????? ??????</option>
							<option value="???????????????">???????????????</option>
							<option value="??????">??????</option>
							<option value="??????-?????? ?????????">??????-?????? ?????????</option>
						</select>	
					</td>
				</tr>
				
				<tr>
					<td>???????????? ??????</td>
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
						<label><input type="checkbox" name="language"  value="??????">??????</label>
					</div>
					</td>
					<td>????????????${dto.jobGroup}</td>
					<td>
					<div class="cb">
						<label><input type="checkbox" name="jobGroup"  value="?????????">?????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????????????????">????????????????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="???????????????">???????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????????????????">????????????????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="ERP?????????????????????">ERP?????????????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="??????????????????DBA">??????????????????DBA</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????UI??????">????????????UI??????</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????">????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="???????????????">???????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="??????">??????</label>	
						<label><input type="checkbox" name="jobGroup"  value="?????????PM">?????????PM</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????????????????">????????????????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="????????????????????????">????????????????????????</label>	
						<label><input type="checkbox" name="jobGroup"  value="??????">??????</label>
					</div>	
					</td>
				</tr>
				<tr>
					<td>?????? ?????????</td>
					<td>
						<input type="number" name="memberCount" class="form-control memberCount" min="1" max="100" value="1" required>
					</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			
			
			<div class=" locaioin-ment">??????</div>
      		<div id="map"></div>
			
      		<input type="hidden" name="lat" id="lat">
         	<input type="hidden" name="lng" id="lng">
			
			<div class="btnss">
				<button type="button" class="btn btn-default"
					onclick="location.href='/webproject/main/member/study/list.do';">????????????</button>
				<button type="button" class="btn btn-primary regist">????????????</button>
			</div>
			</form>
			
			
			
			
		</section>
		
		
	</div>
	<%@ include file="/inc/footer.jsp"%>
   	<%@ include file="/inc/init.jsp"%>
   	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8f37b2643f2e1455fd80b3948ce4183"></script>
	<script>
	
		//?????? ??????
		var container = document.getElementById('map');
	
		var options = {
	         center: new daum.maps.LatLng(37.499331, 127.033181),
	         level: 3 
	      };
		
		var map = new daum.maps.Map(container, options);
	
		//?????? ????????????
		let marker;
      
      	daum.maps.event.addListener(map, 'click', function(evt) {
		
      		if (marker != null) {
                marker.setMap(null);
             }
             
             marker = new daum.maps.Marker({
                position: evt.latLng
             });
             
             marker.setMap(map);
             
             //3.
             $('#lat').val(evt.latLng.getLat());
             $('#lng').val(evt.latLng.getLng());
             
		
      	});
		
	
		//???????????? ??????~ ???????????? ??????
		$('#startDate').click(function(){
			var today = new Date();

			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);

			var dateString = year + '-' + month  + '-' + day;
			
			$('#startDate').val(dateString);
			
			$('#startDate').prop('min', dateString); 
			$('#startDate').prop('max',  $('#endDate').val()); 
		});
		
		
		
		//???????????? ???????????? ?????? ??????
		$('#endDate').click(function(){
			$('#endDate').prop('min', $('#startDate').val());
			
		})
	
		
		
		//???????????? ???, ??? ?????? ?????? ????????????
		function categoryChange(e) {
			var seoul =["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "????????????", "????????????"];
			var gyengki =["?????????","?????????", "?????????", "?????????", "?????????", "?????????", "?????????"];
			var incheon =["????????????","?????????", "?????????"];
			var all=["??????"]
			var target = document.getElementById('gu');
			
			if(e.value == "??????") var d = seoul;
			else if(e.value == "??????") var d = gyengki;
			else if(e.value == "??????") var d = incheon;
			else if(e.value == "??????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "?????????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "??????") var d = all;
			else if(e.value == "?????????") var d = all;
			
			target.options.length = 0;
			
			for(x in d){
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}
			
		}
		
		
 		//???????????? ????????? ??????
 		$('.regist').click(function(){
 			
 			var lvalues = document.getElementsByName("language");
			var lcheck = 0;
			
			for(var i=0; i<lvalues.length; i++){
				if(lvalues[i].checked){
					lcheck++;
				}
			}
			if(lcheck == 0){
				alert('???????????? ????????? ???????????????!')
			}
			
			var jvalues = document.getElementsByName("jobGroup");
			var jcheck = 0;
			
			for(var i=0; i<jvalues.length; i++){
				if(jvalues[i].checked){
					jcheck++;
				}
			}
			if(jcheck == 0){
				alert('??????????????? ???????????????!')
			}
			
			if(lcheck != 0 && jcheck != 0){
				 this.form.submit();
 				
			}
		
 		})
 		




		
		
	</script>
</body>
</html>











