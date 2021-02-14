<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 클라이언트가 입력한 데이터를 서버에서 받아주고 -->
    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String name = request.getParameter("name");
    	String tel = request.getParameter("tel");
    %>
    <!-- html로 서버에서 받은 데이터를 클라이언트로 전송 -->
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버에서 받은 id: <%= id %><br>
서버에서 받은 pw: <%= pw %><br>
서버에서 받은 name: <%= name %><br>
서버에서 받은 tel: <%= tel %><br>
</body>
</html>