<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#container {
	width: 100%;
	margin: 0px auto;
	text-align: center;
	border: 0px solid #bcbcbc;
}

#content {
	width: 100%;
	border: 0px solid #bcbcbc;
	margin-top: 0px;
	min-height: 100%;
	height: 400px;
	top: 50%;
	left: 50%;
}

#footer {
	clear: both;
	padding: 1px;
	border: 0px solid #bcbcbc;
	background-color: #2196F3;
	margin-top: 500px;
	color: white;
}
</style>

</head>
<body>
	<div id="container">
		<div id="top">
			<tiles:insertAttribute name="top" />
		</div>

		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>

		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>