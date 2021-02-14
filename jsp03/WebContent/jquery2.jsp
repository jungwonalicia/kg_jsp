<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>

<script type="text/javascript">
$(function() { 
	//b1을 클릭했을 때
	//특정한 이벤트가 발생했을 때 함수가 자동호출되는 함수를
	//콜백함수(call-back함수)
	$('#b1').click(function() {
		//id에 입력한 값을 가지고 와서
		idValue = $('#id').val()
		
		//길이를 체크함.
		idCount = idValue.length
		if(idCount > 4){
			$('div').html('유효한 id입니다.')
		}else{
			$('div').html('id를 입력하지 않았거나, 너무 적은 글자수입니다.')
		}
	}) //b1 클릭
	
	$('#b2').click(function() {
		n1Value = $('#n1').val()
		n2Value = $('#n2').val()
		
		if(n1Value == n2Value){
			alert('동일함')
		}else{
			alert('동일하지 않음')
		}
	}) //b2 클릭
	
	$('#b3').click(function() {
		ageValue = $('#age').val()
		ageValue2 = parseInt(ageValue)
		//alert(ageValue2 + 1)
		$('div').html('<font color=red>' + (ageValue2 + 1) + '</font>')
	}) //b3 클릭
})
</script>
</head>
<body>
아이디입력 : <input id="id">
<button id="b1" style="background:lightblue">아이디 길이 체크</button>
<br>

암호입력1 : <input id = "n1"><br>
암호입력2 : <input id = "n2"><br>
<button id="b2" style="background: yellow">암호 동일 여부 체크</button>
<br>

나이입력 : <input id = "age"><div></div>
<br>
<button id="b3" style="background: red">내년 나이 체크</button>
<br>




</body>
</html>