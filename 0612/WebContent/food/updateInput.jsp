<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %>
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
	Food food = null;
	try{
		FoodDao dao = new FoodDao();
		food = dao.selectById(conn, foodId);
	}catch(SQLException e){}
%>
	
<c:set var ="food" value = "<%=food %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${food==null }">음식 항목이 없습니다</c:if>
<c:if test="${food != null }">

<form action = "update.jsp" method = "post">
<input type = "hidden" name = "foodId" value = "${food.foodId }"><br><%--hidden타입 신기, 앞서 movieId변수를 그대로 이용 --%>
음식명:<input type = "text" name = "foodName" value = "${food.foodName }"><br>
종류:<input type = "text" name = "foodType" value = "${food.foodType }"><br>
가격:<input type = "text" name = "foodPrice" value = "${food.foodPrice }"><br>
칼로리:<input type = "text" name = "foodKcal" value = "${food.foodKcal }"><br>
사진:<input type = "text" name = "foodImage" value = "${food.foodImage }"><br>
<input type = "submit" value = "수정"><br>
</form>
</c:if>

</body>
</html>