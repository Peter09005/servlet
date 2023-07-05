package com.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/ex/ex03")
public class Ex03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		int year = Integer.parseInt(request.getParameter("birth").substring(0, 4));
		int age = 2023 - year + 1;
		out.println("<html><head><title>이름나이</title></head>");
		out.println("<h2>이름:"+ name + "</h2>");
		out.println("<h2>나이"+ age + "</h2>");
		out.println("</body></html");
	}
}
