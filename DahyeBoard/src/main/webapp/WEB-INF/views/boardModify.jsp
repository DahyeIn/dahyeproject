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
	function check() {

		var f = document.form;
		var email = f.email.value;
		var title = f.title.value;
		var content = f.content.value;
		var lastcheck = f.lastcheck.value;

		if (email == "") {
			alert("작성자를 입력하세요.");
			f.email.select();
			return false;
		}

		else if (title == "") {
			alert("글제목을 입력하세요.");
			f.title.select();
			return false;
		}

		else if (content == "") {
			alert("글내용을 입력하세요.");
			f.content.select();
			return false;
		}

		else if (lastcheck) {
			alert("작성자: " + email + "\n" + "글제목: " + title + "\n" + "글내용: "
					+ content + "\n\n수정 하시겠습니까?")
		}
		f.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="bb">
		<form name="form" action="boardModifysave" method="post">
		<%
		int no = Integer.parseInt(request.getParameter("no"));
		%>
			<h3>글수정</h3>
			<hr width="300">
			<table id="aa" align="center" width="300">
				<tr>
					<td>글번호</td>
					<td>${param.no }</td>
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
				<input class="button" name="lastcheck" type="submit" value="수정"
					onclick="return check()"
				> <input class="button" type="reset" value="취소"
					onclick="location.href='boardList'"
				>
		</form>
		<%
		HttpSession hs = request.getSession();
		hs.setAttribute("no", no);
		%>
	</div>
</body>
</html>