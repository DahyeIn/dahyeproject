<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="javax.print.attribute.standard.PresentationDirection"%>
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
	width: 450px;
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
	var name = f.name.value;
	var vname = /^[가-힣]*$/;
	var pw = f.password.value;
	var pwchk = f.passwordcheck.value;
	
	if(email == ""){
		alert("이메일을 입력하세요.");
		f.email.select();
		return false;
	}
	
	else if(name == ""){
		alert("이름을 입력하세요.");
		f.name.select();
		return false;		
	}
	
	else if(!vname.test(name)){
		alert("이름은 국문만 입력하세요.");
		f.name.select();
		return false;	
	}
	
	else if(pw == ""){
		alert("비밀번호를 입력하세요.");
		f.password.select();
		return false;
	}
	
	else if(pwchk == ""){
		alert("비밀번호 확인 입력하세요.");
		f.passwordcheck.select();
		return false;
	}
	
	else if(pw != pwchk){
		alert("비밀번호를 동일하게 입력하세요");
		f.passwordcheck.select();
		return false;
	}		
	f.submit();
}
</script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form name="form" action="inputdata" method="post">
		<div id="minsert">
			<h3>회원가입</h3>
			<hr width="450">
			<table id="aa" width="450" align="center">
				<tr>
					<td>이메일</td>
			    	<td>
			    	<input type="text" name="email" maxlength="50">&emsp;
			    	<input type="button" value="중복확인">
		    		</td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="text" name="passwordcheck"></td>
				</tr>

			</table>
			<p>
				<input class="button" type="button" value="가입완료" onclick="return check()">				
		</div>
	</form>
</body>

</html>