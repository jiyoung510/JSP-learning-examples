<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeQuery_ex.jsp</title>
</head>
<body>
	<h2>정적 쿼리문으로 board 테이블 데이터 추출 웹 구현</h2>
	<%
	JDBConnect jdbc = new JDBConnect(); // DB 연결
	
	String sql = "SELECT num, title, content, id, postdate, visitcount FROM board";
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()) {
		int num = rs.getInt(1);
		String title = rs.getString(2);
		String content = rs.getString("content");
		String id = rs.getString("id");
		java.sql.Date postdate = rs.getDate("postdate");
		int visitcount = rs.getInt(6);
		
		out.println(String.format("%s %s %s %s %s %s",
				num, title, content, id, postdate, visitcount) + "<br/>");
	}
	jdbc.close();
	%>
</body>
</html>