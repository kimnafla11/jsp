<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 정보 입력 <br><hr><br>
<form action = "insert.jsp" method = "post">
사용자 아이디: <input type = "text" name ="memberId" size="10">
이름: <input type = "text" name ="name" value = "류현진">
점수: <input type = "text" name ="score" value="100">
<input type = "submit" name = "입력">
</form>
</body>
</html>