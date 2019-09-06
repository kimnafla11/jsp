<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
이 부분은 to.jsp에서 만들어진 부분입니다.<br>
이름은 <%=request.getAttribute("name") %>입니다.<br>
<jsp:forward page = "/to/destination.jsp"/><br>
</body>
</html>