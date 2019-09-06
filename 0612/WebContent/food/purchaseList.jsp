<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음식 구매 정보</title>
</head>
<body>


<%// db에서 가져오기 위해 쓰는 공식
	Connection conn = ConnectionProvider.getConnection();
	List<Purchase> purchases = null;//배열 만들어주기	
	try{
		PurchaseDao dao = new PurchaseDao();//dao만들어주기
			purchases = dao.selectList(conn);
		purchases = dao.selectList(conn);//커넥션 해주기
	}catch(SQLException e){}
%><!-- 스크립트릿에 선언한 pets를 가져와서 el형태로 표현하는거임 -->
<c:set var ="purchases" value = "<%=purchases %>"/><!-- 변수명 pets라는 애를 만듦 얘를 만들어야 el형태로 사용가능함 ★★★매우중요 -->
<c:if test="${purchases==null }">음식 항목이 없습니다</c:if>
<c:if test="${purchases != null }">

<table width="700" border="1">
<tr>
	<th>아이디</th><th>음식명</th><th>음식개수</th><th>총가격</th><th>총칼로리</th><th>주문일자</th><th>주문자</th>
</tr>
<c:forEach var ="purchase" items ="${purchases }"><!-- 배열이므로 forEach문 사용 -->
<tr>
	<td>${purchase.purchaseId}</td>
	<td>${purchase.foodName}</td><td>${purchase.foodNum}</td><td>${purchase.totalPrice}</td>
	<td>${purchase.totalKcal}</td>
	<td><fmt:formatDate value="${purchase.pDate }" type ="date" dateStyle="full"/></td>
	<td>${purchase.purchaser }</td>
</tr>
</c:forEach>
</table>
</c:if>

</body>
</html>