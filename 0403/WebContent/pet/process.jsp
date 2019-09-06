<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String kind = request.getParameter("kind");
	String size = request.getParameter("size");
	request.setAttribute("size", size);
	String gotoPage = null;
	if (kind.equals("강아지"))
		gotoPage = "/shop/dog.jsp";
	else if (kind.equals("고양이"))
		gotoPage = "shop/cat.jsp";
	else if (kind.equals("토끼"))
	gotoPage = "shop/rabbit.jsp";
	else
	gotoPage = "shop/turtle.jsp";
	
%>
<jsp:forward page ="<%=gotoPage %>"/>
</body>
</html>