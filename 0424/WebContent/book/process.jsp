<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book" class="my.info.Book" scope="application"/>
<jsp:setProperty property="*" name="book"/>
<% book.setPublishDate(new java.util.Date()); %><%--오늘날짜 --%>
<% application.setAttribute("BK", book); %><%--속성으로 설정 --%>
애플리케이션 속성에 잘 저장 되었습니다.
</body>
</html>