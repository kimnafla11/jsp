<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.*, my.util.*, my.model.*,java.sql.* " %><%--기본적으로 이 세개는 항상 임포트 해주자 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int bookId = Integer.parseInt(request.getParameter("bookId"));//search에서 가져옴
	Connection conn = ConnectionProvider.getConnection();
	Book book = null;//전역변수 선언
	try{
		BookDao dao = new BookDao();
		book = dao.selectById(conn, bookId);
	}catch(SQLException e){}
%>
<h1>~~~검색결과입니다~~~</h1><br>
아이디 : <%=book.getBookId() %><br>
도서명 : <%=book.getName() %><br>
저자 : <%=book.getAuthor() %><br>
가격 : <%=book.getPrice() %>
</body>
</html>