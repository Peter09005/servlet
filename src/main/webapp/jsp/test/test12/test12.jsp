<<<<<<< HEAD
=======

>>>>>>> 43a76f0ae5d8fb8f88a416d3d7e6cb63993c2d9d
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
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
=======
<title>Melong</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%@ page import = "java.util.*" %>
<%
//아티스트 정보 

 Map<String, Object> artistInfo = new HashMap<>();
 artistInfo.put("name", "아이유");
 artistInfo.put("debute", 2008);
 artistInfo.put("agency", "EDAM엔터테인먼트");
 artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
 

%>
<div class="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
			<div class="border border-success">
		<div class="m-4 d-flex">
			<div>
				<img width= 230px src = "<%=artistInfo.get("photo") %>">
			</div>
			<div class="mx-4">
				<h1><%= artistInfo.get("name")%></h1>
				<div><%=artistInfo.get("agency") %></div>
				<div><%=artistInfo.get("debute") %></div>
			</div>
		</div>
	</div>
	<section class="mt-3">
		<h2>곡 목록</h2>
		<table class="table">
			<thead>
				<tr>
					<th>no</th>
					<th>제목</th>
					<th>앨범</th>
				</tr>
			</thead>
			<tbody>
				<%
				for(Map <String,Object> Info : musicList){
				%>
				<tr>
					<td><%=Info.get("id")%></td>
					<td><a href="/jsp/test/test12/test12_detail.jsp?id=<%=Info.get("id")%>"><%=Info.get("title")%></a></td>
					<td><%=Info.get("album")%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</section>
	<jsp:include page="footer.jsp" />
</div>
>>>>>>> 43a76f0ae5d8fb8f88a416d3d7e6cb63993c2d9d
</body>
</html>