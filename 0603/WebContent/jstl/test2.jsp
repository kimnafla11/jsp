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
<fmt:setBundle var = "message" basename="resource.message"/><!-- 번들에 var값을 지정해줌 -->
<fmt:setBundle var = "department" basename="resource.department"/><!--번들이름을 각각줌 -->
	<fmt:message bundle="${message }" key="NAME" var="name"/><!-- 지정한 번들 이름을 넣어주고 그에 해당하는 var값을 선언 -->
	${name }<br>
	<fmt:message bundle="${department }" key = "TITLE" var="title"/>
	${title }<br><!-- 서로 다른 번들을 바꾸어가면서 출력하는것도 가능하다 -->
	<fmt:message bundle = "${message }" key ="ID" var ="id">
		<fmt:param value = "${param.id }"/><!-- get방식으로 받는 el지정 -->
	</fmt:message>
	${id }<br><!-- 이렇게 출력하는 방식 1개 있음 -->
	<fmt:message bundle = "${department }" key ="SPECIAL">
		<fmt:param value = "${param.special }"/>
	</fmt:message><br><!-- 이렇게 출력하는 방법도 있다. -->
	<fmt:message bundle = "${department }" key ="PLACE">
		<fmt:param value = "${param.pla }"/>
	</fmt:message><br><!-- 이렇게 출력하는 방법도 있다. -->
</body>
</html>