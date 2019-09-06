<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유사 검색</title>
</head>
<body>
검색어를 입력하세요. <br><hr><br>
<form action="selectLike.jsp" method = "post">
타겟(어디서 찾을지) : <input type = "text" name = "target" value = "name"><br>
키워드 : <input type = "text" name = "keyword" value = "사랑"><br>
<input type ="submit" value = "검색">
</form>
</body>
</html>