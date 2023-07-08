<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import = "java.util.List"%>
<%@ page import = "java.util.Arrays"%>
</head>
<body>
	<% 
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int cnt = 0; 
	for(String val : scoreList) {
		if(val.equals("O")) {
			cnt++;
		}
	}
	double avg = (double)cnt / scoreList.size() * 100;
	%>
	<h1>채점 결과: <%= avg %></h1>
</body>
</html>