<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %><%--임포트 해주어야함 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String menu = request.getParameter("menu");
	String size = request.getParameter("size");
	String urlSize = URLEncoder.encode(size,"utf-8");//url인코더를 임포트하고, url인코딩해준다.
	if(menu.equals("찐따두준"))
		response.sendRedirect("a.jsp?size="+urlSize);//url타입으로 넘김
	else if(menu.equals("축구두준"))
		response.sendRedirect("b.jsp?size="+urlSize);
	else if(menu.equals("셀카두준"))
	response.sendRedirect("c.jsp?size="+urlSize);
	else 
	response.sendRedirect("d.jsp?size"+urlSize);//redirection시켜준다..
%>
</body>
</html>