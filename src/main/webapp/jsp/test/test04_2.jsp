<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%
		double height = Double.parseDouble(request.getParameter("cm"));
		double weight = Double.parseDouble(request.getParameter("kg"));
		double bmi = weight/((height/100.0)*(height/100.0));
		String result;
		if(bmi<=20){
			result = "저체중";
		}
		else if(bmi>=21 && bmi <= 25){
			result = "정상";
		}
		else if(bmi>=26 && bmi <= 30){
			result = "과체중";
		}
		else{
			result = "비만";
		}
	%>
	<h1>BMI 측정결과</h1>
	<div class="display-1">당신은 <p class="text-primary"><%= result %></p> 입니다.</div>
	<div>BMI 수치: <%= bmi %> </div>
</body>
</html>