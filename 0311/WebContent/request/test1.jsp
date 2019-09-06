<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 메서드</title>
</head>
<body>
<%
	String addr = request.getRemoteAddr();
	String method = request.getMethod();
%>

클라이언트 주소 = <%= addr %><br>
요청방법 = <%= method %><br>
요청 URI = <%= request.getRequestURI() %><br>
컨택스트 패스 = <%= request.getContextPath() %><br>
서버이름 = <%= request.getServerName() %><%--메서드 이름 다이렉트로 쓸수있음 --%><br>
</body>
</html>