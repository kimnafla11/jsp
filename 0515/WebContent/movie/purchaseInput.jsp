<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %><%--기본적으로 필요한 5가지 임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userId = (String)session.getAttribute("LOGIN");//login.jsp에 등록한 세션값을 가져와서 userId에 넣음
	int movieId = Integer.parseInt(request.getParameter("movieId"));
	Connection conn = ConnectionProvider.getConnection();
	Movie movie = null;
	try{
		MovieDao dao = new MovieDao();
		movie = dao.selectById(conn, movieId);
	}catch(SQLException e){}
	if (movie != null){%>
	
<form action = "purchase.jsp" method = "post">
<input type = "hidden" name = "userId" value = "<%=userId%>"><br><%--hidden타입 신기, 앞서 movieId변수를 그대로 이용 --%>
<h2><%=userId %>님 안녕하세요,,</h2><br>
영화명:<input type = "text" name = "movieName" value = "<%=movie.getMovieName() %>"><br>
가격:<input type = "text" name = "price" value = "<%=movie.getPrice() %>"><br>
티켓수량:<input type = "text" name = "numTicket" value = ""><br>
<input type = "submit" value = "구매"><br>
</form>
	<% } %>
</body>
</html>