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
	request.setCharacterEncoding("utf-8");
	String janre = request.getParameter("janre");
	String name = request.getParameter("musicName");
	int price = Integer.parseInt(request.getParameter("price"));
	Music music = new Music(janre,name,price);
	request.setAttribute("MS",music);
%>
<jsp:forward page="output.jsp"/>
</body>
</html>