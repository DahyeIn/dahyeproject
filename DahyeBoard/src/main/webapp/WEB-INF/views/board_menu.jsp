<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
#board {
	background-color: white;
	border-radius: 20px;
	width: 100%;
	margin-top : 0px auto;
}

#board ul {
	list-style-type: none;
	font-size: 14px;
	font-weight: bold;
	color: #000000;
	float: left;
}

#board ul li {
	display: inline;
	border-left: 1px solid #c0c0c0;
	/* 테두리와 메뉴 간격 벌리기. padding: 위 오른쪽 아래 왼쪽; */
	padding: 0px 10px;
	/* 메뉴와 테두리 사이 간격 벌리기. margin: 위 오른쪽 아래 왼쪽; */
	margin: 5px 0px;
	font-weight: bold;
	font-size: 12px;
}

/* 특별하게 정해지지 않은 링크 속성에 모두 적용할 스타일 : 흰글씨 / 밑줄없앰 */
#board ul li a {
	text-decoration: none;
	color: #6E6E6E
}

/* 링크에 마우스 롤오버시 적용되는 스타일 : 하단에 밑줄이(border-bottom) 생김 */
#board ul li a:hover {
	color: #A4A4A4;
	border-bottom: 2px solid #2E64FE;
}

#board ul li:first-child {
	border-left: none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav id="board">
		<ul>
			★ board
			<li><a href="boardinput">글쓰기</a></li>
			<li><a href="boardList">글목록</a></li>
		</ul>
	</nav>
</body>
</html>