<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>과목성적</title>
</head>
<body>
과목을 선택하세요<br><br>
<form action ="process3.jsp", method ="post">
	<input type = "radio" name = "subject" value = "경영">경영
	<input type = "radio" name = "subject" value = "수학">수학
	<input type = "radio" name = "subject" value = "디자인">디자인
	<input type = "radio" name = "subject" value = "물리">물리<br>
	성적
	<input type = "text" name ="score" size="10">
	<input type = "submit" value = "입력">
</form>
</body>
</html>