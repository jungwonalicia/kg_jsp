<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력한 데이터 전송된 것 받아와야 함.
	//http://localhost:8888/jsp05/create.jsp?no=1&title=spring2&content=good..&writer=apple
/* 	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer"); */
	
	//db처리해야함.
	//1. 드라이버를 설정
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. 드라이버 설정 성공<br>");
	
	//2. db연결(ip/db명, id, pw)
	String url = "jdbc:mysql://localhost:3366/shop";
	String user = "root";
	String password = "1234";
	DriverManager.getConnection(url, user, password);
	out.print("2. db연결 성공<br>");
	
	//3. SQL문을 만든다.
	//4. SQL문을 db mysql에 전송.
	//db처리한 결과를 클라이언트에게 브라우저로 보여주어야함.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>