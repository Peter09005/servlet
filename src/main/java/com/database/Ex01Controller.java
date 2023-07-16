package com.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/data01";
			String userId = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url,userId,password);
			Statement statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM `used_goods`;";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			out.println("<html><head><title>중고목록</title></head><body>");
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + "가격: " + price + "</div>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String insertQuery = "insert into `used_goods`\r\n"
				+ "(`selleIdr`,`title`,`price`,`description`,`image`) \r\n"
				+ "value\r\n"
				+ "(3,'고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워서 안먹어요', NULL);";
		out.println("</body></html>");
	}
}
