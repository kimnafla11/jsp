<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴</title>
</head>
<body>
메뉴선택: <br><hr><br>
<form action="process.jsp" method ="post">
<input type = "radio" name= "menu" value = "한식">한식
<input type = "radio" name= "menu" value = "중식">중식
<input type = "radio" name= "menu" value = "일식">일식
<input type = "radio" name= "menu" value = "양식">양식<br>
<select name = "size">
	<option value = "큰거">큰거
	<option value = "중간거">중간거
	<option value = "작은거">작은
</select><br><br>
<input type = "text" name = "price" value = "50000"><br><br>
<input type = "submit" value = "주문">
</form>
</body>
</html>