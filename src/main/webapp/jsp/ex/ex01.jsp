<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"
 %>
 <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> JSP 기본 문법 </h2>
	<%--jsp 주석입니다. --%> <!-- 이것은 브라우저에 보이지만 jsp는 보이지 않습니다. -->
	
	<h2> 1. 합계 구하기</h2>
	<%
		int sum = 0 ;
		for(int i = 0 ; i < 10 ; i++){
			sum += i+1; 
		}
	%>
	
	<h3> 합계 : <%=sum %></h3>
	<input type="text" value="<%=sum%>">
	
	<%
		// 동물 이름을 저장하는 리스트 
		List<String> animalList = new ArrayList<>();
		animalList.add("dog");
		animalList.add("cat");
	%>
	<h3>동물 이름</h3>
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	<h2> 메소드 만들기</h2>
	
	<%--hello world 를 return하는 메소드 --%> 
	
	<%! 
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
</body>
</html>