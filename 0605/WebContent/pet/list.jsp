<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>펫정보</title>
</head>
<body>
${sessionScope.LOGIN }(이)가 로그인 하였습니다.<br>

펫정보를 입력하세요. <br><hr><br>
<form action="/0605/pet/fileUpload.jsp" method ="post" enctype="multipart/form-data"><!-- 이미지파일을 업로드 하기위한 enctype넣어줘야함 -->
펫이름: <input type = "text" name = "petName" value ="강아지"><br>
가격: <input type = "text" name = "price" value ="20000"><br>
무게: <input type = "text" name = "weight" value ="30.36"><br>
이미지: <input type = "file" name = "petImage"><br>
<input type = "submit" value = "입력">
</form>
<br><hr><br>
<%// db에서 가져오기 위해 쓰는 공식
	Connection conn = ConnectionProvider.getConnection();
	List<Pet> pets = null;//배열 만들어주기	
	try{
		PetDao dao = new PetDao();//dao만들어주기
		pets = dao.selectList(conn);//커넥션 해주기
	}catch(SQLException e){}
%><!-- 스크립트릿에 선언한 pets를 가져와서 el형태로 표현하는거임 -->
<c:set var ="pets" value = "<%=pets %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${pets==null }">펫 항목이 없습니다</c:if>
<c:if test="${pets != null }">

<table width="700" border="1">
<tr>
	<th>아이디</th><th>펫명</th><th>가격</th><th>무게</th><th>이미지</th><th>입양일자</th>
</tr>
<c:forEach var ="pet" items ="${pets }"><!-- 배열이므로 forEach문 사용 -->
<tr>
	<td><a href ="/0605/pet/delete.jsp?petId=${pet.petId}">${pet.petId}</a></td>
	<td>${pet.petName}</td><td>${pet.price}</td><td>${pet.weight}</td>
	<td>
	<a href="/0605/pet/detail.jsp?petId=${pet.petId }">
	<img src ="/0605/images/${pet.petImage}" width="40" height="50"></a></td>
	<td><fmt:formatDate value="${pet.adoptDate }" type ="date" dateStyle="full"/></td>
</tr>
</c:forEach>
</table>

</c:if>
</body>
</html>