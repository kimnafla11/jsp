<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
도서 정보 입력 <br><hr><br>
<form action = "update.jsp" method = "post">
도서아이디: <input type = "text" name ="bookId" value = "1"><%--update는 주사용키를 꼭 받아야함 --%>
도서명: <input type = "text" name ="name" value = "사랑은 구름타고">
저자: <input type = "text" name ="author" value = "김기홍">
가격: <input type = "text" name ="price" value="10000">
<input type = "submit" name = "입력">
</form>
</body>
</html>