const main = document.querySelector("#main");
const qna = document.querySelector("#qna");
const result = document.querySelector("#result");
const endPoint = 12;//12개의 질문이니까 
const select=[];//선택한 대답 담을 배열 선언
const mbti=[];

const typeName = ['E', 'I', 'N', 'S', 'F', 'T', 'P', 'J'];
const pointObject = {};

typeName.forEach((type, idx) => {
    pointObject[type] = {
        value: 0,
        key: idx
    };
});

function setResult(){
	let point = calResult();
	var r = document.querySelector('.resultname');
	for(let i=0;i<infoList.length;i++){
		if(infoList[i].name==point){
			r.innerHTML = infoList[i].name;
		}
		console.log(point);
	}
}

function calResult() {
    select.forEach((ans, idx) => {
        const { type } = qnaList[idx].a[ans];
        pointObject[type].value ++;
    });
    
    typeName.forEach(type => {
        if(pointObject[type].value >= 2) mbti.push(type);
    });
    //console.log(mbti);
    //변수하나 선언해놓고 이용해서 mbti배열요소 문자 합치기 
    let result=mbti[0]
    for(let i=1;i<mbti.length;i++){
		result+=mbti[i];
	}
	console.log(result);
	
	document.getElementById("mbti").value = result;
	localStorage.setItem('result', result.replace(",",""));
	console.log("mbti:"+mbti);
	return result;
};

function goResult(){
	qna.style.display = "none";
    result.style.display = "block"; 
    calResult();
}

function addAnswer(answerText, qIndex, idx){
	var a = document.querySelector('.answerBox');
	var answer = document.createElement('button');
	answer.classList.add('answerList');
	a.appendChild(answer);
	answer.innerHTML = answerText;
	
	answer.addEventListener("click", function(){//사용자가 하나의 버튼을 눌렀을 때
		var children = document.querySelectorAll('.answerList');//모든 버튼
		for(let i=0;i<children.length;i++){
			children[i].disabled = true;//모든 버튼 비활성화
		}
		setTimeout(()=>{
			select[qIndex]=idx;//선택한 답 배열에 넣어주기
			for(let i=0;i<children.length;i++){
			children[i].style.display = 'none';//모든 버튼 화면에서 사라지기
		}
		goNext(++qIndex);//다음 질문 보이기
		},300)
	}, false);
}

function goNext(qIndex){
	if(qIndex==endPoint){
		goResult();//질문 선택이 끝나면 결과 출력 함수 호출
		return;//gonext함수가 끝나지않는 에러 해결 위해
		
	}
	let n = 1;
	var q=document.querySelector('.qBox');
	var statusIndex = document.querySelector('.statusnumber');
	statusIndex.innerHTML = qIndex+'/12';
	q.innerHTML = qnaList[qIndex].q;
	for(let i in qnaList[qIndex].a){
		addAnswer(qnaList[qIndex].a[i].answer,qIndex,i);
	}
	var status = document.querySelector('.statusBar');
	status.style.width=(100/endPoint)*(qIndex+1)+'%';
	}

function begin(){
	main.style.display = "none";
    qna.style.display = "block";
	
	let qIndex = 0;
	goNext(qIndex);
}

