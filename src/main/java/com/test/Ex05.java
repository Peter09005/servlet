package com.test;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/test05")
public class Ex05 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	
    	response.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	
    	String numStr = request.getParameter("number");
    	int num = Integer.parseInt(numStr);
    	out.print("<html><head><title>구구단</title><body>");
    	for(int i = 0 ; i < 9; i++) {
    		out.println("<div>"+num+"X"+i+"="+num*i+"</div>");
    	}
    	out.print("</body></html>");
    }
}