<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>멜롱</title>
</head>
<body>
<%	String id = request.getParameter("id");
	if(id == null){
%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<jsp:include page="content.jsp" />
		<jsp:include page="section.jsp" />
		<jsp:include page="footer.jsp" />
	</div>
<%}%>
	<%if(id != null){%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<jsp:include page="content_1.jsp" flush="false">
			<jsp:param name="id" value="<%=id%>"/>
		</jsp:include>
		<jsp:include page="footer.jsp" />
	</div>
	<%}%>
</body>
</html>