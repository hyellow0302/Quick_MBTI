<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*, java.sql.*"%> 
<jsp:useBean id="post" class="com.webPro03.PostDTO"/>

<jsp:setProperty name="post" property="title"/>
<jsp:setProperty name="post" property="content"/>
<jsp:setProperty name="post" property="userId"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="submit()">
	<%
		PostBean postBean = new PostBean();
		
		postBean.writePost(post);
	%>
	
	<form method="post" action="post.jsp" name="home">
        <div >
            <input name="userId" type="text" value=<%= post.getUserId() %>>
            <button id="writePostButton" type="submit"></button>
        </div>
        
     </form>
	
	<script type="text/javascript">
    function submit()
    {
        document.getElementById("writePostButton").click(); 
        document.submitForm.submit(); 
    }
</script>
</body>
</html>