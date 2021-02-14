<%@page import="bean.BbsDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력한 데이터 전송된 것 받아와야 함.
	//http://localhost:8888/jsp05/create.jsp?no=1&title=spring2&content=good..&writer=apple
	String no = request.getParameter("no");
	
	//db처리하는 클래스를 써서, 전달받은 데이터를 넘긴다.
	BbsDAO dao = new BbsDAO();
	dao.delete(no);
	
	//db처리한 결과를 클라이언트에게 브라우저로 보여주어야함.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
입력한 게시물 데이터를 db에 삭제 요청 전송완료했습니다.
</body>
</html>