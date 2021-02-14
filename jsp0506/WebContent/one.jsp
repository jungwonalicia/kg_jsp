<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="bean.BbsVO"></jsp:useBean>
<jsp:setProperty property="no" name="bag"/>

<%
	BbsDAO dao = new BbsDAO();
	BbsVO bag2 = dao.one(bag); //BbsVO
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
검색한 결과 들어가는 곳.
<hr color="red">
검색한 bbs no: <%= bag2.getNo() %> <br>
검색한 bbs title: <%= bag2.getTitle() %> <br>
검색한 bbs content: <%= bag2.getContent() %> <br>
검색한 bbs writer: <%= bag2.getWriter() %> <br>

</body>
</html>