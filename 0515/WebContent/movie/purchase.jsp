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
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String movieName = request.getParameter("movieName");
	int price = Integer.parseInt(request.getParameter("price"));
	int num = Integer.parseInt(request.getParameter("numTicket"));
	Purchase purchase = new Purchase(userId, movieName, price*num);//객체만들기 생성자로 객체에 userId, movieName, totalPrice = price*num을 넣어준다
	Connection conn = ConnectionProvider.getConnection();
	try{
		Team1Dao dao = new Team1Dao();
		dao.insert(conn, purchase);
	}catch(SQLException e){}
%>
	<h3><%=userId %>님 안녕하세요</h3><br>
	<%=movieName %> 영화 티켓을 <%=num %>장 구매하였습니다.<br>
	<%=purchase.getTotalPrice() %>원 입니다.
</body>
</html>