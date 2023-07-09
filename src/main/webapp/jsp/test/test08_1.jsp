<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%@ page import = "java.util.*" %>
</head>
<body>
	<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	int cnt = 1; 
	%>
	<div class="text-center">
		<h1>장 목록</h1>
		<hr>
		<div class="d-flex justify-content-center mx-2">
			<div class="d-flex justify-content-between w-50">
				<div class="font-weight-bold">품목</div>
				<div class="font-weight-bold">번호</div>
			</div>
		</div>
			<%
				for(String product : goodsList){
			%>
		<div class="d-flex justify-content-center mt-3">
			<div class="d-flex justify-content-between w-50">
				<div><%= cnt %></div>
				<div><%= product %></div>
			</div>
		</div>
		<hr>
			<%
				cnt++;
				}
			%>

	
</body>
</html>