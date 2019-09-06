<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 메인의 시작부분 입니다.<br><hr><br>
<%@ include file="sub.jspf" %>
<br><hr><br>
name = <%=name %><br>
address = <%=address %><br>
<%--이렇게 바로 출력할 수 있다.
request.getParameter안해도되는 이유는 
include file은 하나의 파일 내라고 생각하도 됨 그래서 그 변수명 그대로 쓸 수 있다. --%>
여기는 메인의 끝부분 입니다.
</body>
</html>