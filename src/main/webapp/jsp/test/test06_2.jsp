<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		int op1 =Integer.parseInt(request.getParameter("op1"));
		String operator = request.getParameter("operator");
		int op2 = Integer.parseInt(request.getParameter("op2"));
		double result = 0;
		if(operator.equals("+")){
			result = op1 + op2;
		}
		else if(operator.equals("-")){
			result = op1 - op2;
		}
		else if(operator.equals("X")){
			result = op1 * op2;
		}
		else{
			result = op1/(double)op2;
		}
	%>
	<h1> 계산 결과</h1>
	<div class="display-1 d-flex"><%= op1+operator+op2+"="%><p class="text-primary"><%= result %></p></div>
</body>
</html>