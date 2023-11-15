<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*, java.sql.*"%>
    
<jsp:useBean id="detail" class="com.webPro03.DetailDTO"/>
<jsp:setProperty name="detail" property="seq"/>
<jsp:setProperty name="detail" property="userId"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
</head>
<link href="postDetail.css" rel="stylesheet">
<body >
<jsp:include page="header.jsp"></jsp:include>
<div class="well">
		<%
			PostBean postBean = new PostBean();
			PostDTO post = postBean.getPost(detail);
			
			String type = "hidden";
			if(detail.getUserId().equals(post.getUserId()))
				type = "submit";
		%>
		<div class="subject">
			<h1><%= post.getTitle() %></h1>
		</div>
		<div class="info">
			<div class="writer" style="display:inline-block;">
				<span class="title"><b>작성자: </b></span>
				<%= post.getUserId() %>
			</div>
			<div class="date" style="display:inline-block;">
				<span class="title"><b>작성일: </b></span>
				<%= post.getDate() %>
			</div>
		</div>
		<div class="button-group">
			<form method="post" action="editPostForm.jsp">
	    		<input name="userId" type="hidden" value="<%= detail.getUserId() %>" >	
	    		<input name="seq" type="hidden" value="<%= detail.getSeq() %>" >          	
				<input class="edit" type=<%= type %> value="수정"/>
   			</form>
		</div>	    
		<div class="post-contents" id="">
			<div><%= post.getContent() %></div>
		</div>
		<div class="home">
	        <form method="post" action="post.jsp">
	    		<input name="userId" type="hidden" value="<%= detail.getUserId() %>" >    	
	        	<input type="submit" value="홈으로">
   			</form>
	    </div>
	</div>
</body>
</html>