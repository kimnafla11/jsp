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
<c:choose>
	<c:when test="${param.code == 'M01' }">
		code = ${param.code }<br>
	</c:when>
	<c:when test="${param.name == '임찬규' }">
		name = ${param.name }<br>
	</c:when>
	<c:when test="${param.age > 20 }">
		20세 이상입니다.<br>
	</c:when>
</c:choose>
</body>
</html>