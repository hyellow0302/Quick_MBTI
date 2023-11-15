<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*" %>

<jsp:useBean id="user" class="com.webPro03.UserBean"/>
<jsp:setProperty name="user" property="userId"/>
<jsp:setProperty name="user" property="mbti"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>결과</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/defalt.css">
<link rel="stylesheet" href="./css/result.css">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div align=center class="container">
	<section id="main" class="section">
	   	<h1>나의 결과는?</h1>
	   	<% 
		    Map<String,String> mbti = new HashMap<String, String>();
		    mbti.put("userId",user.getUserId());
		    mbti.put("MBTI", user.getMbti());
		    user.setMBTI(mbti);
	    %>
	    <div id="myMbti" class="resultname">
			
	    </div>

	</section>
<script src="./js/data.js" charset="utf-8"></script>
<script src="./js/start.js" charset="utf-8"></script>
</div>
<script>
	const initialize = () => {
		const myMbti = document.getElementById('myMbti');
		const result = localStorage.getItem('result');
		myMbti.innerText = result;
	};
	window.onload = () => initialize();
</script>
</body>
</html>