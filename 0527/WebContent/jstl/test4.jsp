<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %><%--c라는 프레픽스 준다 --%>
<%@ page import = "my.info.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 test4.jsp입니다 <br>
학생명 : ${stu.studentName }<br>
점수 : ${stu.score }<br>
입학일자 : ${stu.sDate }<br>
</body>
</html>