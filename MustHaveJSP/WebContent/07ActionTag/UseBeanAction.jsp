<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>UseBeanAction.jsp</title>
</head>
<body>
	<h3>�׼� �±׷� �� �� �ѹ��� �ޱ�</h3>
	<jsp:useBean id="person" class="common.Person" />
	<jsp:setProperty property="*" name="person" />
	<ul>
		<li>�̸� : <jsp:getProperty name="person" property="name" /></li>
		<li>���� : <jsp:getProperty name="person" property="age" /></li>
	</ul>
</body>
</html>