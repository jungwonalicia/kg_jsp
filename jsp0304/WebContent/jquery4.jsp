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
		$('#d1').append('<img src=img/001.png width=150 height=150><br>')
	})
	
	$('#b2').click(function() {
		replyValue = $('#reply').val()
		$('#d1').append('- ' + replyValue + '<br>')
	})
	
	$('#b3').click(function() {
		replyValue = $('#reply').val()
		$('#d1').append('<img src=img/001.png width=150 height=150>-'+ replyValue +'<br>')
		//DOM Tree(Document Object Model Tree)
	})
})
</script>
</head>
<body>
	<button id="b1">이미지 추가</button><br>
	댓글입력: <input id="reply">
	<button id="b2">댓글 추가</button>
	<button id="b3">댓글+이미지 추가</button>
	<hr color="red">
	<div id="d1"></div>
</body>
</html>