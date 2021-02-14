<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>

<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url: "https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Frss.hankyung.com%2Fnew%2Fnews_enter.xml&api_key=rooa9cfdnkctmsnpiftxnozlzfyaunxvudzwajoq",
			data :{
				url: "http://rss.hankyung.com/new/news_enter.xml",
				api_key: "rooa9cfdnkctmsnpiftxnozlzfyaunxvudzwajoq",
				count: 20
			},					
			success: function(json) {
				list = json.items //items(key) : [](value)
				alert('기사개수: ' + list.length + '개')
				$(list).each(function(index, news) {
					console.log(index + ': ' + news.title)
					console.log('link : ' + news.link)
					console.log('pubDate : ' + news.pubDate)
					title = news.title
					link = news.link
					a = '- <a href=' + link + '>' + title + '</a><br>'
					$('div').append(a)
				})
 			}
		})
	})
})
</script>
</head>
<body>
<button id="b1">한경 연예기사 가지고 오기</button>
<hr color="red">
<div></div>
</body>
</html>