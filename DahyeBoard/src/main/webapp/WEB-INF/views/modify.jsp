<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="javax.print.attribute.standard.PresentationDirection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
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
<title>회원등록</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	%>
	<form action="modifydata" method="post">
		<div id="minsert">
			<fieldset>
				<legend>
					<b>정보수정</b>
				</legend>
				<table border="1" width="450" align="center">
					<tr>
						<td>회원이름</td>
						<td>${param.name }</td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
						<input type="radio" name="gender" value="남">남
						<input type="radio" name="gender" value="여">여
						</td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><input type="text" name="birth"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="tel"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email"></td>
					</tr>
				</table>
				<p>
					<input type="submit" value="입력완료" font-size="12px">
			</fieldset>
		</div>
	</form>
	<%
	HttpSession hs = request.getSession();
	hs.setAttribute("name", name);
	%>
</body>

</html>