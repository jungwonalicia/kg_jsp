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
	$('#b1').click(function() {
		//url, data, 호출한 url실행결과 받아와서 처리하는 부분
		//XML-> JSON(제이슨, JavaScript Object Notation)
		//xml표기법: <money>1000</money>
		//json표기법: {money:1000}
		$.ajax({
			url: "test.jsp",
			data: {
				test : $('#data').val()
			},
			success: function(x) {
				alert('ajax성공.!!!' + x)	
				$('div').html(x)
			},
			error: function() {
				alert('ajax실패.!!!')
			} //error
		}) //ajax
	}) //b1 click
	
	$('#b2').click(function() {
		$.ajax({
			url: "check.jsp",
			data: {
				id : $('#id').val()
			},
			success: function(x) {
				alert('ajax성공.!!!' + x)	
				$('div').html(x)
			},
			error: function() {
				alert('ajax실패.!!!')
			} //error
		}) //ajax
	}) //b2 click
	
	$('#b3').click(function() {
		$.ajax({
			url: "money.jsp",
			data: {
				money : $('#money').val(),
				choice : $('#choice').val()
			},
			success: function(x) {
				alert('ajax성공.!!!' + x)	
				$('div').html(x)
			},
			error: function() {
				alert('ajax실패.!!!')
			} //error
		}) //ajax
	}) //b3 click
	
	
	$('#b4').click(function() {
		$.ajax({
			url: "tel.jsp",
			data: {
				tel : $('#tel').val(),
			},
			success: function(x) {
				alert('ajax성공.!!!' + x)	
				$('div').html(x)
			},
			error: function() {
				alert('ajax실패.!!!')
			} //error
		}) //ajax
	}) //b3 click
}) //start
</script>
</head>
<body>
<h3>비동기통신으로 서버와 통신하기</h3>
ajax통신 테스트: <input id="data"><button id="b1">ajax통신 테스트</button>
<br>
회원가입시 id중복체크: <input id="id"><button id="b2">id중복체크</button>
<br>
결제금액: <input id="money">
결제수단: <input id="choice" placeholder="1)계좌이체 2)신용카드 3)휴대폰결제">
<button id="b3">결제하기</button>
<br>
인증받을 전화번호 입력: <input id="tel" placeholder="00000000000(-제외)">
<button id="b4">인증번호 받기</button>
<br>
<hr color="green">
<div></div>
</body>
</html>