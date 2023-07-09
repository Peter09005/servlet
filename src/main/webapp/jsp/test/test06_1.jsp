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
	<div>
		<div class="font-weight-bold display-2">사칙연산</div>
		
		<form method="post" action="/jsp/test/test06_2.jsp">
			<div class="d-flex w-50">
				<input class="form-contol col-4" type="text" name="op1">
				<select class="form-control col-2 mx-2" name="operator">
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="X">*</option>
					<option value="/">/</option>
				</select>
				<input class="form-control col-4 mx-2" type="text" name="op2">
				<button class="btn btn-success" type="submit">계산</button>
			</div>
		</form>
	</div>
</body>
</html>