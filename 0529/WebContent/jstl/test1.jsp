<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
name = ${param.name }<br>
<%
	request.setAttribute("t", "홍길동");
	session.setAttribute("s","손나은");
	application.setAttribute("a","임찬규");

%>
<jsp:forward page="test3.jsp"/>
</body>
</html>