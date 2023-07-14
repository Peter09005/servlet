<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.common.MysqlService" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%
	//db 연결
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "select * from `new_site` ORDER BY `id` DESC";
	
	ResultSet result = mysqlService.select(query);
%>
</head>
<body>
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>링크</th>	
				<th>링크삭제</th>			
			</tr>
		</thead>
		<tbody>
			<% while(result.next()){ %>
				<tr>
					<td><%=result.getString("name")%></td>
					<td><a href="<%= result.getString("site")%>"><%= result.getString("site")%></a></td>
					<td><a class="btn btn-success" href="/db/site/delete?id=<%=result.getInt("id")%>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<div class="m-5">
		<a class="btn btn-primary" href="/database/test/test01_insert.jsp">즐겨찾기 추가</a>
	</div>
</body>
</html>