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
	<form method="get" action="/jsp/test/test09_2.jsp">
		<h1 class="mb-2"> 메뉴 검색</h1>
		<div class="d-flex align-items-center">
			<input class="form-control col-2" type="text" name="menu"> 
			<label class="mx-2"><input type="checkbox" name="checkbox" value="check"> 4점 이하 제외</label>
		</div>
		<div class="mt-2">
			<button class="btn btn-success" type="submit">검색</button>
		</div>
	</form>
</body>
</html>