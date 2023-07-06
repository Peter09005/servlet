package com.test;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/test09")
public class Test09 extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	String name = request.getParameter("name");
    	String textarea = request.getParameter("textarea");
    	
    	out.print("<html><head><title>지원서</title><body>");
    	out.print("<h1>" + name + "</h1><hr>");
    	out.print("지원내용<br>"+textarea+"</body></html>");
    }
}