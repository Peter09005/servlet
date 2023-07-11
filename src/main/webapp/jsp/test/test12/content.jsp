<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.util.*" %>

<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
%>

<article>
	<div class="border border-success">
		<div class="m-4 d-flex">
			<img width = "200" src = "<%= artistInfo.get("photo") %>">
			<div class="ml-5"><h1><%= artistInfo.get("name") %></h1>
				 <div><%= artistInfo.get("agency") %></div>
				 <div><%= artistInfo.get("debute") + "데뷔" %></div>
			</div>
		</div>
	</div>
</article>



