<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 날짜 관련은 fmt태그를 추가해주어야한다 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var ="now" value= "<%=new java.util.Date() %>"/>
<fmt:formatDate value="${now }" type = "date" dateStyle="full"/><br>
<fmt:formatDate value="${now }" type = "date" dateStyle="short"/><br>
<fmt:formatDate value="${now }" type = "time" /><br>
<fmt:formatDate value="${now }" type = "both" dateStyle="full" timeStyle ="full"/><br>
<fmt:formatDate value="${now }" pattern = "z a h :mm"/><br>
</body>
</html>