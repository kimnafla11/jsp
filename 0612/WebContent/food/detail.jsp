<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int foodId = Integer.parseInt(request.getParameter("foodId"));
	Connection conn = ConnectionProvider.getConnection();
	Food food = null;//펫 밖에서 선언하고
	try{
		FoodDao dao = new FoodDao();
		food = dao.selectById(conn, foodId);//selectbyId를 food에 넣어준다.
	}catch(SQLException e){}
%>

<c:set var = "food" value = "<%=food %>"/><!-- food이라는 자바객체를 food에 넣음으로써 el로 사용할 수 있다. -->
<img alt = "food" src = "/0612/images/${food.foodImage }" width = "250" height = "300"><br><br>
음식이름 : ${food.foodName }<br>
음식가격 : ${food.foodPrice }<br><br>
<input type = "button" value = "구매하기" onclick="location.href='purchase.jsp?foodId=${food.foodId}'">

</body>
</html>