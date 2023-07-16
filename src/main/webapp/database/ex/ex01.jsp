<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.common.MysqlService"%>
<%@ page import ="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% MysqlService mysqlService = MysqlService.getInstance();
	   mysqlService.connect();
	   
	   String query = "SELECT * FROM `new_user`;";
	   
	   ResultSet resultset = mysqlService.select(query);
	%>
	<h2> 사용자 목록 </h2>
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<% while(resultset.next()){%>
				<tr>
					<td><%= resultset.getString("name") %></td>
					<td><%= resultset.getString("yyyymmdd") %></td>
					<td><%= resultset.getString("e-mail") %></td>
				</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>