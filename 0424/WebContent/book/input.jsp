<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
책정보입력: <br><hr><br>
<form action = "process.jsp" method = "post">
책제목: <input type = "text" name = "bookName" value ="상실의시대"><br><br>
장르: <input type = "checkbox" name = "janre" value = "판타지">판타지
	<input type = "checkbox" name = "janre" value = "추리">추리
	<input type = "checkbox" name = "janre" value = "로맨스">로맨스
	<input type = "checkbox" name = "janre" value = "공포">공포
	<br><br>
가격: <input type = "text" name = "price" value ="12000"><br><br>

<input type ="submit" value="입력"><br><br>
</form>
</body>
</html>