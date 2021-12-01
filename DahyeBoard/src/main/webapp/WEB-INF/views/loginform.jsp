<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<style>
#aa {
	text-align: left;
	color: #63696e;
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
function check(){
	var f = document.form;
	var email = f.email.value;
	var pw = f.password.value;
	
	if(email == ""){
		alert("이메일을 입력하세요");
		f.email.select();
		return false;
	}
	
	else if(pw == ""){
		alert("비밀번호를 입력하세요");
		f.password.select();
		return false;
	}
	f.submist();
}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="login" method="post">
		<h3>로그인</h3>
		<hr width="300">
		<table id="aa" align="center" width="300">
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<p>
				<input class="button" type="submit" value="로그인" onclick="return check()">
				<input class="button" type="button" value="회원가입" onclick="location.href='join'">
	</form>
</body>
</html>

