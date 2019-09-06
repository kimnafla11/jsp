<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.movie.Movie"%>
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
	int price = Integer.parseInt(request.getParameter("price"));
	String maker = request.getParameter("maker");
	movie.setMovieName(name);
	movie.setPrice(price);
	movie.setMaker(maker);
	request.setAttribute("MV", movie);
%>
<jsp:forward page = "to.jsp"/>
<%--to.jsp에 포워딩해줌 --%>

</body>
</html>