<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webProject</title>

<%@ include file="/inc/asset.jsp" %>

<style>
   
   .register-box{
	border: 1px solid #476072;
   	width: 70%;
   	margin: 80px auto;
   	height: auto;
   	background-color: #FAFBFC;
	
   }
   
   .register-box .register-content .title{
    border-bottom: 1px solid #ccc;
   	padding: 20px;
   	font-size: 25px;
   	font-weight: bold;
   	color: #548CA8;
   }
   
   .register-tbl{
   	margin-top: 5px;
   	width: 100%;
	font-size: 18px;
	padding: 10px;
   }
   
   .register-tbl tr th{
	   	width: 130px;
	   	padding: 12px;
	   	padding-left: 30px;
   }
   
    .register-tbl tr td{
    	padding: 12px;
    }
   
   .register-tbl td input {
   	border: 1px solid #ccc;
   	width: 320px;
   	height: 50px;
   	padding: 5px;
   }
   .register-tbl td select {
   	border: 1px solid #ccc;
   	width: 230px;
   	height: 50px;
   	padding: 5px;
   }
   
   .register-tbl .date input{
   	width: 170px;
   	font-size: 16px;
   }
   
   .register-tbl .date span{
   	margin: 5px;
   }
   
   .register-tbl #address input{
   	width: 150px;
   	text-align: right;
   }
   
   #detail-address #search{
   	width: 60px;
   	height: 48px;
   	font-size: 13px;
   	border: 0px;
   }
   
   .postContent {
    border: 1px solid #ccc;
   	width: 500px;
   	height: 400px;
   	font-size: 20px;
   	padding: 5px;
   	}
   	
   	.register-tbl .attachedFile{
   		width: 250px;
   	}
   	
   	.register-tbl #map-box input{
   		width: 140px;
   		font-size:16px;
   	}
   
   .coltd{
   	text-align: center;
   }
   
   .register-tbl .registerBtn{
   	background-color: #548CA8;
   	color: white;
   	width: 150px;   	
   }
   
   
</style>

</head>
<body>
   <!-- jobregister.jsp -->
   <%@ include file="/inc/header1.jsp" %>
   
   <section class="main-section">
      
      <div class="register-box">
      	<div class="register-content">
      		<div class="title">${name} ?????? ??????</div>
      		
      		<form method="POST" action="/webproject/main/company/job/register/jobregisterok.do" enctype="multipart/form-data">
      		<table class="register-tbl">
      			<tr>
      				<th>?????????</th>
      				<td><input type="text" name="postName" required></td>
      			</tr>
      			<tr>
      				<th>?????? ??????</th>
      				<td class="date">
      					<input type="date" name="startDate" required>
      					<span>-</span>
      					<input type="date" name="endDate" required>
      				</td>
      			</tr>
      			<tr>
      				<th>??????</th>
      				<td>
      					<select name="jobGroup" required>
      						<option value="?????? ?????????">?????? ?????????</option>
      						<option value="??? ?????????">??? ?????????</option>
      						<option value="??????????????? ?????????">??????????????? ?????????</option>
      						<option value="?????? ?????????">?????? ?????????</option>
      						<option value="??????????????? ?????????">??????????????? ?????????</option>
      						<option value="ios ?????????">ios ?????????</option>
      						<option value="????????? ????????????">????????? ????????????</option>
      						<option value="?????? ????????????">?????? ????????????</option>
      						<option value="??? ????????????">??? ????????????</option>
      					</select>
      				</td>
      			</tr>
      			<tr>
      				<th>??????</th>
      				<td>
      					<select name="career" required>
							<option value="??????????????">??????????????</option>
							<option value="??????">??????</option>
							<option value="1?????????">??????(1?????????)</option>
							<option value="3?????????">??????(3?????????)</option>
							<option value="5?????????">??????(5?????????)</option>
						</select>
      				</td>
      			</tr>
      			<tr>
      				<th>??????</th>
      				<td>
      					<select name="educationLevel" class="filtermargin" required>
							<option value="????????????">????????????</option>
							<option value="??????">????????????</option>
							<option value="??????(4??????)">????????????(4??????)</option>
						</select>
      				</td>
      			</tr>
      			<tr>
      				<th>????????????</th>
      				<td>
      					<select name="jobType" required>
      						<option value="?????????, ?????????">?????????, ?????????</option>
      						<option value="?????????">?????????</option>
      						<option value="?????????">?????????</option>
      					</select>
      				</td>
      			</tr>
      			<tr>
      				<th>??????</th>
      				<td>
      					<select name="salary" id="salary" required>
      						<option value="??????????????? ??????">??????????????? ??????</option>
      					</select>
      				</td>
      			</tr>
      			<tr>
      				<th>?????? ??????</th>
      				<td>
      					<textarea name="postContent" class="postContent" required></textarea>
      				</td>
      			</tr>
      			<tr>
      				<th>?????? ??????</th>
      				<td>
      					<input type="file" name = "attachedFile" class="attachedFile" required>
      				</td>
      			</tr>
      			
      			<tr>
      				<th>??????</th>
      				<td id="address">
      					<input type="text" name="city" required placeholder="(???)???">
      					<input type="text" name="gu" required placeholder="???">
      					<input type="text" name="dong" required placeholder="???">
      				</td>
      			</tr>
      			<tr>
      				<th>?????? ??????</th>
      				<td id="detail-address">
      					<input type="text" name="address" class="address" required placeholder="ex) **?????? 8???">
      					<input type="button" value="??????" id="search" required>
      				</td>
      			</tr>
      			<tr>
      				<th>??????(??????)</th>
      				<td id="map-box">
      					<div id="map" style="width:100%;height:350px; margin-bottom: 10px; display:none;"></div>
      					<input type="text" id="latitude" name="latitude" required placeholder="??????">
						<input type="text" id="longitude" name="longitude" required placeholder="??????">
      				</td>
      			</tr>
      			
      			<tr>
      				<td colspan="2" class="coltd">
						<input type="submit" value="??????" class="registerBtn" required>
					</td>
      			</tr>
      			
      		</table>
      		<input type="hidden" name="companySeq" value="${companySeq}">
      		</form>
      	</div>
      </div>

      
      
   </section>   
   
   <%@ include file="/inc/footer.jsp"%>
   <%@ include file="/inc/init.jsp" %>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b45f8a2df1911e3150bc76d38f8e4d13&libraries=services"></script>
	
   <script>
	   $('#search').click(function(){
		   document.getElementById("map").style.display = "block";

			var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ????????? ????????????
			        level: 3 // ????????? ?????? ??????
			    };  
	
			// ????????? ???????????????    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
	
			// ?????? ?????? ????????? ???????????????
			var ps = new kakao.maps.services.Places(); 
	
			// ???????????? ????????? ???????????????
			ps.keywordSearch($('.address').val(), placesSearchCB); 
	
			// ????????? ?????? ?????? ??? ???????????? ???????????? ?????????
			function placesSearchCB (data, status, pagination) {
			    if (status === kakao.maps.services.Status.OK) {
	
			        // ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
			        // LatLngBounds ????????? ????????? ???????????????
			        var bounds = new kakao.maps.LatLngBounds();
	
			        for (var i=0; i<data.length; i++) {
			            displayMarker(data[i]);    
			            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
			        }       
	
			        // ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
			        map.setBounds(bounds);
			    } 
			}
	
			// ????????? ????????? ???????????? ???????????????
			function displayMarker(place) {
			    
			    // ????????? ???????????? ????????? ???????????????
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: new kakao.maps.LatLng(place.y, place.x) 
			    });
			    
	
			    // ????????? ?????????????????? ???????????????
			    kakao.maps.event.addListener(marker, 'click', function() {
			        // ????????? ???????????? ???????????? ?????????????????? ???????????????
			        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
			        infowindow.open(map, marker);
			        
			        $('#latitude').val(place.y);
			        $('#longitude').val(place.x);
			       
			    });
			}
					
		});
		
   </script>
</body>
</html>



