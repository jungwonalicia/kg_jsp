<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String test = request.getParameter("test");
    %>
내가 호출된 페이지입니다.!!!!<br>
서버에서 받은 값은 <%= test %>