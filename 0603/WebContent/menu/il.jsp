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
<h3>일식 주문됐습니다ㅋ</h3><br>
<img alt="han" src="/0603/images/il.jpg" width="300"><br>
<h4>초밥6피스</h4><br>
사이즈 = ${param.size}<br>
가격 = ${param.price }
</body>
</html>