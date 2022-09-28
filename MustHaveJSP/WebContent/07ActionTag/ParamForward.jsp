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
	<h2>������ �� ���������� �Ű����� Ȯ��</h2>
	<ul>
		<li>�̸� : <jsp:getProperty name="person" property="name" /></li>
		<li>���� : <jsp:getProperty name="person" property="age" /></li>
		<li>���� : <%= request.getParameter("param1") %></li>
		<li>��� : <%= request.getParameter("param2") %></li>
		<li>Ư¡ : <%= request.getParameter("param3") %></li>
	</ul>
	<jsp:include page="ParamInclude.jsp">
		<jsp:param value="������ ����" name="loc1"/>
		<jsp:param value="��񰫸�" name="loc2"/>
	</jsp:include>
</body>
</html>