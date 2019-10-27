<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String com = request.getParameter("com");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	//값이 여러개가 클라이언트로 부터 넘어오는 경우는
	//request.getParamterValues()쓴다.
	//반환타입은 String[]!
	//for문으로 배열에 있는 것 꺼내주어야 한다.
	out.print(com +"<br>");	
	out.print(tel + "<br>");	
	out.print(gender + "<br>");	
	for(String s : hobby){
		out.print(s+ " ");
	}
%>



</body>
</html>




