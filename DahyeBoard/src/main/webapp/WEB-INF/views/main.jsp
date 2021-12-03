<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
	margin: 0px;
}

a {
	text-decoration: none;
	font-family: fantasy;
	color: #2f3438;
}

#i {
	color: #2f3438;
	font-size: 27px;
	font-family: fantasy;
}

section {
	padding-top: 50px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<table width="600" align="center">
			<tr>
				<td colspan="3">
					<div id="i">★ welcome dahye's world ★</div> <br> <br> <br>
				</td>
			<tr>
				<td width="300"><img src="resources/image/귀여워1.jpg" width="80"
					height="80"
				></td>
				<td width="300"><img src="resources/image/귀여워2.jpg" width="80"
					height="80"
				></td>
<!-- 				<td width="300"><img src="resources/image/귀여워3.jpg" width="80"
					height="80"
				></td> -->
			</tr>
			
			<tr>
			<td width="300">
				<c:choose>
					<c:when test="${login == true && dto != null }">
						<a href="logout">Logout</a>
					</c:when>
					<c:otherwise>
						<a href="loginform">Login</a>
					</c:otherwise>
				</c:choose>
				</td>
				<td width="300"><a href="boardList">board</a></td>				
<!-- 				<td width="300"><a href="gbList">guest book</a></td> -->
			</tr>
		</table>
	</section>
</body>
</html>