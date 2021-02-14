<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력한 데이터 전송된 것 받아와야 함.
	//http://localhost:8888/jsp05/create.jsp?no=1&title=spring2&content=good..&writer=apple
/* 	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");  */
	
	
	//jsp에서는 import가 ctrl + shift + m
/* 	BbsVO bag = new BbsVO(); //가방을 만들어서
	bag.setNo(no); //해당 값들을 가방에 하나씩 넣어줌
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer); */
	
	//가방을 만들어서
	//입력받은 값을 받아서, 가방에 set메서드 호출해서 집어넣어라.!
%>
<!-- 액션태그 -->
	<jsp:useBean id="bag" class="bean.BbsVO"></jsp:useBean> <!-- BbsVO bag = new BbsVO();  -->
	<jsp:setProperty property="*" name="bag"/>
<%	
	//db처리하는 클래스를 써서, 전달받은 데이터를 넘긴다.
	BbsDAO dao = new BbsDAO();
	int result = dao.create(bag); //0,1
	String data = "게시판에 글쓰기 실패!!";
	if(result == 1){
		data = "게시판에 글쓰기 성공@@@@";
	}
	//dao.create(no, title, content, writer);
	
	//db처리한 결과를 클라이언트에게 브라우저로 보여주어야함.
%>   <!-- 스크립트릿  --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력한 게시물 데이터를 db에 전송완료했습니다.<br>
결과는 <%= data %> <!-- 표현식, Expression -->
</body>
</html>