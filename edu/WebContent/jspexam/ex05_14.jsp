<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page 지시자 태그에 errorPage 속성을 정의한 다음 브라우저로 요청하면 errorPAge.jsp의 수행 결과가 대신 응답되어 출력된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage 속성 테스트</title>
</head>
<body>
	<h2>errorPage 속성 테스트</h2>
	<%
	String name = request.getParameter("guestName");
	%>
	<h3>당신의 이름은 <%= name %>이고 이름의 길이는 <%= name.length() %>입니다.</h3>
</body>
</html>