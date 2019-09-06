<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Book" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="book" class = "my.info.Book"/>
<jsp:setProperty property="*" name="book"/>
<% book.setpDate(new java.util.Date()); %>
도서명 : <%=book.getBookName() %><br>
저자 : <%=book.getAuthor() %><br>
가격 : <%=book.getPrice() %><br>
출판일 : <%=book.getpDate() %><br>
</body>
</html>