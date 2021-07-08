<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%

	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp" %>

<style>
	.table { width: 500px; }
	.table th {text-align: center;}
	input[type="number"] {width: 100px;}
	input[type="text"] {width: 300px;}
	input[type="color"] {width: 60px;}
	input[type="submit"] {width: 70px; background-color: lime; color: white; text-align: center;}
	#border {width: 100px;}
</style>
</head>
<body>
	<!-- ex07_form.jsp -->
	<div class="container">
	
		<h1 class="page-header">버튼 만들기</h1>
		
		<form action="ex07_ok.jsp" method="GET">
			<table class="table table-bordered">
				<tr>
					<th>너비(px)</th>
					<td><input type="number" name="width" id="" min="20" max="300" value="60" class="form-control sm right"/></td>
				</tr>
				<tr>
					<th>높이(px)</th>
					<td>
						<input type="number" name="height" id="" min="10" max="200" value="30" class="form-control sm right"/>
					</td>
				</tr>
				<tr>
					<th>텍스트</th>
					<td>
						<input type="text" name="text" id="" value="Button" class="form-control"/>
					</td>
				</tr>
				<tr>
					<th>배경색</th>
					<td>
						<input type="color" name="backgroundColor" id="" value="#FFFFFF" class="form-control"/>
					</td>
				</tr>
				<tr>
					<th>글자색</th>
					<td>
						<input type="color" name="color" id="" value="#000000" class="form-control"/>
					</td>
				</tr>
				<tr>
					<th>글자 크기(px)</th>
					<td>
						<input type="number" name="size" id="" min="10" max="100" value="16" class="form-control"/>
					</td>
				</tr>
				<tr>
					<th>버튼 개수(ea)</th>
					<td>
						<input type="number" name="count" id="" min="1" max="30" value="1" class="form-control"/>
					</td>
				</tr>
				<tr>
					<th>버튼 간격</th>
					<td>
						<div>좌우 간격: <input type="range" name="range1" id="" min="0" max="50" value="0"/></div>
						
						<div>상하 간격: <input type="range" name="range2" id="" min="0" max="50" value="0"/></div>
					</td>
				</tr>
				<tr>
					<th>아이콘</th>
					<td>
						<input type="radio" name="icon" id="" value="none" checked/> 없음
						<input type="radio" name="icon" id="" value="glyphicon glyphicon-heart" /> <span class="glyphicon glyphicon-heart"></span>
						<input type="radio" name="icon" id="" value="glyphicon glyphicon-headphones" /> <span class="glyphicon glyphicon-headphones"></span>
						<input type="radio" name="icon" id="" value="glyphicon glyphicon-camera" /> <span class="glyphicon glyphicon-camera"></span>
						<input type="radio" name="icon" id="" value="glyphicon glyphicon-facetime-video" /> <span class="glyphicon glyphicon-facetime-video"></span>
						<input type="radio" name="icon" id="" value="glyphicon glyphicon-magnet" /> <span class="glyphicon glyphicon-magnet"></span>
					</td>
				</tr>
				<tr>
					<th>테두리</th>
					<td>
						<select name="border" class="form-control sm" id="border">
							<option value="invisible">감추기</option>
							<option value="visible">보이기</option>
						</select>
					</td>
				</tr>
			</table>
			<input type="submit" value="만들기" class="form-control"/>
		</form>
	
	</div>
	
	
	<script>
	
	</script>
</body>
</html>







