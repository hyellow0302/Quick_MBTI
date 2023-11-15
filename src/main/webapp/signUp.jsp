<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*"%> 
<jsp:useBean id="signUp" class="com.webPro03.SignUpDTO"/>

<jsp:setProperty name="signUp" property="userId"/>
<jsp:setProperty name="signUp" property="password"/>
<jsp:setProperty name="signUp" property="phone"/>
<jsp:setProperty name="signUp" property="gender"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String, Object> signUpData = new HashMap<>();
		signUpData.put("userId", signUp.getUserId());
		signUpData.put("password", signUp.getPassword());
		signUpData.put("phone", signUp.getPhone());
		signUpData.put("gender", Integer.parseInt(signUp.getGender()));
		
		UserBean userBean = new UserBean();
		userBean.signUp(signUpData);
	%>
	
	<script>location.href = "home.jsp"; </script>
</body>
</html>