<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 페이지</title>

    <link href="signUpForm.css" rel="stylesheet" />

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
    <div class="wrapper">
    <form method="post" action="signUp.jsp" name="home">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
        <div class="userId">
            <input id="userId" name="userId" type="text" placeholder="아이디를 입력해 주세요.">
            <div id="userIdError" class="error"></div>
        </div>
        <div class="password">
            <input id="password" name="password" type="password" placeholder="비밀번호를 입력해 주세요.">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="passwordCheck">
            <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요.">
            <div id="passwordCheckError" class="error"></div>
        </div>
        <div class="phone">
        	<input id="phone" name="phone" type="text" placeholder="전화번호를 입력해 주세요.">
            <div id="phoneError" class="error"></div>
        </div>
        <div class="gender">
            <input id="gender_man" name="gender" type="radio" value=0>남성  
            <input id="gender_woman" name="gender" type="radio" value=1>여성
            <div id="genderError" class="error"></div>
        </div>
        <div class="signUp">
            <button id="signUpButton" disabled type="submit">가입하기</button>
        </div>
        
     </form>
        <div class="signUp">
            <button id="confirmButton" onclick="signUpCheck()">확인하기</button>
        </div>
    </div>


</body>
<script type="text/javascript">


	function signUpCheck(){
		let userId = document.getElementById("userId").value
		let password = document.getElementById("password").value
		let passwordCheck = document.getElementById("passwordCheck").value
		let phone = document.getElementById("phone").value
		let gender_man = document.getElementById("gender_man").checked
		let gender_woman = document.getElementById("gender_woman").checked
		
		let userIdError = document.getElementById("userIdError")
		let passwordError = document.getElementById("passwordError")
		let passwordCheckError = document.getElementById("passwordCheckError")
		let phoneError = document.getElementById("phoneError")
		let genderError = document.getElementById("genderError")
		
		let confirmButton = document.getElementById("confirmButton")
		let signUpButton = document.getElementById("signUpButton")
		
	  
		// ID확인
	  if(userId===""){
		  userIdError.innerHTML="이름이 올바르지 않습니다."
	  }else{
		  userIdError.innerHTML=""
	  }


	  // 비밀번호 확인
	  if(password !== passwordCheck && password !=="" && passwordCheck !== ""){
		passwordError.innerHTML="비밀번호가 동일하지 않습니다."
		passwordCheckError.innerHTML="비밀번호가 동일하지 않습니다."
	  }
	  
	  if(password === passwordCheck && password !== "" && passwordCheck !== ""){
		  passwordError.innerHTML=""
	  }

	  if(password==="" && passwordCheck === ""){
		passwordError.innerHTML="비밀번호를 입력해주세요."
		passwordCheckError.innerHTML=""
	  }
	  
	  if(password==="" && passwordCheck !== ""){
		  passwordError.innerHTML="비밀번호를 입력해주세요."
		    document.getElementById("passwordCheck").value=""
		    passwordCheckError.innerHTML=""
		}
	  
	  if(password!=="" && passwordCheck===""){
		  passwordError.innerHTML=""
			  passwordCheckError.innerHTML="비밀번호를 다시 입력해주세요."
	  }else{
		  passwordCheckError.innerHTML=""
	  }
	  
	  
	  
	  if(phone===""){
		 phoneError.innerHTML="전화번호를 입력해주세요."
	  }else{
		  phoneError.innerHTML=""
	  }

	  if(!gender_man && !gender_woman){
	   genderError.innerHTML="성별을 선택해주세요."
	  }else{
	    genderError.innerHTML=""
	  }
	  
	  
	  if(userIdError.innerHTML==="" && passwordError.innerHTML==="" && 
			  passwordCheckError.innerHTML==="" && phoneError.innerHTML==="" && 
			  genderError.innerHTML===""){
		  
		 signUpButton.disabled = false;
	  }
	  else{
		 signUpButton.disabled = true;
	  }
	}
</script>

</html>