<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이돌 정보입력</title>
</head>
<body>
아이돌 정보 입력 <br><hr><br>
<form action = "insert.jsp" method = "post">
아이돌아이디: <input type = "text" name = "ididol">
아이돌이름: <input type = "text" name = "name">
아이돌멤버수: <input type = "text" name = "member">
소속사: <input type = "text" name = "company">
<input type = "submit" value = "입력">
</form>
</body>
</html>