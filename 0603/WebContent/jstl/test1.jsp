<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:bundle basename="resource.message"><!-- resource.message에 있는 key값 id를 출력하는것 -->
	<fmt:message key ="ID">
		<fmt:param value = "${param.id}"/><!-- url에서 id를 받아서 value값을 넣겠다는말 -->
	</fmt:message><br>
	<fmt:message key ="NAME" var = "name"/><br><!-- var을 선언하면 el로 출력가능하다 -->
	<fmt:message key ="ADD">
		<fmt:param value = "${param.add}"/>
		<fmt:param value = "${param.add1}"/>
	</fmt:message><br>
	${name }<!-- 앞서 NAME에서 var값을 지정했기때문에 el로 출력함.메세지 값을 변수로 넣어서 el출력가능함 -->
</fmt:bundle><!-- bundle이란 하나의 데이터 묶음을 뜻함 -->
</body>
</html>