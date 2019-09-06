<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사람정보</title>
</head>
<body>
사람정보<br><hr><br>
<form action="process.jsp" method = "post">
이름 : <input type = "text" name = "name" value = "김나은"><br>
나이 : <input type = "text" name = "age" value = "25"><br>
좋아하는 음식 : <input type = "checkbox" name = "food" value = "한식">한식
			<input type = "checkbox" name = "food" value = "중식">중식
			<input type = "checkbox" name = "food" value = "양식">양식
			<input type = "checkbox" name = "food" value = "일식">일식<br>
취미 : <input type = "checkbox" name = "hobby" value = "독서">독서
	<input type = "checkbox" name = "hobby" value = "공부">공부
	<input type = "checkbox" name = "hobby" value = "영화감상">영화감상
	<input type = "checkbox" name = "hobby" value = "게임">게임<br>
<input type = "submit" value = "입력">
</form>
</body>
</html>