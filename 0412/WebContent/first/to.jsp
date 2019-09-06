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
	Movie m1 = (Movie)request.getAttribute("MV");
%>
영화제목: <%=m1.getMovieName() %><br>
시리즈: <%=m1.getSeries() %><br>
감독: <%=m1.getMaker() %>
</body>
</html>