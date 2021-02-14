<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력한 데이터 전송된 것 받아와야 함.
	//http://localhost:8888/jsp05/create.jsp?no=1&title=spring2&content=good..&writer=apple
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel"); 
	
	//db처리해야함.
	//1. 드라이버를 설정
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. 드라이버 설정 성공<br>");
	
	//2. db연결(ip/db명, id, pw)
	String url = "jdbc:mysql://localhost:3366/shop";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);//Connection
	out.print("2. db연결 성공<br>");
	
	//3. SQL문을 만든다.(Create기능 구현)
	String sql = "insert into member values (?, ?, ?, ?)"; //인덱스는 1부터 시작!!
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pw);
	ps.setString(3, name);
	ps.setString(4, tel);
	
	out.print("3. SQL문을 만든다. 성공<br>");
	
	//4. SQL문을 db mysql에 전송.
	ps.executeUpdate();
	out.print("4. SQL문을 db mysql에 전송. 성공<br>");
	
	//db처리한 결과를 클라이언트에게 브라우저로 보여주어야함.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력한 게시물 데이터를 db에 전송완료했습니다.
</body>
</html>