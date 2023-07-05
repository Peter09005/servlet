package com.ex;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/com/ex/controller")

public class Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html");
    	
    	// 1 부터 10부터의 합을 보여주는 페이지
    	
    	PrintWriter out = response.getWriter();
    	
    	int i = 10; 
    	int sum = 0;
    	while(i>0) {
    		sum +=i;
    		i--;
    	}
    	
    	out.println("<html><head><title>합계</title></head><body>");
    	out.println("<h2>" + sum + "<h2></body></html>"); 
    }
}