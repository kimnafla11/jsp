<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.*,my.model.*,my.util.*,java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book" class="my.model.Book"/>
<jsp:setProperty property="*" name="book"/>
<%	
	book.setPublishDate(new java.util.Date());
	Connection conn = ConnectionProvider.getConnection(); 
	try {
		BookDao dao = new BookDao(); 
		dao.insert(conn, book);  //참 쉽죠잉!!
	} catch (SQLException e) {}

%>
도서정보 입력을 완료하였습니다.!!!
</body>
</html>