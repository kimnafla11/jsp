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
	String name = "김나은";
	String urlName = URLEncoder.encode(name,"utf-8");
	Cookie cookie = new Cookie("NAME",urlName);
	response.addCookie(cookie);
	Cookie cookie1 = new Cookie("ADDRESS",request.getParameter("add"));
	response.addCookie(cookie1);
%>
쿠키가 만들어졌어요<br>
<%=cookie.getName() %> : <%= cookie.getValue() %><br>
<%=cookie1.getName() %> : <%= cookie1.getValue() %>
</body>
</html>