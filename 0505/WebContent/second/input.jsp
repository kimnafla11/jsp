<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가수정보</title>
</head>
<body>
가수정보입력<br><hr><br>
<form action = "insert.jsp" method = "post">
가수아이디: <input type = "text" name="singerID">
가수이름: <input type = "text" name = "name">
가수나이: <input type = "text" name = "age">
소속사: <input type = "text" name = "company">
<input type ="submit" value = "입력">

</form>
</body>
</html>