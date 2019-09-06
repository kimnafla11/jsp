<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.music.Music" %><%--임포트 해줘야함 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Music m1 = (Music)request.getAttribute("MS");
%>
장르: <%= m1.getJanre() %><br>
제목: <%= m1.getMusicName() %><br>
가격: <%= m1.getPrice() %><br>
</body>
</html>