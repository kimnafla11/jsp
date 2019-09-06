<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.util.*,my.dao.*,java.util.*,my.model.*" %><%--dao와 java.util임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	Connection conn=ConnectionProvider.getConnection();
	List<Book> books = null; //dao에 booklist배열이니까 books라는 배열을 선언해준다.
	try{
		BookDao dao = new BookDao();//dao객체 하나 만들어줌
		books = dao.selectList(conn);//select리스트를 하나 넣어준다.
		for(Book book : books){
			out.println(book.getName()+":"+book.getAuthor()+":"+book.getPrice()+"<br>");
			//배열에 들어있ㄴㄴ 값을 하나씩 출력해줌			
		}
		}
		catch(SQLException e){
		e.printStackTrace();
	}
%>

</body>
</html>