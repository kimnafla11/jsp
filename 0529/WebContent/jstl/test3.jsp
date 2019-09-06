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
이름 : ${requestScope.t}, ${sessionScope.s }, ${applicationScope.a }<br><br>


el을 쓰지 않고 가져온 이름 : 
<%
	String t = (String)request.getAttribute("t");
%>
<%=t %><br>

<!-- 속성설정 값을 가져올때는 requestScope를 사용해서 가져온다!!★ -->
</body>
</html>