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
	<li><a href = "sexygay.jsp?id=<%= id %>">섹시스타일</a></li>
	<li><a href = "cute.jsp?id=<%=id%>">깜찍스타일</a></li>
	<li><a href = "oldgay.jsp?id=<%=id%>">노친네스타일</a></li>
	<li><a href = "fatgay.jsp?id=<%=id%>">뚱보스타일</a></li>
	<li><a href = "cd.jsp?id=<%=id%>">여자같은스타일</a></li>
</ul>
</body>
</html>