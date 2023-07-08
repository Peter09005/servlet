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
	<div>
		<h1 class="display-1"> 체격 조건 입력</h1>
		<form method = "post" action="/jsp/test/test04_2.jsp">
			<div class="mt-3 w-75 d-flex">
					<div class="d-flex w-25">
						<input class="form-control" type="text" name="cm"><div class="small d-flex align-items-end mx-1">cm</div>
					</div>
					<div class="d-flex mx-2 w-25">
						<input class="form-control" type="text" name="kg"><div class="small d-flex align-items-end mx-1">kg</div>
					</div>
					<div>
						<button class="btn btn-primary" type="submit">확인</button>
					</div>
			</div>
		</form>
	</div>
</body>
</html>