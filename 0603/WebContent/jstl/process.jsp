<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value = "utf-8"/><!-- 한글이 넘어오는것을 jstl로 처리함 -->
<c:choose>
	<c:when test="${param.menu =='한식' }">
		<c:redirect url="/menu/han.jsp">
			<c:param name="size" value = "${param.size }"/>
			<c:param name="price" value = "${param.price }"/>
		</c:redirect>
	</c:when>
	<c:when test="${param.menu =='일식' }">
		<c:redirect url="/menu/il.jsp">
			<c:param name="size" value = "${param.size }"/>
			<c:param name="price" value = "${param.price }"/>
		</c:redirect>
	</c:when>
	<c:when test="${param.menu =='중식' }">
		<c:redirect url="/menu/jung.jsp">
			<c:param name="size" value = "${param.size }"/>
			<c:param name="price" value = "${param.price }"/>
		</c:redirect>	
	</c:when>
	<c:when test="${param.menu =='양식' }">
			<c:redirect url="/menu/yang.jsp">
			<c:param name="size" value = "${param.size }"/>
			<c:param name="price" value = "${param.price }"/>
			</c:redirect>
	</c:when>
</c:choose>

</body>
</html>