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
	String id = request.getParameter("id");
%>
<ul>
	<li><a href = "shoes.jsp?id=<%=id %>">운동화</a></li>
			<%--get방식으로 id값을 갖고 shoes.jsp를 부른다 --%>
	<li><a href = "gudu.jsp?id=<%=id %>">구두</a></li>
	<li>장화</li>
	<li>쓰레빠</li>
	<li>샌들</li>
</ul>
</body>
</html>