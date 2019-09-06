<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
주소를 저장할 수 있는 쿠키를 만들어 path1에 저장하고 viewCookie로 보세요.
<%
	Cookie cookie1 = new Cookie("ADD","Siheung");
	cookie1.setPath("/0415/path1");
	cookie1.setMaxAge(60);//60초동안 쿠키 살아 있음
	response.addCookie(cookie1);	
%>
</body>
</html>