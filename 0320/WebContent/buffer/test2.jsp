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
	out.println("버퍼크기 ="+ out.getBufferSize()+"<br>");
	out.println("남은버퍼크기 ="+ out.getRemaining()+"<br>");
	out.clearBuffer();
	out.println("클리어 후 버퍼크기 ="+ out.getBufferSize()+"<br>");
	out.println("클리어 후 남은버퍼크기 ="+ out.getRemaining()+"<br>");
	out.println("isAutoFlush???"+out.isAutoFlush());
%>
</body>
</html>