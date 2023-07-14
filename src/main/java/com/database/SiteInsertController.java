package com.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/site/insert")
public class SiteInsertController extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		String site = request.getParameter("site");
		String name = request.getParameter("name");
		String query = "INSERT INTO `new_site` " +
	              "(`name`,`site`) " +
	              "VALUES " +
	              "('" + name + "','" + site + "');";
		MysqlService mysqlservice = new MysqlService();
		mysqlservice.connect();
		mysqlservice.update(query);
		response.sendRedirect("/database/test/test01.jsp");
	}
}
