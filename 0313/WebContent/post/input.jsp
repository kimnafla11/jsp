<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
사용자 정보 입력:<br><br>
<form action="output.jsp" method="post">
	사용자이름: <input type="text" name="name" value="김나은"><br> <%--value 초기값 설정 --%>
	아이디: <input type="text" name="userId" value="kimnafla11"><br>
	비밀번호: <input type="password" name="password" value="1234"><br>
	닉네임: <input type="text" name="nickName" value="섹시걸"><br>
			<input type="text" name="nickName" value="큐트걸"><br>
			<input type="text" name="nickName" value="프리티걸"><br>
			<input type="text" name="nickName" value="핫걸"><br>
	좋아하는가수: <input type="checkbox" name="singer" value="랩몬">랩몬
			<input type="checkbox" name="singer" value="김남준">김남준
			<input type="checkbox" name="singer" value="RM">RM
			<input type="checkbox" name="singer" value="RapMonster">RapMonster
	<br>
	주소: <input type="radio" name="address" value="인천송도">인천송도
		<input type="radio" name="address" value="인천용현">인천용현
		<input type="radio" name="address" value="인천연수">인천연수
		<input type="radio" name="address" value="인천구월">인천구월
	<br>
	성적: <input type="text" name="score" value="87"><br>
	<br>
	<input type="submit" value="등록"><%--이렇게 넘겨주는게 post방식 --%>
</form>
</body>
</html>