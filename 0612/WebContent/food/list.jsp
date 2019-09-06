<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음식정보</title>
</head>
<body>

음식정보를 입력하세요. <br><hr><br>
<h3>${sessionScope.LOGIN }님 안녕하세요.</h3><br>
<form action="/0612/food/fileUpload.jsp" method ="post" enctype="multipart/form-data"><!-- 이미지파일을 업로드 하기위한 enctype넣어줘야함 -->
음식명: <input type = "text" name = "foodName" value ="초밥"><br>

종류 : <input type = "radio" name = "foodType" value = "한식">한식
	<input type = "radio" name = "foodType" value = "중식">중식
	<input type = "radio" name = "foodType" value = "양식">양식
	<input type = "radio" name = "foodType" value = "일식">일식<br>
	
가격: <input type = "text" name = "foodPrice" value ="20000"><br>
칼로리: <input type = "text" name = "foodKcal" value ="200"><br>
이미지: <input type = "file" name = "petImage"><br>
<input type = "submit" value = "입력">
</form>
<br><hr><br>

<%// db에서 가져오기 위해 쓰는 공식
	request.setCharacterEncoding("utf-8");
	String target = request.getParameter("target");
	String keyword = request.getParameter("keyword");
	Connection conn = ConnectionProvider.getConnection();
	List<Food> foods = null;//배열 만들어주기	
	try{
		FoodDao dao = new FoodDao();//dao만들어주기
		if(target == null)
			foods = dao.selectList(conn);
		else
			foods = dao.selectLike(conn, target, keyword);
		foods = dao.selectList(conn);//커넥션 해주기
	}catch(SQLException e){}
%><!-- 스크립트릿에 선언한 pets를 가져와서 el형태로 표현하는거임 -->
<c:set var ="foods" value = "<%=foods %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${foods==null }">음식 항목이 없습니다</c:if>
<c:if test="${foods != null }">

<table width="700" border="1">
<tr>
	<th>아이디</th><th>음식명</th><th>종류</th><th>가격</th><th>칼로리</th><th>이미지</th><th>제조일</th><th>수정</th><th>삭제</th>
</tr>
<c:forEach var ="food" items ="${foods }"><!-- 배열이므로 forEach문 사용 -->
<tr>
	<td>${food.foodId}</td>
	<td>${food.foodName}</td><td>${food.foodType}</td><td>${food.foodPrice}</td>
	<td>${food.foodKcal}</td>
	<td><a href = "/0612/food/detail.jsp?foodId=${food.foodId }">
			<img src ="/0612/images/${food.foodImage}" width="40" height="50">
		</a>
	</td>
	<td><fmt:formatDate value="${food.foodDate }" type ="date" dateStyle="full"/></td>
	<td><input type = "button" value ="수정" onclick="location.href='updateInput.jsp?foodId=${food.foodId}'"></td>
	<td><input type = "button" value ="삭제" onclick="location.href='delete.jsp?foodId=${food.foodId}'"></td>
</tr>
</c:forEach>
</table>
</c:if>

<br><hr><br>
<form method = "post" action = "/0612/food/list.jsp"><!-- form문에서 action지정을 하지 않으면 자기 자신을 호출함 -->
검색대상: <input type ="text" name = "target">
키워드: <input type ="text" name = "keyword">
<input type = "submit" value = "입력"><!-- 재귀적 post방법으로 보냈기 때문에 위에 있는 스크립트릿으로 바로 조건 에 들어간디 -->
</form>

</body>
</html>