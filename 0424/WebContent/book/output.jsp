<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Book" %><%--임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Book book = (Book)application.getAttribute("BK"); %>
책제목: <%=book.getBookName() %><br>
장르: <%
	for(String janre : book.getJanre())
		out.println(janre+"<br>");
%><%--배열이니까 for문으로 출력한다. --%>
가격: <%=book.getPrice() %><br>
출판일: <%=book.getPublishDate() %><br>
</body>
</html>