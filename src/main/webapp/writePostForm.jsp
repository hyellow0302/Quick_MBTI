<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="user" class="com.webPro03.UserBean"/>
<jsp:setProperty name="user" property="userId"/>

<!DOCTYPE html>
<html>
<head>
<link href="writePostForm.css" rel="stylesheet">
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contents">
		<form method="post" action="writePost.jsp">
	    <table>
	        <tr>
	            <td>제목</td>
	            <td><input type="text" name="title"></td>
	        </tr>
	        <tr>
	            <td>내용</td>
	            <td>
	                <textarea name="content"></textarea> 
	            </td>
	        </tr>
	    </table>
		    <input name="userId" type="hidden" 
						        value="<%= user.getUserId() %>" >
		    <input class="write" type="submit" value="글쓰기">
   		</form>
    </div>
</body>
</body>
</html>