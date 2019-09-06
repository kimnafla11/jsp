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
	Food food = null;//Food 밖에서 선언하고
	try{
		FoodDao dao = new FoodDao();
		food = dao.selectById(conn, foodId);//selectbyId를 food에 넣어준다.
	}catch(SQLException e){}
%>

<c:set var = "food" value = "<%=food %>"/><!-- food이라는 자바객체를 food에 넣음으로써 el로 사용할 수 있다. -->
<img alt = "food" src = "/0612/images/${food.foodImage }" width = "100" height = "130"><br><br>
음식명 : ${food.foodName }<br>
가격 : ${food.foodPrice }<br><br>
<h3>${sessionScope.LOGIN }님이 구매하려합니다.</h3><br>
<form action="purchaseProcess.jsp" method = "post">
음식아이디 : <input type = "text" name = "foodId" value ="${food.foodId }"><br>
음식명 : <input type = "text" name = "foodName" value ="${food.foodName }"><br>
개수 : <input type = "text" name = "foodCount" value ="1"><br>
<input type = "submit" value = "구매">
</form>
</body>
</html>