<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String[] ids = {"admin", "root", "apple", "banana"};
	String result = "사용 가능한 아이디입니다.";
	for(String s: ids){ //for-each
		if(s.equals(id)){
			result = "이미 사용중인 아이디입니다. 사용불가능합니다.";
		}
	}
%>
<%= result %>