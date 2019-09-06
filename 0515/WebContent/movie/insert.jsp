<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*, model.*, util.*, java.sql.*, java.util.*" %><!-- 5개 클래스 임포트!! -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="movie" class = "model.Movie"/>
<jsp:setProperty property="*" name="movie"/>
<%
	movie.setOpenDate(new java.util.Date());
	Connection conn = ConnectionProvider.getConnection();
	try{
		MovieDao dao = new MovieDao();
		dao.insert(conn, movie);
	}catch(SQLException e){}
%>
1개의 영화 정보가 입력되었습니다.
</body>
</html>