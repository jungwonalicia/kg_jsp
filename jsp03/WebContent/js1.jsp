<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 브라우저의 주소넣는 부분에 해당 주소를 넣고, 엔터를 쳐줌.  
 * 해당 주소에 요청함.
 * 내장된 객체를 가지고 있음.
 */
//location.href = "http://www.naver.com"
console.log('나는 에러정보를 보통 확인하는 용도.')
//history.go(-1)
document.write('나는 body부분에 넣는 내장된 객체예요.')
alert('나는 확인용 창이예요!') //window객체(브라우저 전체를 나타냄)가 기본값

//변수의 타입은 모두 var, 생략 가능
name = prompt('당신의 이름은 ') //입력용
food = confirm('아침을 먹었나요?') //확인용
alert(name + '님 아침을 먹었나요? ' + food)
if(food){
	alert('배가 부르겠군요.')
}else{
	alert('배고프시겠군요.')
}


</script>
</head>
<body>

</body>
</html>