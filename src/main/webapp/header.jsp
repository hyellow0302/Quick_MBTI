<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <jsp:useBean id="login" class="com.webPro03.UserBean" />
    <jsp:setProperty name="login" property="userId" />
    <jsp:setProperty name="login" property="password" />
    <!DOCTYPE html>
    <html lang="ko">
	<link href="header.css" rel="stylesheet" />
    <head>
        <meta charset="utf-8">
        <title>MBTI test</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
        <link href="compatibility.css" rel="stylesheet">
    </head>

    <body class="background">
        <div class="header-main">
            <header class="header-container">
                <h1 class="header-logo"><a class="header-logo-link" href="home.jsp">Sim Kong</a></h1>

            <% if(login.signIn().getId() == null && login.signInWithId().getId() == null) {%>
				<form method="post" name="home" class="header-container__menu-container">
                    <nav>
                        <div class="login-list">
                            <input type="button" name="Submit" value="로그인" onclick="location.href='login.jsp'">
                            <input type="button" name="Submit" value="회원가입" onclick="location.href='signUpForm.jsp'">
                        </div>
                    </nav>
                </form>
 			<% } else { %>
 			<form method="post" name="home" class="header-container__menu-container">
				<nav>
				<div class="input">
				   	<input id="id" name="userId" type="hidden" 
				        value="<%= login.getUserId() %>" >
				</div>
				<div class="input">
			     	<input id="password" name="password" type="hidden"
			        	value="<%= login.getPassword() %>" >
			    </div>
			    <div class="list">
			        <input type="submit" name="Submit" value="테스트하기"
			        formaction = "home.jsp">
			        <input type="submit" name="Submit" value="궁합보기"
			        formaction = "compatibility.jsp">
			        <input type="submit" name="Submit" value="유형보기"
			        formaction = "type.jsp">
			        <input type="submit" name="Submit" value="게시판"
			        formaction = "post.jsp">
			        <input class="logout" type="button" name="Submit" value="로그아웃"
			       	onclick = "location.href='home.jsp'">
				</div>
				</nav>
			</form>
 			<% } %>
            </header>

        </div>
    </body>

    </html>