<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.webPro03.UserBean" />
<jsp:setProperty name="login" property="userId" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>궁합보기</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap"
	rel="stylesheet">
<link href="compatibility.css" rel="stylesheet">
</head>
<body class="background">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="contents">
		<h1 class="title">궁합 확인하기</h1>
		<h2>내 유형을 선택해주세요!</h2>
		<select class="mbti-select form-select"
			onchange="onChange('from', this)" aria-label="Default select example">
			<option disabled selected value>내 유형 선택하기</option>
		</select>
		<h2 style="margin-top:50px;">비교할 상대의 유형을 선택해주세요!</h2>
		<select class="mbti-select form-select"
			onchange="onChange('to', this)" aria-label="Default select example">
			<option disabled selected value>비교할 유형 선택하기</option>
		</select>
		<div>
			<button type="button" class="result-button"
				onclick="onClick(this)">확인</button>
			<div id="result">
				<div id="resultGuide"></div>
				<div id="resultDescription"></div>
				<img src="" id="resultImg" alt="mbti image" />
			</div>
		</div>
	</div>
	<script src="./compatibilityData.js"></script>
	<script>
      const selectValue = { from: null, to: null };
      let resultBox = null,
        resultGuide = null,
        resultDescription = null,
        resultImg = null;
      const initialize = () => {
        const selectBox = document.querySelectorAll('.mbti-select');
        selectBox.forEach((dom) => {
          mbti.forEach((item, idx) => {
            const option = document.createElement('option');
            option.innerText = item;
            option.value = idx;
            dom.appendChild(option);
          });
        });
        resultBox = document.getElementById('result');
        resultGuide = document.getElementById('resultGuide');
        resultDescription = document.getElementById('resultDescription');
        resultImg = document.getElementById('resultImg');
      };
      const onChange = (i, ev) => (selectValue[i] = ev.value);
      const onClick = (ev) => {
        const { to, from } = selectValue;
        if (!(to && from)) return;
        const { text, description, img } = resultResource[result[to][from] - 1];
        resultBox.style.display = 'block'; // 결과 블록 보이게 설정
        resultGuide.innerText = text;
        resultDescription.innerText = description;
        resultImg.src = img;
      };
      window.onload = () => initialize();
    </script>
</body>
</html>