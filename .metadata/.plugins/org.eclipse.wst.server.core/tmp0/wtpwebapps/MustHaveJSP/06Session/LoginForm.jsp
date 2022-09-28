<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<jsp:include page="../Common/Link.jsp"/> 
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;">
	<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
	</span>
	<%
		if (session.getAttribute("UserId") == null) { // 로그인 상태 확인
		//로그아웃 상태
	%>
	<script>
		function validateForm(form) {
			if (!form.user_id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if (form.user_pw.value == "") {
				alert("패스워드를 입력하세요.");
				return false;
			}
		}
	</script>
	<form action="LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit="return validateFrom(this);">
		<table border="1" width="90%">
			<tr>
				<td align="center">아이디</td>
				<td  align="center"><input type="text" name="user_id" /></td>
			</tr>
			<tr>
				<td align="center">패스워드</td>
				<td align="center"><input type="password" name="user_pw" /></td>
			</tr>
			<tr>
				<td align="center" colspan="3"><input style="display:inline-block;" type="submit" value="로그인 하기" /></td>
			</tr>
		</table>
	</form>
	<%
		} else { // 로그인 된 상태
	%>
	<%=session.getAttribute("UserName")%>
	회원님, 로그인 하셨습니다.
	<br />
	<a href="Logout.jsp">[로그아웃]</a>
	<%
		}
	%>

</body>
</html>