<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.util.*,my.dao.*" %><%--my.dao패키지에 있는 거를 임포트 해주기--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="book" class="my.model.Book"/>
<jsp:setProperty property="*" name="book"/>
	
<%
	Connection conn=ConnectionProvider.getConnection();//db커넥션을 간단하게 연결 할 수 있게 되엇음 바로 연결 가능하다
	try{
		BookDao dao = new BookDao();
		dao.insert(conn, book);
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
1개의 레코드를 입력했습니다.
</body>
</html>