<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c = new Cookie("C1","P1");//C1이름의 P1밸류 가진 쿠키 만듦
	c.setPath("/");//경로설정
	response.addCookie(c);//c쿠키 전송
%>
쿠키 생성했삼!<br>
</body>
</html>