<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사용자 정보를 입력하세요</h2>
	<form method="post" action="/db/user/insert">
		<label>이름</label><input type="text" name="name"><br>
		<label>생년월일</label><input type="text" name="yyyymmdd"><br>
		<label>e-mail</label><input type="text" name="email"><br>
		<button type="submit">추가</button>
	</form>
	
</body>
</html>