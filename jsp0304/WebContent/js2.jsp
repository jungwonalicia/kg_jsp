<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 특정한 기능을 처리하고자 하는 경우, 함수를 정의해놓는다. */
function add() { //더하는 기능
	alert('더하기 기능 처리')
}
function minus() { //마이너스 기능
	alert('마이너스 기능 처리')
}
</script>
</head>
<body>
<button onclick="add()">더하기 기능 처리</button>
<button onclick="minus()">마이너스 기능 처리</button>
</body>
</html>