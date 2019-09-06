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
	int petId = Integer.parseInt(request.getParameter("petId"));
	Connection conn = ConnectionProvider.getConnection();
	Pet pet = null;//펫 밖에서 선언하고
	try{
		PetDao dao = new PetDao();
		pet = dao.selectById(conn, petId);//selectbyId를 pet에 넣어준다.
		
		int fav = pet.getFav();//db에 저장된 fav값을 가져온다
		dao.updateFav(conn, petId, ++fav);//접속하면 fav값이 1씩 증가하니까..증가한 값을 db에 넣어준다.
		
	}catch(SQLException e){}
%>

<c:set var = "pet" value = "<%=pet %>"/><!-- pet이라는 자바객체를 pet에 넣음으로써 el로 사용할 수 있다. -->
<img alt = "pet" src = "/0605/images/${pet.petImage }" width = "100" height = "130"><br><br>
펫 이름 : ${pet.petName }<br>
가격 : ${pet.price }<br><br>
<h3>${sessionScope.LOGIN }님이 구매하려고 합니다.</h3><br>
<form action="purchaseProcess.jsp" method = "post">
펫아이디 : <input type = "text" name = "petId" value ="${pet.petId }"><br>
펫이름 : <input type = "text" name = "petId" value ="${pet.petName }"><br>
몇마리? : <input type = "text" name = "petCount" value ="1"><br>
<input type = "submit" value = "구매">
</form>
</body>
</html>