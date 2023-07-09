<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import = "java.util.*" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    String search = request.getParameter("menu");
	    String check = request.getParameter("checkbox");
	    if(check == null){
	    	check = "notChecked";
	    }
	%>
	<div class="container">
		<h1 class="text-center"> 검색 결과</h1>
		<table class="table text-center">
			<thead>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</thead>
		<%
			if(check.equals("check")){
				for(Map<String,Object> strMap :list){
					if((double)strMap.get("point")>=4.0 && strMap.get("menu").equals(search)){
						%> 
						<tr class="text-center">
							<td><%=strMap.get("menu") %></td>
							<td><%=strMap.get("name") %></td>
							<td><%=strMap.get("point") %></td>
						</tr>
						<%
						}	
					}
				}
			else{
				for(Map<String,Object> strMap :list){
					if(strMap.get("menu").equals(search)){
						%>
						<tr class="text-center">
							<td><%=strMap.get("menu") %></td>
							<td><%=strMap.get("name") %></td>
							<td><%=strMap.get("point") %></td>
						</tr>
						<%
					}
				}
			}
		%>
</body>
</html>