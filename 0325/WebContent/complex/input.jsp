<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
트와이스입력 : <br>
<hr><br>
<form action = "process.jsp" method = "post">
	<input type = "radio" name = "member" value = "사나">사나
	<input type = "radio" name = "member" value = "쯔위">쯔위
	<input type = "radio" name = "member" value = "나연">나연
	<input type = "radio" name = "member" value = "정연">정연<br>
	<select name = "opt">
		<option>예쁜</option>
		<option>귀여운</option>
		<option>섹시한</option>
		<option>청순한</option>
	</select><br>
	<input type = "submit" value ="선택">
</form>
</body>
</html>