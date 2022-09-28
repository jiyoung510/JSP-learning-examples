<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeQuery.jsp</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 활용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect(); // DB에 연결
	
	String sql = "SELECT id, pass, name, regidate FROM member"; 
	Statement stmt = jdbc.con.createStatement(); // 쿼리문 생성
	
	ResultSet rs = stmt.executeQuery(sql); // 쿼리문 수행
	
	while(rs.next()) { // ResultSet은 결과의 집합이기 때문에 next()로 가져옴
		String id = rs.getString(1);
		String pass = rs.getString(2);
		String name = rs.getString("name");
		java.sql.Date regidate = rs.getDate("regidate");
		
		out.println(String.format("%s %s %s %s", id, pass, name, regidate) + "<br/>");
	} // ResultSet에 있는 데이터를 한줄씩 가져와 출력하고 줄바꿈
	
	jdbc.close(); // DB 연결 해제
	%>
</body>
</html>