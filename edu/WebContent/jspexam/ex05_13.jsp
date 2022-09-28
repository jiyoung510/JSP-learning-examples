<%@ page language="java" contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
	<!-- page 지시자 태그에  isELIgnored="true"를 추가하면 EL 코드가 처리되지 않고 일반 텍스트로 브라우저에 그대로 출력된다. -->
	<!-- trimDirectiveWhitespaces="true"를  추가하면 태그에 의한 빈 행들이 제거된 후 브라우저에 출력된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP의 page 지시자 태그 예제</title>
</head>
<body>
	<h2>JSP의 page 지시자 태그 예제(3)</h2>
	<hr>
	<%-- EL식 --%>
	<h3>${ param.color }</h3>
</body>
</html>