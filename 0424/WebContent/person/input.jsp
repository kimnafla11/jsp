<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사람정보입력: <br><hr><br>
<form action = "process.jsp" method = "post">
이름: <input type = "text" name = "name" value ="김나은"><br><br>
취미: <input type = "checkbox" name = "hobbies" value = "독서">독서
	<input type = "checkbox" name = "hobbies" value = "잠자기">잠자기
	<input type = "checkbox" name = "hobbies" value = "오버워치하기">오버워치하기
	<input type = "checkbox" name = "hobbies" value = "운동">운동<br><br>
좋아하는음식: <input type = "checkbox" name = "foods" value = "한식">한식
	<input type = "checkbox" name = "foods" value = "중식">중식
	<input type = "checkbox" name = "foods" value = "양식">양식
	<input type = "checkbox" name = "foods" value = "일식">일식<br><br>
몸무게: <input type = "text" name="weight" value = "48"><br><br>
<input type ="submit" value="입력"><br><br>
</form>
</body>
</html>