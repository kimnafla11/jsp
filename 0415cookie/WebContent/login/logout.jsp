<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.util.CookieBox" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.addCookie(CookieBox.createCookie("AUTH", "", "/", 0));//쿠키를 만든다 AUTH라고 이름 똑같이 주쟈.
// 쿠키의 값을 바꾸려면 그냥 이름 똑같이 써서 덮어쓰면 된다.
//밸류값을 공백 maxage0으로 줌->덮어쓰기하자마자 밸류값을 없앰
%>
로그아웃됐습니다<br>
<a href = "login.jsp">다시 로그인하기</a>
</body>
</html>