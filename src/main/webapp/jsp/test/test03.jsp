<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String birthDay = "20010820";
	  int year = Integer.parseInt(birthDay.substring(0, 4));
	  int age = 2023 - year + 1; 
	%>
	<h1><%=birthDay %>의 나이는 <%= age %>입니다.</h1>
</body>
</html>