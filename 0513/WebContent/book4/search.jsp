<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 검색</title>
</head>
<body>
아이디를 입력하세요. <br><hr><br>
<form action="selectById.jsp" method = "post">
아이디 : <input type = "text" name = "bookId" value = "5">
<input type ="submit" value = "검색">
</form>
</body>
</html>