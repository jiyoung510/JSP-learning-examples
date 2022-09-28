<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginId = CookieManager.readCookie(request, "loginId");
String loginPw = CookieManager.readCookie(request, "loginPw");

String cookieCheck = ""; 
if(!loginId.equals("")) { 
	cookieCheck = "checked";
}
String cookieCheck_pw ="";
if(!loginPw.equals("")) {
	cookieCheck_pw = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - 아이디 저장하기</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="IdPwSaveProcess.jsp" method="post">
	아이디 : <input type="text" name="user_id" value="<%= loginId %>" />
	<input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> />
	아이디 저장하기
	<br />
	패스워드 : <input type="text" name="user_pw" value="<%= loginPw %>"/>
	<input type="checkbox" name="save_check_pw" value="Y" <%= cookieCheck_pw %> />
	패스워드 저장하기
	<br />
	<input type="submit" value="로그인하기" />
	</form>
</body>
</html>