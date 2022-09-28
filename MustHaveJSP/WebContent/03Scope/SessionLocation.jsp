<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<%
		ArrayList<String> lists = (ArrayList<String>) session.getAttribute("lists");
	//세션을 통해서 ArrayList 객체의 lists값이 넘어온다.
	for (String str : lists) {
		out.print(str + "<br/>");
	}
	%>
</body>
</html>