package com.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService; 
@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String year = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String query = "INSERT INTO `new_user` " +
	              "(`name`,`year`,`email`) " +
	              "VALUES " +
	              "('" + name + "','" + year + "','" + email + "');";
		// insert 를 해야하니까 , common에 있는 mysqlService 를 객체로 불러와야겠는걸? 
		
		MysqlService mysqlservice = new MysqlService();
		mysqlservice.connect();
		int cnt = mysqlservice.update(query);
		
		//Redirect를 통해서 다시 jsp 쪽으로 넘어갈수있다.
		response.sendRedirect("/database/ex/ex02_1.jsp"); 
	}
}
