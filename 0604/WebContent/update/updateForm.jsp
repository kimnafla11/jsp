<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
도서 정보 수정: <br><br><hr>
<form action="update.jsp" method="post">
도서아이디: <input type="text" name="bookId" value="111"> <br>
도서명: <input type="text" name="bookName" value="도서1"> <br>
저자: <input type="text" name="author" value="김갑동"> <br>
가격: <input type="text" name="price" value="22000"> <br>
<input type="submit" value="수정"> <br>
</form>

</body>
</html>