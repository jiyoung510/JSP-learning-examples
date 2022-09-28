<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ParamForward.jsp</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	<h2>포워드 된 페이지에서 매개변수 확인</h2>
	<ul>
		<li>이름 : <jsp:getProperty name="person" property="name" /></li>
		<li>나이 : <jsp:getProperty name="person" property="age" /></li>
		<li>본명 : <%= request.getParameter("param1") %></li>
		<li>출생 : <%= request.getParameter("param2") %></li>
		<li>특징 : <%= request.getParameter("param3") %></li>
	</ul>
	<jsp:include page="ParamInclude.jsp">
		<jsp:param value="강원도 영월" name="loc1"/>
		<jsp:param value="김삿갓면" name="loc2"/>
	</jsp:include>
</body>
</html>