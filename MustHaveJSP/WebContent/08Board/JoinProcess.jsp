<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 폼값 받기
String newId = request.getParameter("new_id");
String newName = request.getParameter("new_name");
String newPw = request.getParameter("new_pw");
// 폼값을 DTO 객체에 저장
MemberDTO dto = new MemberDTO();
dto.setId(newId);
dto.setName(newName);
dto.setPass(newPw);

//DAO 객체를 통해 DB에 DTO 저장
//MemberDAO dao = 
//int iResult = dao.insertWrite(dto);
//dao.close();

//성공 유무 확인
//if(iResult == 1){ //글쓰기가 성공하면 1값이 반환됨
//	response.sendRedirect("List.jsp"); //게시판 목록으로 돌아감
//}else{
//	JSFunction.alertBack("글쓰기 실패하였습니다.", out);
//}
%>
