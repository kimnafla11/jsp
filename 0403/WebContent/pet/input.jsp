<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>펫샵</title>
</head>
<body>
펫 종류를 선택하세요. <br><hr><br>
<form action = "process.jsp" method = "post">
	<select name = "kind">
		<option value = "강아지">강아지</option>
		<option value = "고양이">고양이</option>
		<option value = "토끼">토끼</option>
		<option value = "거북이">거북이</option>
	</select><br>
	<input type = "radio" name = "size" value ="대형">대형
	<input type = "radio" name = "size" value ="중형">중형
	<input type = "radio" name = "size" value ="소형">소형
	<input type = "submit" value = "선택">
</form>
</body>
</html>