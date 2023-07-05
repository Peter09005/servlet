package com.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/com/ex/Ex02")
public class Ex02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 파라미터를 전달받는 메소드를 만들어보자 
		
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		birth = birth.substring(0,4);
		int year = Integer.parseInt(birth);
		int age = 2023 - year +1;
		
		out.println("<http><head><title>표만들기</title></head>"
				+ "<body><table border=1>"
				+ "<tr><td>"+year+"</td>"+"<td>"+age+"</td></tr>\"<tr><td>\"+name+\"</td>\"+\"<td>\"+age+\"</td></tr></table></body></html>");
	}
}
