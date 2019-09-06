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
<c:set var = "price" value = "10000"/>
<fmt:formatNumber value = "${price }" type = "number" var="numPrice"/>
${numPrice }<br>
통화 : <fmt:formatNumber value = "${price }" type = "currency" currencySymbol="원"/>
<!-- pricce를 출력하는데 currency로 출력함 --><br>
퍼센트 : <fmt:formatNumber value = "${price }" type = "percent" groupingUsed="false"/>
<!-- 퍼센트의 그룹핑은 사용하지 말라는 거임 --><br>
패턴 : <fmt:formatNumber value = "${price }" pattern="0000.00"/><br>

</body>
</html>