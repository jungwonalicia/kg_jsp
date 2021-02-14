<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//1. 쿠키객체를 만들어라.
    	Cookie c1 = new Cookie("name", "hong");
    	Cookie c2 = new Cookie("age", "100");
    	
    	//2. 쿠키를 브라우저에 심어라.
    	
    	c1.setMaxAge(0);
    	
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키를 심었음.
</body>
</html>