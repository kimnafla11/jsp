<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
code = ${param.code}<br><%--get방식으로 parameter받아서 바로 출력함 --%>
name = ${param.name}<br>
<jsp:forward page="test4.jsp">
	<jsp:param value = "${param.code}" name ="c"/>
		<jsp:param value = "${param.name}" name ="n"/>
</jsp:forward>
	<%--get방식으로 받은것을 c에 넣어서 포워딩함 --%>
</body>
</html>