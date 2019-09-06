<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>제품정보입력</title>
</head>
<body>
제품 정보 입력 <br><hr><br>
<form action = "insert.jsp" method = "post">
제품명: <input type = "text" name ="name" value = "아이폰">
제품사: <input type = "text" name ="maker" value = "애플">
가격: <input type = "text" name ="price" value="2000000">
<input type = "submit" name = "입력">
</form>
</body>
</html>