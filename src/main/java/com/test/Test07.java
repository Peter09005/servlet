package com.test;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/test07")
public class Test07 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	
    	response.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	
    	String addr = request.getParameter("address");
    	String cardName = request.getParameter("card");
    	int price = Integer.parseInt(request.getParameter("price"));
    	
    	if(addr.contains("서울시")) {
    		out.print("배달불가 지역입니다");
    	}
    	else if(cardName.contains("신한카드")) {
    		out.print("결제 불가 카드입니다.");
    	}
    	else {
    		out.print("<html><head><title>배달의민족</title></head><body>");
    		out.print("<strong><h3>"+addr+" 배달 준비중"+"</h3></strong><hr>");
    		out.print("결제금액: " + price+"</body></html>");
    	}
    }
}