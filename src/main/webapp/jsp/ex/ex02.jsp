<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int [] score = {80,90,100,95,80};
		int sum = 0;
		for(int i = 0 ; i < score.length; i++){
			sum += score[i];
			}
		double avg = sum/score.length;
	%>
	<h2> 점수 평균은 <%= avg %> 입니다. </h2>
</body>
</html>