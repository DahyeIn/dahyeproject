<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	text-align: center;
	border-color: gray;
	font-size: 14px;
	margin-top: 20px;
	margin-bottom: 20px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>
			<b>정보조회</b>
		</legend>
		<table border="1" width="700" align="center">
			<tr>
				<th>이름</th>
				<th>성별</th>				
				<th>생년월일</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>비고</th>
			</tr>

			<c:forEach items="${list }" var="i">
				<tr>
					<td>${i.name }</td>
					<td>${i.gender }</td>					
					<td>${i.birth }</td>
					<td>${i.tel }</td>
					<td>${i.email }</td>
					<td><input type="button" value="수정"
						onclick="location.href='modify?name=${i.name}'"
					>&ensp; <input type="button" value="삭제"
						onclick="location.href='delete?name=${i.name}'"
					></td>
				</tr>
			</c:forEach>
		</table>
	</fieldset>
</body>
</html>