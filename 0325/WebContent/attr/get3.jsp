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
	String req = (String)request.getAttribute("ADDR");
	String pag = (String)pageContext.getAttribute("ADDR");
	String ses = (String)session.getAttribute("ADDR");
	String app = (String)application.getAttribute("ADDR");
%>
request 속성값 = <%= req %> <br>
page 속성값 = <%= pag %> <br>
session 속성값 = <%= ses %> <br>
application 속성값 = <%= app %> <br>

<%--get3만 실행하면 application속성값만 잘 나오고 나머지 null값만 나온다.. --%>
</body>
</html>