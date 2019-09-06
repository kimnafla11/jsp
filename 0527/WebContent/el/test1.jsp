<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("name", "고유빈");//setAttribute에 속성을 하나 잡아주세유
	request.setAttribute("address", "포시즌");
	session.setAttribute("depart", "경영학과인지, 무슨 학과인지 원...");

%>
<jsp:forward page="test2.jsp"/>

</body>
</html>