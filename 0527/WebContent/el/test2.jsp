<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
request 기본객체 name속성 값 : ${requestScope.name}<%--EL을 쓴 경우 --%> <br>
request 기본객체 address속성 값 : ${requestScope.address}<br>
session 기본객체 depart속성 값 : ${sessionScope.depart}<br>

<%--request 기본객체 name속성 값 : <%=request.getAttribute("name") %><%--EL을 안쓴 경우 --%> <br>
<%--값은 똑같지만 el을 썼을때 더 간단하다. 가급적이면 스크립트 형태인 el로 출력할것. --%>
</body>
</html>