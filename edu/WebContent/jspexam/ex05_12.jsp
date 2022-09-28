<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- page 지시자 태그에 session="false" 추가시 HttpSession 객체가 자동으로 생성되지 않아서 500 오류 발생  -->
    <!-- HttpSession 객체 사용을 필요로 하지 않는 JSP에서는 HttpSession 객체가 무조건 생성되지 않게 이 속성을 사용하는 것이 좋다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP의 page 지시자 태그 예제</title>
</head>
<body>
	<h2>JSP의 page 지시자 태그 예제(2)</h2>
	<hr>
	<h3>세션 객체의 ID : <%= session.getId() %></h3>
</body>
</html>