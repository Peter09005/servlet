<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@
	page import = "java.util.Date"%>
<%@
	page import = "java.text.SimpleDateFormat"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<% 
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy년 mm월 dd일");
	SimpleDateFormat sdf2 = new SimpleDateFormat("hh시 mm분 ss초");
	Date now = new Date();
	String nowTime1 = sdf1.format(now);
	String nowTime2 = sdf2.format(now);
	String nowTime3;
	String timeOrDate = request.getParameter("what");
	if(timeOrDate.equals("date")){
		nowTime3 = nowTime1;
	}
	else{
		nowTime3 = nowTime2;
	}
	%>
	<h1 class="display-1">현재는 <%= nowTime3 %> 입니다.</h1>
</body>
</html>