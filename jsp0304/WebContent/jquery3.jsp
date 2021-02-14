<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() { //body아래를 먼저 브라우저가 읽고 와서 실행하세요!
		$('#pw2').keyup(function() { //콜백함수, 무명함수
			pw1Value = $('#pw1').val()
			pw2Value = $('#pw2').val()
			if (pw1Value == pw2Value) {
				$('div').append('<font color=red>일치!!</font><br>')
			} else {
				$('div').append('<font color=blue>불일치!!</font><br>')
			}
		})
	})
</script>
</head>
<body>
패스워드1 <input id="pw1"><br>
패스워드2 <input id="pw2"><br>
<hr color="red">
<div></div>
</body>
</html>