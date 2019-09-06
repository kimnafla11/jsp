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
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stu" class = "my.info.Student"/><%--usebean에서 객체 생성되고 stu변수에 집어넣었다 --%>
<jsp:setProperty property="*" name="stu"/>
<c:set var = "stu" value = "<%=stu %>"/>
<c:set target ="${stu }" property="sDate" value = "<%=new java.util.Date() %>"/>
<%session.setAttribute("stu", stu); %>
<jsp:forward page="test4.jsp"/>
학생명 : ${stu.studentName }<br>
점수 : ${stu.score }<br>
입학일자 : ${stu.sDate }<br>
</body>
</html>