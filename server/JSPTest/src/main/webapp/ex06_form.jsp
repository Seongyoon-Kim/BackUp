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
	.btns { margin: 20px 0; }
	.table { width: 400px; }
</style>
</head>
<body>
	<!-- ex06_form.jsp -->
	<div class="container">
	
		<h1 class="page-header">request 객체</h1>
		
		<h2>데이터 보내기</h2>
		
		<form action="ex06_ok.jsp" method="GET">
		
			<table class="table table-bordered">
				<tr>
					<th>데이터</th>
					<td><input type="text" name="data" id="" class="form-control"/></td>
				</tr>
				<tr>
					<th>숫자</th>
					<td><input type="number" name="num" id="" class="form-control"/></td>
				</tr>
				<tr>
					<th>텍스트 박스</th>
					<td><input type="text" name="txt1" id="" class="form-control"/></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="txt2" class="form-control"></td>
				</tr>
				<tr>
					<th>텍스트 박스</th>
					<td><textarea rows="5" cols="" name="txt3" class="form-control"></textarea></td>
				</tr>
				<tr>
					<th>체크 박스</th>
					<td>
						<input type="checkbox" name="cb1" id="" />
						<input type="checkbox" name="cb2" id="" />
					</td>
				</tr>
				<tr>
					<th>체크 박스</th>
					<td>
						<input type="checkbox" name="cb3" id="" value="red"/> Red
						<input type="checkbox" name="cb4" id="" value="blue"/> Blue
					</td>
				</tr>
				<tr>
					<th>체크 박스</th>
					<td>
						<input type="checkbox" name="cb5" id="" value="사과"/>사과
						<input type="checkbox" name="cb6" id="" value="딸기"/>딸기
						<input type="checkbox" name="cb7" id="" value="포도"/>포도
						<input type="checkbox" name="cb8" id="" value="감"/>감
						<input type="checkbox" name="cb9" id="" value="귤"/>귤
					</td>
				</tr>
				<tr>
					<th>체크 박스</th>
					<td>
						<input type="checkbox" name="cb" id="" value="사과"/>사과
						<input type="checkbox" name="cb" id="" value="딸기"/>딸기
						<input type="checkbox" name="cb" id="" value="포도"/>포도
						<input type="checkbox" name="cb" id="" value="감"/>감
						<input type="checkbox" name="cb" id="" value="귤"/>귤
					</td>
				</tr>
				<tr>
					<th>텍스트 박스</th>
					<td>
						<input type="text" name="txt" id="" /><br>
						<input type="text" name="txt" id="" /><br>
						<input type="text" name="txt" id="" /><br>
						<input type="text" name="txt" id="" /><br>
						<input type="text" name="txt" id="" />
					</td>
				</tr>
				<tr>
					<th>라디오 버튼</th>
					<td>
						<label><input type="radio" name="rb" value="male" checked>남자</label>
						<label><input type="radio" name="rb" value="female">여자</label>
					</td>
				</tr>
				<tr>
					<th>셀렉트 박스</th>
					<td>
						<select name="sel1" id="">
							<option value="red">빨강</option>
							<option value="yellow">노랑</option>
							<option value="blue">파랑</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>셀렉트 박스</th>
					<td>
						<select name="sel2" id="" multiple>
							<option value="red">빨강</option>
							<option value="yellow">노랑</option>
							<option value="blue">파랑</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>히든 태그</th>
					<td><input type="hidden" name="id" value="hong"></td>
				</tr>
				<tr>
					<th>HTML5</th>
					<td><input type="date" name="date1" id="" /></td>
				</tr>
			</table>
			<div class="btns">
				<input type="submit" value="보내기" class="btn btn-default"/>
			</div>
		
		</form>
	
	</div>
	
	
	<script>
	
	</script>
</body>
</html>







