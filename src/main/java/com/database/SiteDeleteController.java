package com.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/site/delete")
public class SiteDeleteController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		String query = "DELETE FROM `new_site` WHERE `id` =" + id + ";";  
		MysqlService mysqlservice = new MysqlService();
		mysqlservice.connect();
		mysqlservice.update(query);
		response.sendRedirect("/database/test/test01.jsp");
	}
}