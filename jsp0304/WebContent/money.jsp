<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	int money2 = Integer.parseInt(money);
	double result = 0;
	if(choice.equals("1")){
		result = money2 * 0.7;
	}else if(choice.equals("2")){
		result = money2 * 0.8;
	}else{
		result = money2;
	}
%>
당신의 결제 금액은 <%= (int)result %>원입니다.