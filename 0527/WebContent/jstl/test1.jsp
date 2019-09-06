<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %><%--c라는 프레픽스 준다 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>반복문을 어떻게 만들까용</title>
</head>
<body>
<c:forEach var ="id" items= "<%=java.util.TimeZone.getAvailableIDs() %>">
<%--일종의 for문임, id는 el의 변수인거임 그 id는 items로 넘어오는 배열을 갖고있음 반복되면서--%>
	${id }<br><%--출력함 --%>
</c:forEach>

<%--출력시 timezone에 해당하는 모든 배열 값을 출력한다. --%>
</body>
</html>