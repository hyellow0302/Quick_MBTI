<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="login.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="contents">
<form method="post" action="home.jsp" name="home">
	<div class="wrapper">
		<div class="title">
			<h1 style="font-size: 21px;">로그인</h1>
		</div>
		<div class="input">
	        <input id="id" name="userId" type="text" placeholder="ID를 입력해 주세요.">
	    </div>
	    <div class="input">
	        <input id="password" name="password" type="password" placeholder="PASSWORD를 입력해 주세요.">
	    </div>
	    <div class="signUp">
	        <input type="submit" name="Submit" value="로그인">
	    </div>
	</div>
</form>
</div>

</body>
</html>