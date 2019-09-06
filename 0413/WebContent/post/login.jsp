<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
로그인하세요<br><hr><br>
<form action = "makeCookie.jsp" method = "post">
ID : <input type = "text" name = "userId" value = "kimnafla11"><br>
PW : <input type = "password" name = "password" value = "1234"><br>
NAME : <input type = "text" name = "name" value = "김나은"><br>
ADDRESS : <select name = "address">
			<option value = "서울">서울</option>
			<option value = "경기">경기</option>
			<option value = "강원">강원</option>
			<option value = "경상">경상</option>
			<option value = "충청">충청</option>
			<option value = "전라">전라</option>
			<option value = "광역시">광역시</option>
			</select>
<input type = "submit" value = "로그인">
</form>
</body>
</html>