<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String reply = request.getParameter("reply");
	String writer = request.getParameter("writer");
	out.print(writer + " ->  " + reply + "<br>");
%>