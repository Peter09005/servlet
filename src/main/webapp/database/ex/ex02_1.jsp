<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
</head>
<body>
<%
	//db 연결
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "select * from `new_user`";
	
	ResultSet resultSet = mysqlService.select(query);
%>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
			</tr>
			
		</thead>
		<tbody>
		<%
			while(resultSet.next()) {
		%>
			
			<tr>
				<td><%=resultSet.getInt("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("year")%></td>
				<td><%=resultSet.getString("email")%></td>
			</tr>
			
		<%
			}
		%>
		</tbody>
	
	</table>
	<a href="/database/ex/ex02_2.jsp">추가하기</a>
	<form method ="post" action = "/db/user/delete">
		<input type="text" name="id">
		<button type="submit">삭제</button>
	</form>
</body>
</html>