<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("scopeValue", "페이지 영역");
	request.setAttribute("scopeValue", "리퀘스트 영역");
	session.setAttribute("scopeValue", "세션 영역");
	application.setAttribute("scopeValue", "애플리케이션 영역");
	// 4가지 영역에 scopeValue라는 같은 이름으로 속성을 저장한 후
	// EL의 내장 객체를 통해 각 영역에 저장된 속성 값을 출력해본다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ImplicitObjMain.jsp</title>
</head>
<body>
	<h2>ImplicitObjMain 페이지</h2>
	<h3>각 영역에 저장된 속성 읽기</h3>
	<ul>
		<li>페이지 영역 : ${ pageScope.scopeValue }</li>
		<li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
		<li>세션 영역 : ${ sessionScope.scopeValue }</li>
		<li>애플리케이션 영역 : ${ applicationScope.scopeValue }</li>
	</ul>
	<h3>영역 지정 없이 저장된 속성 읽기</h3>
	<ul>
		<li>scopeValue : ${ scopeValue }</li>
	</ul>
	<jsp:forward page="ImplicitForwardResult.jsp" />
</body>
</html>