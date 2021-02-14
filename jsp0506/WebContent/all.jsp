<%@page import="bean.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
	//import: 컨트롤+쉬프트+m
	ArrayList<BbsVO> list = dao.all();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for (BbsVO bag : list) {
	%>
		<hr color="red">
		검색한 bbs no: <%= bag.getNo() %> <br>
		검색한 bbs title: <a href="http://localhost:8888/jsp0506/one.jsp?no=<%= bag.getNo() %>"><%= bag.getTitle() %></a> <br>
		검색한 bbs writer: <%= bag.getWriter() %> <br>
	<%
	}
	%>
</body>
</html>








