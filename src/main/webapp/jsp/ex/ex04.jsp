<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@
	page import = "java.util.*"
 %>
</head>
<body>
	<!-- 반복문 만들어보자 -->
	
	<% 
		List<String> fruit = new ArrayList<>();
		
		fruit.add("사과");
		fruit.add("바나나");
		fruit.add("딸기");
		fruit.add("망고");
		
		String result = "";
		for(int i = 0; i < fruit.size(); i++){
			result = "<h2>" + fruit.get(i) + "</h2>";
		}
		for(String fruitName : fruit){
			out.print("<h2>" + fruitName + "</h2>");
		}

		%>
		
		<%
			for(String fruitName : fruit){
		%>
			<h2> <%= fruitName %></h2>
		<% 
		}
		%>
		
		
		<table border="1">
			<tr>
				<td>사과</td>
			</tr>
			<tr>
				<td>사과</td>
			</tr>
			<tr>
				<td>사과</td>
			</tr>
		</table>
		
		<table>
			<%
			for(String fruitName : fruit){
			%>
			<tr><td><%= fruitName %></td></tr>
			<%
			}%>
		</table>
</body>
</html>