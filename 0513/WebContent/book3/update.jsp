<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,my.util.*,my.dao.*" %><%--커넥션 툴 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="book" class = "my.model.Book"/>
<jsp:setProperty property="*" name="book"/>
<%
	Connection conn=ConnectionProvider.getConnection();	//커넥션 만들어주기
	try{
			BookDao dao = new BookDao();//dao를 만들어주고
			dao.update(conn, book);//dao에 있는 메소드를 불러오고
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
1개의 레코드가 업데이트 되었습니다.
</body>
</html>