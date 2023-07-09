<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1> 길이 변환 </h1>
		<form method="post" action="/jsp/test/test07_2.jsp">
			<input type="text" name="cm">
			<label>인치<input value="inch" type="checkbox" name="measure"></label>
			<label>야드<input value="yard" type="checkbox" name="measure"></label>
			<label>피트<input value="feet" type="checkbox" name="measure"></label>
			<label>미터<input value="meter" type="checkbox" name="measure"></label>
			<button type="submit">변환</button>
		 </form>
	</div>
</body>
</html>