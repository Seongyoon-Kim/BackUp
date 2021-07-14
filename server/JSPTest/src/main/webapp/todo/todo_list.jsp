<%@page import="com.test.jsp.jdbc.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stat = null;
ResultSet rs = null;

try {

	conn = DBUtil.open();
	stat = conn.createStatement();

	String sql = "select * from tblTodo order by seq asc";

	rs = stat.executeQuery(sql);

} catch (Exception e) {
	System.out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@ include file="/inc/asset.jsp"%>

<style>
.container {
	width: 500px;
	box-shadow: 0px 0px 5px #777;
	height: 100vh;
}

.container .page-header {
	font-variant: small-caps;
	letter-spacing: -1px;
}

.container .table th {
	text-align: center;
	vertical-align: middle;
	font-variant: small-caps;
}

.container .table th:nth-child(1) {
	width: 50px;
}

.container .table th:nth-child(3) {
	width: 70px;
}

.container .table td {
	text-align: center;
	vertical-align: middle;
}

.container .table td:nth-child(2) {
	text-align: left;
}

td .glyphicon {
	font-size: 12px;
	display: flex;
	padding: 3px;
}

td:nth-child(2) {
	cursor: pointer;
}

td:nth-child(2):hover {
	background-color: #EEE;
}

td small {
	font-size: 10px;
	color: #AAA;
}

.btns {
	display: flex;
	justify-content: space-between;
}

.complete {
	text-decoration: line-through;
	opacity: .7;
}

ol {
	counter-reset: section;
	list-style-type: none;
}

li:before {
	counter-increment: section;
	content: counters(section, ".") ".";
}

#descicon span {
	margin-top: 50px;
	font-size: 1.5em;
	opacity: .3;
	cursor: pointer;
}

#desc {
	margin-top: 20px;
	display: none;
}
</style>

</head>
<body>
	<!-- todo_list.jsp -->
	<div class="container">
		<h1 class="page-header">
			Todo List <small>List</small>
		</h1>

		<table class="table table-bordered">
			<tr>
				<th><input type="checkbox" name="cbAll" id="cbAll"></th>
				<th>Todo</th>
				<th></th>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><input type="checkbox" name="cbItem" class="cbItem" value="<%= rs.getString("seq") %>"></td>
				<td><span><%=rs.getString("todo")%></span> <small><%=rs.getString("regdate")%></small></td>
				<td><button type="button" class="btn btn-success btn-xs"
						data-toggle="tooltip" title="할일을 수정합니다."
						onclick="edit(<%=rs.getString("seq")%>);">
						<span class="glyphicon glyphicon-edit"></span>
					</button></td>
			</tr>
			<%
			}
			%>
		</table>
		<div class="btns">
			<input type="button" value="삭제하기" class="btn btn-danger"
				data-toggle="tooltip" title="체크된 할일을 삭제합니다." onclick="del();">
			<button type="button" class="btn btn-primary" data-toggle="tooltip"
				title="할일을 추가합니다." onclick="add();">추가하기</button>
		</div>


		<div id="descicon">
			<span class="glyphicon glyphicon-list" data-toggle="tooltip"
				title="구현 목록입니다."></span>
		</div>

		<div id="desc">
			<h3>구현할 것</h3>
			<ol>
				<li>할일 목록 출력</li>
				<li>할일 추가</li>
				<li>할일 수정</li>
				<li>할일 삭제
					<ol>
						<li>체크박스: 모든 항목 선택/해제</li>
						<li>체크항목 삭제하기</li>
					</ol>
				</li>
				<li>추가 기능
					<ol>
						<li>할일 클릭(완료/미완료)</li>
					</ol>
				</li>
			</ol>
		</div>
	</div>

	<script>
	  
		$('[data-toggle="tooltip"]').tooltip();	
		
		$("#descicon span").click(function() {
			$("#desc").toggle();
		});
		
		$(document).on('click', '#cbAll', function () {
			
			if ($("#cbAll").is(':checked')) {
				$(".cbItem").prop('checked', true);
			} else {
				$(".cbItem").prop('checked', false);
			}
			
		});
	
	  	function add() {
	  		location.href = 'todo_add.jsp';
	  	}
	  	
	  	function edit(seq) {
	  		location.href = 'todo_edit.jsp?seq=' + seq;
	  	}
	  	
	  	function del() {
	  		if ($(".cbItem:checked").length > 0) {
	  			
	  			if (confirm("선택한 항목을 삭제하시겠습니까?")) {

	  				let temp = '';
	  				
	  				$(".cbItem:checked").each(function (item, index) {
						temp += $(index).val() + ",";
						
						location.href = "/jsp/todo/todo_delok.jsp?seq=" + temp;
					})
	  				
	  			}
	  			
	  		}
	  	}
		
	</script>
</body>
</html>
<%
rs.close();
stat.close();
conn.close();
%>














