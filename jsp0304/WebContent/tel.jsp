<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String tel = request.getParameter("tel");
	String result = tel.substring(0, 3); //0~2,010, 011, 019
	if(result.equals("010")){
		result = "1111";
	}else if(result.equals("011")){
		result = "2222";
	}else{
		result = "3333";
	}
	
	Random r = new Random();
	int no = r.nextInt(90) + 10; //0~89=> 10~99
	result = result + no;
%>인증번호는 <%= result %>