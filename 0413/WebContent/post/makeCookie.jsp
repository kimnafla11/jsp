<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String urlName = URLEncoder.encode(request.getParameter("name"),"utf-8");
	String urlAddress = URLEncoder.encode(request.getParameter("address"),"utf-8");
	Cookie cookie = new Cookie("UI",userId);
	response.addCookie(cookie);
	Cookie cookie1 = new Cookie("PW",password);
	response.addCookie(cookie1);
	Cookie cookie2 = new Cookie("NAME",urlName);
	response.addCookie(cookie2);
	Cookie cookie3 = new Cookie("ADDRESS",urlAddress);
	response.addCookie(cookie3);
%>
쿠키가 만들어졌어요<br>
</body>
</html>