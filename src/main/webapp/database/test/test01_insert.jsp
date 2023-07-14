<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<form method="post" action="/db/site/insert">
		<h1 class="mx-2"> 즐겨찾기 추가</h1>
		<div class="col-2 mt-2">
		<b>사이트명:</b>
		<input class="form-control" type="text" name = "name">
		</div>
		<div class="col-4 mt-2">
		<b>url:</b>
		<input class="form-control" type="text" name ="site">
		</div>
		<button type ="submit" class="btn btn-success mt-2 mx-2" href="/db/site/insert">추가</button>
	</form>
</body>
</html>