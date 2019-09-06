<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.dao.*,my.model.*,my.util.*,java.sql.*,java.util.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("utf-8"); %>
jsp usebean 받아옴
<%
	Connection conn = ConnectionProvider.getConnection(); 
	try {
		여러분이 하세요..
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
도서정보 수정이 완료되었습니다!!
</body>
</html>