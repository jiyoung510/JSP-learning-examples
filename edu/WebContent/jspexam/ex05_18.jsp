<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 예제</title>
<style>
input {margin:3px;}
</style>
</head>
<body>
	<%
	if(request.getMethod().equals("POST")) {
		if(session.isNew() || session.getAttribute("member_id")==null) {
			String name = request.getParameter("membername");
			String passwd = request.getParameter("memberpassword");
			if(name.equals("duke") && passwd.equals("java")) {
				session.setAttribute("member_id", name);
				session.setAttribute("member_passwd", passwd);
				// 로그인에 성공하면 HttpSession 객체에 계정과 패스워드를 각각 보관
				session.setMaxInactiveInterval(60);
				// 현재 HttpSession객체의 InactiveInterval 시간을 60초로 설정
	%>
				<script>
				alert("성공적으로 로그인했습니다!!");
				</script>
				<h3><%= name %>회원님.. 좋은 하루 되세요...</h3>
				<a href="/edu/jspexam/ex05_19.jsp">로그아웃</a>
			<% } else {
			%>
				<script>
				alert("로그인에 실패했습니다!!");
				</script>
				<h2>로그인</h2><hr>
				<form method="post">
					<input placeholder="계정을 입력하세요" name="membername" required><br>
					<input type="password" placeholder="암호를 입력하세요" name="memberpasswd" required><br>
					<input type="submit" value="로그인">
				</form>
				<%
			}
		}
	} else if(request.getMethod().equals("GET")) {
		String name = (String)session.getAttribute("member_id");
		if(name != null) {
				%>
				<h3>회원님 좋은 하루 되세요...</h3>
				<a href="/edu/jspexam/ex05_19.jsp">러그아웃</a>
				<%} else { %>
		<script>
		alert("로그인 해주세요!");
		</script>
		<h2>로그인</h2><hr>
		<form method="post" action="/edu/jspexam/ex05_18.jsp">
			<input placeholder="계정을 입력하세요" name="membername" required><br>
			<input type="password" placeholder="암호를 입력하세요" name="memberpassword" required><br>
			<input type="submit" value="로그인">
		</form>
		<% }
		}
		%>	
</body>
</html>