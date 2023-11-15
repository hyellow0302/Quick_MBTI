<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.webPro03.UserBean"/>
<jsp:setProperty name="login" property="userId"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sim Kong [유형보기]</title>
	<link href="type.css" rel="stylesheet"/>
</head>
<body class="background">
<jsp:include page="header.jsp"></jsp:include>
<div class="contents">
	<h1 class="title">유형 보기</h1>
	<h2 class="title2">내 유형 보기</h2>
	<div class="user-mbti"><% out.print(login.getUserId()+" "); %>님의 유형은 
	<% 
		if(login.userMBTI(login.getUserId()) == null) out.print(" ? ");
		else out.print(login.userMBTI(login.getUserId())+" ");
	%>입니다.</div>
	<h2 class="title2">모든 유형 보기</h2>
	<div style="text-align:center;  margin-bottom:50px;"> 
	<table class="mbti-table">
	    <tbody style="text-align:center;">
	    <tr>
	        <td colspan="6">
	            <div>🤍 원하는 유형을 클릭해보세요! 🤍</div>
	        </td>
	    </tr>
	    <tr>
	        <td colspan="2" rowspan="2">
	            <div>구분</div>
	        </td>
	        <td colspan="2">
	            <div>T</div>
	        </td>
	        <td colspan="2">
	            <div>F</div>
	        </td>
	    </tr>
	    <tr>
	        <td>
	            <div>J</div>
	        </td>
	        <td>
	            <div>P</div>
	        </td>
	        <td>
	            <div>J</div>
	        </td>
	        <td>
	            <div>P</div>
	        </td>
	    </tr>
	    <tr>
	        <td rowspan="2">
	            <div>I</div>
	        </td>
	        <td>
	            <div>S</div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ISTJ" target='_blank' title="ISTJ">ISTJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ISTP" target='_blank' title="ISTP">ISTP</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ISFJ" target='_blank' title="ISFJ">ISFJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ISFP" target='_blank' title="ISFP">ISFP</a></div>
	        </td>
	    </tr>
	    <tr>
	        <td>
	            <div>N</div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/INTJ" target='_blank' title="INTJ">INTJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/INTP" target='_blank' title="INTP">INTP</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/INFJ" target='_blank' title="INFJ">INFJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/INFP" target='_blank' title="INFP">INFP</a></div>
	        </td>
	    </tr>
	    <tr>
	        <td rowspan="2">
	            <div>E</div>
	        </td>
	        <td>
	            <div>S</div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ESTJ" target='_blank' title="ESTJ">ESTJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ESTP" target='_blank' title="ESTP">ESTP</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ESFJ" target='_blank' title="ESFJ">ESFJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ESFP" target='_blank' title="ESFP">ESFP</a></div>
	        </td>
	    </tr>
	    <tr>
	        <td>
	            <div>N</div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ENTJ" target='_blank' title="ENTJ">ENTJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ENTP" target='_blank' title="ENTP">ENTP</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ENFJ" target='_blank' title="ENFJ">ENFJ</a></div>
	        </td>
	        <td>
	            <div><a href="https://namu.wiki/w/ENFP" target='_blank' title="ENFP">ENFP</a></div>
	        </td>
	    </tr>
	    </tbody>
	</table>
	</div>
	</div>
</body>
</html>