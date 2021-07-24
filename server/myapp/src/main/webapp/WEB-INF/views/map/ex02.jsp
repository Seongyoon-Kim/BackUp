<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myapp</title>

<%@ include file="/inc/asset.jsp" %>

<style>
	
</style>

</head>
<body>
	<!-- template.jsp > ex02.jsp -->
	<%@ include file="/inc/header.jsp" %>
	
	<section class="main-section">
		
		<h1>Map API <small>좌표 이동 + 레벨 변경</small></h1>
		
		<div id="map" style="width:100%; height:400px;"></div>
		
		<hr>
		
		<div>
			<div class="btn-group" role="group">
				<input type="button" value="서울역으로 이동하기" id="btn1" class="btn btn-default" />
				<input type="button" value="역삼역으로 이동하기" id="btn2" class="btn btn-default" />
			</div>
			<hr>
			<div class="btn-group" role="group">
				<input type="button" value="확대하기" id="btn3" class="btn btn-default" />
				<input type="button" value="축소하기" id="btn4" class="btn btn-default" />
			</div>
			<hr>
			<div class="btn-group" role="group">
				<input type="button" value="드래그 On/Off" id="btn5" class="btn btn-default" />
				<input type="button" value="줌 On/Off" id="btn6" class="btn btn-default" />
			</div>
		</div>
		
	</section>	
	
	
	<%@ include file="/inc/init.jsp" %>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2e04bdb48250c94ef66982d6521ba82"></script>
	<script>
		
		var container = document.getElementById("map"); // 지도 태그 선택
		
		var options = {
			center: new daum.maps.LatLng(37.499320, 127.033220), // 지도의 중앙 좌표
			level: 3 // 지도의 레벨(확대, 축소)
		};
		
		var map = new daum.maps.Map(container, options); // 지도 생성(***)
		
		
		// 추가 설정
		var mapTypeControl = new daum.maps.MapTypeControl();
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
		
		//var zoomControl = new daum.maps.ZoomControl();
		//map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		
		// 지도 드래그 유무
		map.setDraggable(false);
		
		// 지도 확대/축소 유무
		map.setZoomable(false);
		
		
		// 버튼 클릭 > 해당 위치로 이동하기
		// 서울역
		$("#btn1").click(function () {
			
			// 이동할 좌표?
			var seoulStation = new daum.maps.LatLng(37.554961, 126.970858);
			map.setCenter(seoulStation);
			
		});
		

		// 역삼역
		$("#btn2").click(function() {

			// 이동할 좌표?
			var yeoksamStation = new daum.maps.LatLng(37.500464, 127.036173);
			map.setCenter(yeoksamStation);

		});
		
		
		
		// 지도 확대/축소 제어하기
		$("#btn3").click(function name() {
			
			// 확대 : ZoomIn
			//map.setLevel(1);
			map.setLevel(map.getLevel() - 1);
			
		});
		

		$("#btn4").click(function name() {

			// 축소 : ZoomOut
			//map.setLevel(14);
			map.setLevel(map.getLevel() + 1);

		});
		
		
		
		// 드래그 On/Off
		$("#btn5").click(function () {
			
			//alert(map.getDraggable());
			
			if (map.getDraggable()) {
				map.setDraggable(false);
				$(this).removeClass("btn-primary");
				$(this).addClass("btn-default");
			} else {
				map.setDraggable(true);
				$(this).removeClass("btn-default");
				$(this).addClass("btn-primary");
			}
			
		});
		
		// 줌 On/Off
		$("#btn6").click(function () {
			
			if (map.getZoomable()) {
				map.setZoomable(false);
				$(this).removeClass("btn-danger");
				$(this).addClass("btn-default");
			} else {
				map.setZoomable(true);
				$(this).removeClass("btn-default");
				$(this).addClass("btn-danger");
			}
			
		});
		
	</script>
</body>
</html>















