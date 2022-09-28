<%@page import="common.Person"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>ForEachExtend2.jsp</title></head><body>
	<h4>List 컬렉션 사용하기</h4>
	<%
	LinkedList<Person> lists = new LinkedList<Person>();
	lists.add(new Person("김재준", 34));
	lists.add(new Person("홍지영", 35));
	lists.add(new Person("허유림", 36));
	%>
	<c:set var="lists" value="<%= lists %>" />
	<c:forEach items="${ lists }" var="list">
	<ul>
		<li>이름 : ${ list.name }, 나이 : ${ list.age }</li>
	</ul>
	</c:forEach>
	
	<h4>Map 컬렉션 사용하기</h4>
	<%
	Map<String, Person> maps = new HashMap<String, Person>();
	maps.put("1st", new Person("자바프로그래밍", 34));
	maps.put("2nd", new Person("mit", 24));
	maps.put("3rd", new Person("JSP", 14));
	%>
	<c:set var="maps" value="<%= maps %>" />
	<c:forEach items="${ maps }" var="map">
	<ul>
		<li>
			key : ${ map.key }<br />
		 	value 이름 : ${ map.value.name }, 나이 : ${ map.value.age }
	 	</li>
	</ul>
	</c:forEach>
</body>
</html>