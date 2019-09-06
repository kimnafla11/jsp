<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.*, my.util.*, my.model.*,java.sql.*,java.util.* " %><%--리스트를 쓰기위해 자바 유틸 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//캐릭터 설정해주기
	String target = request.getParameter("target");//타겟설정하기위해서 가져옴
	String keyword = request.getParameter("keyword");
	Connection conn = ConnectionProvider.getConnection();
	List<Book> books = null;
	try{
		BookDao dao = new BookDao();
		books = dao.selectLike(conn, target, keyword);
		for(Book book : books){
%>
<h2>~~~유사검색결과입니다~~~</h2><br>
아이디 : <%=book.getBookId() %><br>
도서명 : <%=book.getName() %><br>
저자 : <%=book.getAuthor() %><br>
가격 : <%=book.getPrice() %>
<hr><br>
<%
		}
	}catch(SQLException e){}
%>
</body>
</html>