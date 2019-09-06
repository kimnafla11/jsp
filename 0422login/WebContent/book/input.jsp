<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 정보입력</title>
</head>
<body>
도서정보입력<br><hr><br>
<form action = "output.jsp" method = "post">
도서명 : <input type = "text" name ="bookName" value = "상실의시대">
저자 : <input type = "text" name ="author" value = "무라카미하루키">
가격 : <input type = "text" name ="price" value = "12000">
출판날짜 :
<input type = "submit" value = "입력">
</form>
</body>
</html>