<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String sub = request.getParameter("subject");
	String urlSub = URLEncoder.encode(sub, "utf-8");
	int score = Integer.parseInt(request.getParameter("score"));
	if (score >= 90 && score <= 100)//get방식으로 하는거임 일단 한글지정은 안함
		response.sendRedirect("output.jsp?grade=A&sub="+urlSub);
	else if(score >= 80 && score < 90)
		response.sendRedirect("output.jsp?grade=B&sub="+urlSub);
	else if(score>= 70 && score <80)
		response.sendRedirect("output.jsp?grade=C&sub="+urlSub);
	else
		response.sendRedirect("output.jsp?grade=D&sub="+urlSub);
%>
</body>
</html>