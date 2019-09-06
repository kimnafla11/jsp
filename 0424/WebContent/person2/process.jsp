<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="person" class="my.info.Person" scope="request"/><%--request기본객체 속성으로 보내겠다--%>
<jsp:setProperty property="*" name="person"/>
<% person.setBirthDay(new java.util.Date()); %><%--오늘날짜 --%>
<% request.setAttribute("PS", person); %><%--속성으로 설정 --%>
<jsp:forward page="/to/output.jsp"/><%--jsp포워드 해준다.. --%>
</body>
</html>