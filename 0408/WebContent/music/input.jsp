<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음악 정보 입력</title>
</head>
<body>
음악 정보 입력: <br><hr><br>
<form action ="process.jsp" method = "post">
장르: <input type = "radio" name = "janre" value = "hiphop">힙합
	<input type = "radio" name = "janre" value = "dance">댄스
	<input type = "radio" name = "janre" value = "classic">클래식
	<input type = "radio" name = "janre" value = "rnb">알앤비<br><br>
곡명: <input type = "text" name ="musicName" value = "Yes Or Yes"><br>
가격: <input type = "text" name ="price" value = "90000">
	<input type = "submit" value = "입력">

</form>
</body>
</html>