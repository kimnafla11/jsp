<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date date = new Date(); //date객체(클래스) 생성, ():생성자 ,3행에 date객체 위치지정(디렉티브에 임포트 유형사용)
	Calendar cal = Calendar.getInstance(); //calendar객체 생성 getInstance(스태틱형태의 생성자)
	
%>

오늘은 <%= date %>입니다. <br>
오늘은 <%= cal.getTime() %>입니다. <br>
</body>
</html>