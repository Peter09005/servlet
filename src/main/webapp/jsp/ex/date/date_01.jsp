<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1> 기사 </h1>
	<%-- date.jsp 불러오기 (정적) --%>
	<%@ include file = "date.jsp" %>
	
	<%--include에 있던 변수도 같이 쓸수있음 (정적의 특징) --%>
	<%= now %>
</body>
</html>