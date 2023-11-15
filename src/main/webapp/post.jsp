<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*, java.sql.*"%>
    
<jsp:useBean id="user" class="com.webPro03.UserBean"/>
<jsp:setProperty name="user" property="userId"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<link href="post.css" rel="stylesheet">
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contents">
		<h1>게시판</h1>
		<div class="list">
			<table class="post-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<% 
					PostBean postbean = new PostBean();
					ArrayList<PostDTO> list = postbean.getAllPost();
					
					for(int i = 0; i < list.size() ; i++){
					%>
					<tr class="post-contents">
						<td class ="post-number">
							<%= i+1 %>
						</td>
						<td class="post-title">
							<form method="post" action="postDetail.jsp">
	    						<input name="seq" type="hidden" value="<%= i+1 %>" >
	    						<input name="userId" type="hidden" value="<%= user.getUserId() %>" >
		    					<input class="write" type="submit" value="<%= list.get(i).getTitle() %>"
		    					style="padding: 0px 10px; color:rgb(16, 82, 162);">
   							</form>
						</td>
						<td class="post-user"><%= list.get(i).getUserId() %></td>
						<td class="post-date"><%= list.get(i).getDate() %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
	<form class="add" method="post" action="writePostForm.jsp">
	    <input name="userId" type="hidden" value="<%= user.getUserId() %>">
	    <input type="submit" value="글 작성">
    </form>
	    
	</div>
</body>
</html>