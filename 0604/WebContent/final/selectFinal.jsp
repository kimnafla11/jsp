<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import = "my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	Connection conn = ConnectionProvider.getConnection();
	List<Book> bookList = null;
	try {
		BookDao dao = new BookDao(); //DAO 객체 선언
		bookList = dao.selectLike(conn, target, keyword); 
	} catch (SQLException e){}
	if (bookList != null) {
%>
<c:set var="list" value="<%=bookList%>"/>
<c:forEach var="b" items="${list}">
${b.bookId}:${b.bookName}:${b.author}:${b.price}:${b.publishDate} <br>
</c:forEach>

<% } else { %>
리스트 항목이 없습니다. 

<% } %>
</body>
</html>











