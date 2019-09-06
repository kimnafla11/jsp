<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %><%--쿠키박스 임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c = CookieBox.createCookie("NM", "김나은");//쿠키박스 임포트 했으니까 마음놓고 한글 말 쓰기
	response.addCookie(c);
	response.addCookie(CookieBox.createCookie("UI", "kimnafla", "/", -1));
	//쿠키이름, 쿠키밸류, 쿠키 경로, 쿠키 유효시간 순서임 MaxAge를 -1로 주면 웹브라우저가 꺼질때 쿠키도 없애라
%>
쿠키박스를 통해 쿠키 생성!
</body>
</html>