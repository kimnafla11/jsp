<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
검색조건을 입력하세요. <br><br>
<form action="selectFinal.jsp" method="post">
검색어: <input type="text" name="keyword" size="10">
대상: <select name="target">
		<option value="bookName">도서명
		<option value="author">저자		
     </select>
<input type="submit" value="검색">
</form>
</body>
</html>