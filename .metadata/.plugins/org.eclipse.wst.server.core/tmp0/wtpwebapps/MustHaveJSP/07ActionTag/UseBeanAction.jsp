<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>UseBeanAction.jsp</title>
</head>
<body>
	<h3>액션 태그로 폼 값 한번에 받기</h3>
	<jsp:useBean id="person" class="common.Person" />
	<jsp:setProperty property="*" name="person" />
	<ul>
		<li>이름 : <jsp:getProperty name="person" property="name" /></li>
		<li>나이 : <jsp:getProperty name="person" property="age" /></li>
	</ul>
</body>
</html>