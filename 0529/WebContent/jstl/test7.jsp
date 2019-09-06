<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	HashMap<String, Object> data = new HashMap<String, Object>();
	//key값을 String으로 받고 value값을 object로 받는 배열
	data.put("add", "시흥");//key값은 add value값은 시흥
	data.put("now", new java.util.Date());//key값은 now value는 데이터타입

%>
<c:set var="map" value = "<%=data %>"/>
<!-- 변수명은 map 밸류값은 data를 줬다는거심 -->
주소 : ${map.add }<br>
시간 : ${map.now }<br>
배열의합: <br><br>
<c:set var ="sum" value ="0"/>
<!-- 더한 겂을 저장할 변수 sum 선언하고 초기값은 0임 -->
<c:forEach var="i" begin="1" end="100" step="2"><!-- 반복문 i라는 변수을 1부터 100까지 반복 -->
	<c:set var = "sum" value = "${sum+i }"/><!-- el내에서 하는 산술연산 그것을 sum에 저장해서 for문처럼 돌리는거임 -->
</c:forEach>
1부터 100까지의 홀수의합은 ${sum }<br>
<ul>
<c:forEach var="i" begin="1" end="9">
	<c:forEach var="j" begin="1" end = "9">
		<li>${i} * ${j} = ${i*j}</li>
	</c:forEach>
	<br>
</c:forEach>
</ul>
</body>
</html>