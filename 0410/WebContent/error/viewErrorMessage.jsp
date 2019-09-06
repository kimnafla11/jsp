<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러발생</title>
</head>
<body>
<strong>에러가 발생했습니다.</strong>
에러 타입 : <%= exception.getClass().getName() %><br>
에러 메세지 : <%= exception.getMessage() %><br>
<%--에러타입과 에러메세지를 구체적으로 보여주기위한 페이지 --%>
</body>
</html>