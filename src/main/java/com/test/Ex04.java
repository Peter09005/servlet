package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/ex04")
public class Ex04 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	response.setContentType("text/html");
    	response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        int i = 1; 
        out.print("<html><head><title>리스트출력</title></head><body><ul>");
        while(i<31) {
        	out.println("<strong><li>"+i+"번째리스트"+"</li></strong>");
        	i++;
        }
        out.print("</ul></body></html>");
    }
}
