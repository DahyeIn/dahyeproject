<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="board_menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
#bb {
	padding-top: 30px;
}

#aa {
	text-align: center;
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
		<h3>글쓰기</h3>
		<hr width="800">
		<table id="aa" align="center" width="800">
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>글내용</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>

			<c:forEach items="${boardlist }" var="b">
				<tr>
					<td>${b.no }</td>
					<td><a href="detail">${b.title }</a></td>
					<td>${b.email }</td>
					<td>${b.content }</td>
					<td>${b.reg_date }</td>
					<td>${b.hit_count }</td>
			</c:forEach>
		</table>
	</div>
</body>
</html>

