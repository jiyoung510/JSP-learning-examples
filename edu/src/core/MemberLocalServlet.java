package core;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberLocalServlet")
public class MemberLocalServlet extends HttpServlet {
	int member_v = 0 ;  //필드영역(맴버 변수)
		
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8"); //한글 지원 타입
		PrintWriter out = response.getWriter();
		int local_v = 0; //지역변수
		
		member_v++ ; //맴버 변수 증가
		local_v++ ;  //지역 변수 증가
		
		out.print("<h2>member_v(맴버변수) : " + member_v + "</h2>");
		out.print("<h2>local_v(지역변수) : " + local_v + "</h2>");
		out.close();
		}

}
