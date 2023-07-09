<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		double val = Integer.parseInt(request.getParameter("cm"));
		String [] measure = request.getParameterValues("measure");
		String [] results = new String [4];
		int cnt = 0; 
		for(String measureType : measure){
			if(measureType.equals("inch")){
				results[cnt] = (val/2.54) + "inch";
				cnt++;
			}
			else if(measureType.equals("yard")){
				results[cnt] = (val/91.44) + "yard";
				cnt++;
			}
			else if(measureType.equals("feet")){
				results[cnt] = (val/30.48) + "ft";
				cnt++;
			}
			else if(measureType.equals("meter")){
				results[cnt] = (val/100) + "m";
				cnt++;
			}
		}
		for(int i = 0 ; i<cnt; i++){
			if(results[cnt] == null){
				results[cnt] = "";
			}
		}
	%>
	<h1> 변환 결과</h1>
	<hr>
	<h1>
	<%=results[0]%>
	<br>
	<%=results[1] %>
	<br>
	<%=results[2] %>
	<br>
	<%=results[3] %>
	</h1>
</body>
</html>