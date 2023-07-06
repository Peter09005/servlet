package com.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/ex/ex04")
public class Ex04 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0,4));
		int age = 2023 - year + 1; 
		
		out.println("<html><head><title>이름,나이</title></head><body>");
		out.println("<h2> 이름:" + name + "</h2>");
		out.println("<h2> 나이" + age + "</h2>");
		out.println("</body></html>");
	}
}

/* 
	get은 바로 되는데 
	post는 405가 나온다. Method Not Allowed 
	>> 메소드를 정하는것도 서버에서 정하는것이다 
	>> Server : Tomcat 내가 정할수있는거임!
	
	Filter 를 통해서, 어떤 페이지를 접근하기 전에 , 항상 들어가는 코드들을 넣을 수있음 (공통적인 요소) 
	
	기본은 get 
	
	String 길이 길때, 중요한 정보일때 Post
	
	Post로 설정하면 , 주소창에 값이 전달이 되지 않는다!
	하지만, 한글이 깨지는 문제가 발생한다 >> 
	캐릭터 Encoding 문제 
	request 에 대한 문제
	url encoding 으로 인해 , get일떄는 request 의 encoding 을 신경써주지 않았어도 됐지만, post는 url로 값 전달 하는게 아니라서 , java쪽에 request.setCharacterEncoding("utf-8"); 로 해결해주어야한다.ㅊ 
	
*/