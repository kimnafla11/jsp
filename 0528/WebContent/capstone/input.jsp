<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캡스톤디자인</title>
</head>
<body>
캡스톤디자인 팀 정보 입력<br><hr><br>
<form action="insert.jsp" method = "post">
팀명 : <input type = "text" name = "teamName" value = "집에보내조"><br>
팀원 : <input type = "checkbox" name = "member" value = "김나은">김나은
	<input type = "checkbox" name = "member" value = "박건웅">박건웅
	<input type = "checkbox" name = "member" value = "백가은">백가은
	<input type = "checkbox" name = "member" value = "이채빈">이채빈<br>
인원 : <input type = "text" name = "numPerson" value = "4"><br>
<input type = "submit" value = "입력">
</form>
</body>
</html>