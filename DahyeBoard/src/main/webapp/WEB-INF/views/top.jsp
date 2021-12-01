<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
#cc {
	background-color: #dfe8f0;
}

#hr {
	margin: 0px;
}

body, html {
	margin: 0px;
}

#nav {
	color: #63696e;
	text-align: right;
	padding-right: 20px;
	padding-top: 0px;
}

#nav ul {
	list-style-type: none;
}

#nav ul li {
	display: inline;
	border-left: 1px solid #c0c0c0;
	/* 테두리와 메뉴 간격 벌리기. padding: 위 오른쪽 아래 왼쪽; */
	padding: 0px 10px 0px 10px;
	/* 메뉴와 테두리 사이 간격 벌리기. margin: 위 오른쪽 아래 왼쪽; */
	margin: 0px 0px 0px 0px;
	font-weight: bold;
	font-size: 13px;
	text-align: right;
	color: black;
}

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 밑줄없앰 */
#nav ul li a {
	text-decoration: none;
	color: black;
	font-family: sans-serif;
}

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 노란 밑줄이(border-bottom) 생김 */
#nav ul li a:hover {
	color: #2f3438;
	border-bottom: 2px solid blue;
}

#nav ul li:first-child {
	border-left: none;
}

#nav1 {
	color: #63696e;
	text-align: left;
	padding-right: 20px;
}

#nav1 ul {
	list-style-type: none;
}

#nav1 ul li {
	display: inline;
	border-left: 1px solid #c0c0c0;
	/* 테두리와 메뉴 간격 벌리기. padding: 위 오른쪽 아래 왼쪽; */
	padding: 0px 10px 0px 10px;
	/* 메뉴와 테두리 사이 간격 벌리기. margin: 위 오른쪽 아래 왼쪽; */
	margin: 0px 0px 0px 0px;
	font-weight: bold;
	font-size: 13px;
	text-align: left;
	color: black;
	margin: 0px 0px 0px 0px
}

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 밑줄없앰 */
#nav1 ul li a {
	text-decoration: none;
	color: black;
	font-family: sans-serif;
}

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 노란 밑줄이(border-bottom) 생김 */
#nav1 ul li a:hover {
	color: #2f3438;
	border-bottom: 2px solid blue;
}

#nav1 ul li:first-child {
	border-left: none;
}
</style>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<table id="cc" width="100%" align="center">
		<tr>
			<td width="50%">
				<div id="nav1">
					<ul>
						<li><a href="main">Home</a></li>
					</ul>
				</div>
			</td>
			<td width="50%">
				<div id="nav" align="right">
					<ul>
						<c:choose>
							<c:when test="${login == true && dto != null }">
								<li><a href="logout">Logout</a></li>
								<li>환영합니다. <font color="blue"><u>${dto.name }</u></font>님!
								</li>
							</c:when>
							<c:otherwise>
								<li><a href="loginform">Login</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</td>
		</tr>
	</table>
	<hr id="hr">


	<!-- 	<nav>
		<ul>

			<li><a href="">글쓰기</a></li>
			<li><a href="">글목록</a></li>
			<li><a href="loginform">로그인</a></li>
			<li><a href="join">회원가입</a></li>
		</ul>
	</nav> -->
</body>
</html>