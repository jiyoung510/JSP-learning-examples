<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // 폼에 전달된 값을 저장
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");
String save_check_pw = request.getParameter("save_check_pw");

if("must".equals(user_id) && "1234".equals(user_pw)) {
	// 폼에 있는 값을 비교하여 로그인 성공
	if(save_check != null && save_check_pw != null && save_check.equals("Y") && save_check_pw.equals("Y")) {
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
		CookieManager.makeCookie(response, "loginPw", user_pw, 86400);
		// 쿠키를 생성하여 값을 대입
	} else if(save_check != null && save_check.equals("Y") && save_check_pw == null) {
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
	} else { // 체크가 없으면 쿠키를 삭제
		CookieManager.deleteCookie(response, "loginId");
		CookieManager.deleteCookie(response, "loginPw");
	}
	JSFunction.alertLocation("로그인에 성공했습니다.", "IdPwSaveMain.jsp", out);
	// 로그인 성공 시 메시지 띄움
} else {
	// 로그인 실패
	JSFunction.alertBack("로그인에 실패했습니다.", out);
	// 로그인 실패 시 메시지 띄움
}
%>