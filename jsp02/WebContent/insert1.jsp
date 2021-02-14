<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 지시자! : 톰킷에세 이 문서로 처리하라고 알려주는 부분 -->
    <!-- java로 처리하라고 알려주는 부분 -->
    <% 
    	//처리하고 싶은 내용을 일부분 조금씩 코드로 써준다.
    	//스크립트쓰듯이 코드를 쓴다.
    	//릿(let) :작은 프로그램
    	//=>스크립트릿
    	//1. 클라이언트가 입력해서 전송한 정보를 받아와야 한다.
    	/* HttpServletRequest request = new HttpServletRequest(); */
    	String id = request.getParameter("id");//root
    	String pw = request.getParameter("pw");//1234
    	String name = request.getParameter("name");//park
    	String tel = request.getParameter("tel");//011
    	String company = request.getParameter("company");
    	String gender = request.getParameter("gender");
    	String word = request.getParameter("word");
    	String[] hobby = request.getParameterValues("hobby");
    	String result = "";
    	if(hobby != null){
    		for(String s: hobby){ //{"run", "play", "book"}
    			result = result + s + " ";
    		}
    	}
    	//2. 처리할 것이 있으면 처리한다.(db처리)
    	//3. 처리결과를 클라이언트에게 알려주어야 한다.(html로 만들어서)
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td{ /* 태그선택: 태그이름 */
		width: 150px;
		height: 50px;
	}
	.td1{ /* 클래스선택(그룹): .클래스이름 */
		background: pink;
	}
	.td2{ 
		background: lime;
	}
</style>
</head>
<body>
<h3>회원가입이 되었습니다.</h3>
<!-- 표현식(expression) -->
<table border="1">
	<tr>
		<td class="td1">아이디</td>
		<td class="td2"><%= id %></td>
	</tr>
	<tr>
		<td class="td1">패스워드</td>
		<td class="td2"><%= pw %></td>
	</tr>
	<tr>
		<td class="td1">이름</td>
		<td class="td2"><%= name %></td>
	</tr>
	<tr>
		<td class="td1">전화번호</td>
		<td class="td2"><%= company %>-<%= tel %></td>
	</tr>
	<tr>
		<td class="td1">성별</td>
		<td class="td2"><%= gender %></td>
	</tr>
	<tr>
		<td class="td1">하고 싶은 말</td>
		<td class="td2"><%= word %></td>
	</tr>
	<tr>
		<td class="td1">취미</td>
		<td class="td2"><%= result %></td>
	</tr>
</table>
</body>
</html>




