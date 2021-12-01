<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@include file="board_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
#bb {
	padding-top: 30px;
}

#aa {
	text-align: left;
	color: #63696e;
	font-size: 12px;
}

h3 {
	color: #63696e;
}

.button {
	width: 150px;
	height: 50px;
	background-color: #2196F3;
	color: #ffffff;
	font-size: 13px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	border: none;
}
</style>
<script>
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="bb">
		<form name="form" action="boardinputsave" method="post">
			<h3>글쓰기</h3>
			<hr width="300">
			<table id="aa" align="center" width="300">
				<tr>
					<td>글번호</td>
					<td>자동생성</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><textarea cols="32" rows="1" name="email"></textarea></td>
				</tr>
				<tr>
					<td>글제목</td>
					<td><textarea cols="32" rows="1" name="title"></textarea></td>
				</tr>
				<tr>
					<td>글내용</td>
					<td><textarea cols="32" rows="7" name="content"></textarea></td>
				</tr>
			</table>
			<p>
				<input class="button" type="submit" value="등록"
					onclick="return check()"
				> <input class="button" type="reset" value="취소"
					onclick="location.href='main'"
				>
		</form>
	</div>
</body>
</html>

