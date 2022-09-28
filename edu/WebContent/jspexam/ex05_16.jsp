<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSp의 내장 객체들</title>
</head>
<body>
	<h2>JSP의 내장 객체들 점검</h2>
	[ request ]<br>
	getMethod() : <%= request.getMethod() %><br>
	getRequestURI() : <%= request.getRequestURI() %><br>
	getHeader("user-agent") : <%= request.getHeader("user-agent") %><br>
	[ application ]<br>
	application.getContextPath() : <%= application.getContextPath() %><br>
	application.getServletContextName() : <%=application.getServletContextName() %><br>
	application.getServerInfo() : <%=application.getServerInfo() %><br>
	application.getMajorVersion() : <%= application.getMajorVersion() %><br>
	application.getSessionTimeout() : <%= application.getSessionTimeout() %><br>
	[ session ]<br>
	getId() : <%= session.getId() %><br>
	getCreationTime() : <%= new Date(session.getCreationTime()) %><br>
	[response]<br>
	getStatus() : <%= response.getStatus() %><br>
	getBufferSize() : <%= response.getBufferSize() %><br>
	getContentType() : <%= response.getContentType() %><br>
	<h4>Web Application(/edu) 폴더의 파일 리스트</h4>
	<%
	java.util.Set<String> list =application.getResourcePaths("/"); 
	if(list!=null){
		Object obj[] = list.toArray();
		for(int i=0;i<obj.length;i++) {
			out.print(obj[i]+", ");
		}
	}
	%>
</body>
</html>