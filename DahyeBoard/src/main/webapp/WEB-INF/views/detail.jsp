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

.Btn {
	width: 225px;
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
		<h3>글 상세보기</h3>
		<hr width="450">
		<table id="aa" align="center" width="450" cellspacing="10">
			<c:forEach items="${detail }" var="de">
				<tr>
					<th>글번호</th>
					<td>${de.no }</td>
					<th>조회수</th>
					<td>${de.hit_count }</td>
					<th>작성일자</th>
					<td>${de.reg_date }</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td colspan="3">${de.title }</td>
					<th>작성자</th>
					<td>${de.email }</td>
				</tr>
				<tr>
					<th>글내용</th>
					<td colspan="5">${de.content }</td>
				</tr>
				<tr>
				<td colspan="3">
				<input class="Btn" type="button" value="수정하기"
					onclick="location.href='boardModify?no=${de.no}'"
				>
				</td>
				<td colspan="3">
				<input class="Btn" type="button" name="dd" value="삭제하기"
					onclick="location.href='boardDelete?no=${de.no}'"
				>
				</td>
				</tr>
			</c:forEach>
		</table>
		<p>
	</div>
</body>
</html>

