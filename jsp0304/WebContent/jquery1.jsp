<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>

<script type="text/javascript">
$(function() { //document.ready():body태그 부분을 브라우저가 먼저 다 읽었을 때
	alert('body부분을 브라우저가 먼저 다 읽음.')
	$('#b1').click(function() {
		name = $('#data').val()
		alert('당신이 입력한 사이트명은 ' + name)
	})
})
</script>
</head>
<body>
	사이트명 입력:
	<input type="text" id="data">
	<button id="b1">사이트로 이동</button>
</body>
</html>