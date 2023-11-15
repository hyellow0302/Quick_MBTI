<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.webPro03.UserBean"/>
<jsp:setProperty name="login" property="userId"/>
<jsp:setProperty name="login" property="password"/>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale-1">

<title>심리테스트</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/defalt.css">
<link rel="stylesheet" href="./css/qna.css">
<link rel="stylesheet" href="./css/result.css">

<style>
#stratTest{
   width:100px;
   height:40px;
   border:3px solid white;
   border-radius:5px;
   color:white;
}

.btn-gradient.purple { 
  background: rgba(203,153,197,1);
  background: -moz-linear-gradient(top, rgba(203,153,197,1) 0%, rgba(181,134,176,1) 100%);
  background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(203,153,197,1)), color-stop(100%, rgba(181,134,176,1)));
  background: -webkit-linear-gradient(top, rgba(203,153,197,1) 0%, rgba(181,134,176,1) 100%);
  background: -o-linear-gradient(top, rgba(203,153,197,1) 0%, rgba(181,134,176,1) 100%);
  background: -ms-linear-gradient(top, rgba(203,153,197,1) 0%, rgba(181,134,176,1) 100%);
  background: linear-gradient(to bottom, rgba(203,153,197,1) 0%, rgba(181,134,176,1) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cb99c5', endColorstr='#b586b0', GradientType=0 );
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div align=center class="container">
   <section id="main" class="section">
         <h1>심리테스트로 알아보는 나의 MBTI</h1>
         <div>
            <img src="title.png" width=60% alt="title">
         </div>
         <p>
         빠르게 내 MBTI를 알아봅시다!<br>
         아래 시작하기 버튼을 누르시면
         테스트가 진행됩니다 ♥
         </p>
         <button id="stratTest" type="button" class="btn-gradient purple small" onclick="js:begin()">START</button>
   </section>
   <section id="qna">
   <div class="statusnumber" align="center">1/12</div>
   <div class="status">
   		<div class="statusBar" style=float:left;border-radius:15px; border display=flex justify-content=space-between;>
   		
   		</div>
   	</div>
   	<div class="qBox">
   	
   	</div>
   	<div class="answerBox">
   	
   	</div>
   </section>
   <section id="result">
   <form name="getresult" action="result.jsp" method="POST">
   	<h1>내 결과 보러가기!</h1>
   	<input id="userId" name="userId" hidden value="<%= login.getUserId() %>" type="text">
   	<input id="mbti" name="mbti" hidden type="text" >
   	<input class="next" type="submit" value="이동">
   </form>
   </section>
   <script src="./js/data.js" charset="utf-8"></script>
   <script src="./js/start.js" charset="utf-8"></script>
	
</div>

<script>

</script>
</body>
</html>