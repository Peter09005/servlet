package com.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;

@WebServlet("/db/test01")
public class  Test01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		// 객체생성하지않고 만들기.
		MysqlService mysqlservice = MysqlService.getInstance();
		// 연결 
		mysqlservice.connect();
		mysqlservice.update("INSERT INTO `real_estate`\r\n"
				+ "(`realtorld` , `address` , `area` , `type` , `price` , `rentPrice`)\r\n"
				+ "VALUE \r\n"
				+ "(3,'헤라펠리스 101동 5305호' , 350 , '매매', 1500000 , NULL);");
		ResultSet resultSet = mysqlservice.select("SELECT `address` , `area` , `type` FROM `real_estate` ORDER BY `id` DESC LIMIT 10;");
		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				out.print(address + "\n" + area + "\n" + type);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
