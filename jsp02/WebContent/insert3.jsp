<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String com = request.getParameter("com");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	//���� �������� Ŭ���̾�Ʈ�� ���� �Ѿ���� ����
	//request.getParamterValues()����.
	//��ȯŸ���� String[]!
	//for������ �迭�� �ִ� �� �����־�� �Ѵ�.
	out.print(com +"<br>");	
	out.print(tel + "<br>");	
	out.print(gender + "<br>");	
	for(String s : hobby){
		out.print(s+ " ");
	}
%>



</body>
</html>




