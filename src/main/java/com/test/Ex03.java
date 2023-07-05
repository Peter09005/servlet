package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com/test/ex03")
public class Ex03 extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    	response.setContentType("text/html");
    	response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/mm/dd hh:mm:ss");
        String date = formatter.format(now);
        out.print("<html><head><title>뉴스기사출력</title></head><body><h1>[단독] 고양이가 야옹해</h1><div>기사 입력시간"+date+"</div><hr><div>끝</div></body></html>");
    }
}
