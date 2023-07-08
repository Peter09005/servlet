<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
		int getSum(int N){
			int sum =0;
			for(int i = 0; i<N; i++){
				sum += i+1;			
			}
			return sum;
		}
	%>
	<h1> 1부터 50까지 의 합은 <%= getSum(50) %></h1>
</body>
</html>