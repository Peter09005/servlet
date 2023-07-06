package com.test;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/test10")
public class Test10 extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	String name = request.getParameter("id");
    	String textarea = request.getParameter("password");
    	if(name.equals(userMap.get("id")) && textarea.equals(userMap.get("password"))) {
    		out.print("<html><head><title>환영합니다</title></head><body>");
    		out.print("<h1>" + userMap.get("name") + "님 환영합니다</h1></body></html>");
    	}
    	else {
    		out.print(userMap.get("name"));
    	}
    }
    
    private final Map<String, String> userMap =  new HashMap<String, String>() {
    	 {
    	     put("id", "hagulu");
    	     put("password", "asdf");
    	     put("name", "Peter");
    	 }
    	};
}

/*
 * JSP >> 스크립틀릿이라는 공간을 이용해서 HTML안에서 
 * 자바 코드를 작성할수 있다. 
 * <%=sum%> >> 태그 사이로 들어간다. 
 * 지시어 <%@ page language = "java" ContentType=~~~> 
 * <%!> 멤버 변수 , 함수 선언  
 * 
 */
