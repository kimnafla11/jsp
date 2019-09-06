<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.movie.Movie" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Movie movie = new Movie();
	String name = request.getParameter("name");
	int series = Integer.parseInt(request.getParameter("series"));
	String maker = request.getParameter("maker");
	movie.setMovieName(name);
	movie.setSeries(series);
	movie.setMaker(maker);
	request.setAttribute("MV",movie);
%>
<jsp:forward page = "to.jsp"/>
</body>
</html>