<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 정보를 입력하세요..<br><br>
<form action="process.jsp" method="post"> <%--빨간 글씨 속성이름, 그 다음 "속성 값",post방식 --%>
	사용자 이름: <input type ="text" name="name" size="10"><br><%--"name"이라는 파라미터가 process.jsp로 넘어가는거 --%>
	학과명: <input type ="text" name="department" size="10"><br>
	취미: <input type ="radio" name="hobby" value="독서">독서
		<input type ="radio" name="hobby" value="게임">게임
		<input type ="radio" name="hobby" value="노래">노래
		<input type ="radio" name="hobby" value="운동">운동
		<input type ="radio" name="hobby" value="요리">요리
	<input type ="submit" value="입력"> <%--버튼과 버튼 내 글씨에 입력이라고 나옴 --%>
</form>

</body>
</html>