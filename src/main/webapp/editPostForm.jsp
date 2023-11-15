<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*, java.sql.*"%>
    
<jsp:useBean id="detail" class="com.webPro03.DetailDTO"/>
<jsp:setProperty name="detail" property="userId"/>
<jsp:setProperty name="detail" property="seq"/>

<!DOCTYPE html>
<html>
<head>
<link href="writePostForm.css" rel="stylesheet">
<meta charset="UTF-8">
<title>글수정</title>
</head>
<body>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contents">
		<%
			PostBean postBean = new PostBean();
			PostDTO post = postBean.getPost(detail);
			
			String type = "hidden";
			if(detail.getUserId().equals(post.getUserId()))
				type = "button";
		%>
		<form method="post" action="editPost.jsp">
	    <table>
	        <tr>
	            <td>제목</td>
	            <td><input type="text" name="title" value="<%= post.getTitle() %>"></td>
	        </tr>
	        <tr>
	            <td>내용</td>
	            <td>
	                <textarea name="content"><%= post.getContent() %></textarea> 
	            </td>
	        </tr>
	    </table>
		    <input name="userId" type="hidden" value="<%= detail.getUserId() %>" >
			<input name="seq" type="hidden" value="<%= detail.getSeq() %>" >
		    <input class="write" type="submit" value="글수정">
   		</form>
    </div>
</body>
</body>
</html>