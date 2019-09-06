<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //스크립트릿 : 자바공간, 자바로 서술
	String title = "프로그래밍"; //title =>변수
	int grade = 87; //정수형변수
%>

title= <%= title %><br> <%--expression:출력부 변수나 메서드 명을 적으면 출력됨 --%>
grade=<%= grade %><br>


</body>
</html>
