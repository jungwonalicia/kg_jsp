<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. 클라이언트가 입력해서 서버로 넘어온  id/pw를 받아줘야 한다. -->
<%
/* 자바 코드 들어가는 부분  */
/* HttpServletRequest request = new HttpServletRequest(); */
String id = request.getParameter("id"); //root
String pw = request.getParameter("pw"); //1234
%>

<!-- 2. 로그인 제대로 되었는지 제어문으로 처리 -->
<%
	String result = "로그인 실패";
	//논리연산자: &&(and), ||(or), !(not)
	//비교연산자: ==, != 
	//비교연산자는 기본데이터만 사용 가능
	//기본데이터(정수,실수,문자1,논리)
	if(id.equals("root")  &&  pw.equals("1234")){
		result= "로그인 성공!!";
	}
%>

<!-- 3. 처리결과를 html로 만들어서 다시 클라이언트에게 전송한다. -->
<!-- 로그인 처리 실행결과를 클라이언트에게  html로 알려주어야 하므로
	미리 자동완성된 상태
 -->    
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버에서 받은 id: <%= id %> <br>
서버에서 받은 pw: <%= pw %> <br>
<hr color="blue">
로그인 처리 결과: <%= result %>
</body>
</html>