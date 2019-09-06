<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*, model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="capstone" class = "model.Capstone"/>
<jsp:setProperty property="*" name="capstone"/>
<%
	capstone.setmDate(new java.util.Date());
	Connection conn = ConnectionProvider.getConnection();
	try{
		CapstoneDao dao = new CapstoneDao();
		dao.insert(conn, capstone);
	}catch(SQLException e){
		e.printStackTrace();
	}
%>


<jsp:forward page="list.jsp"/>
</body>
</html>