<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="IncludeFile.jsp"%>
<!-- 다른 JSP 파일(IncludeFile.jsp) 포함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 지시어</title>
</head>
<body>
	<%
	out.println("오늘 날짜 : " + today);
	out.println("<br/>");
	out.println("내일 날짜 : " + tomorrow);
	
	//public int gugudan(int s, int e) {
	//	System.out.println("에러가 발생됨");
	//}
	%>
</body>
</html>