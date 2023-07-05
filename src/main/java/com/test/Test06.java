package com.test;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/test06")
public class Test06 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	
    	response.setCharacterEncoding("UTF-8");
    	response.setContentType("application/json");
    	PrintWriter out = response.getWriter();
    	
    	int op1 = Integer.parseInt(request.getParameter("number1"));
    	int op2 = Integer.parseInt(request.getParameter("number2"));
    	
    	out.print("{");
    	out.print("\"addition\":"+(op1+op2)+",");
    	out.print("\"subtraction\":"+(op1-op2)+",");
    	out.print("\"multiplication\":"+(op1*op2)+",");
    	out.print("\"division\":"+(op1/op2));
    	out.print("}");
    }
}