<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 정보 입력</title>
</head>
<body>
영화정보 입력: <br><hr><br>
<form action = "insert.jsp" method = "post">
영화제목: <input type = "text" name = "movieName" value = "어벤져스">
제작사: <input type = "text" name = "maker" value = "마블">
가격: <input type = "text" name = "price" value = "12">
포스터: <input type = "text" name = "movieImage" value = "mov01.jpg">
<input type = "submit" value = "입력">
</form>
</body>
</html>