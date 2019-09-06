<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>윤두준고르기</title>
</head>
<body>
<h1>골라봐바^^~</h1><br><br>
<form action="process.jsp" method="post">
	<input type ="radio" name="menu" value="찐따두준">찐따두준
	<input type ="radio" name="menu" value="축구두준">축구두준
	<input type ="radio" name="menu" value="셀카두준">셀카두준
	<input type ="radio" name="menu" value="군바리두준">군바리두준<br><br>
	<select name = "size">
		<option>좋아해요</option>
		<option>감사해요</option>
		<option>보고싶어요</option>
	</select>
	<br><br>
	<input type = "submit" value="전송">
</form>
</body>
</html>