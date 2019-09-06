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
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String add = request.getParameter("add");
%>

여기는 sub.jsp를 부르기 전 입니다.<br>
name = <%=name %><br>
주소 = <%=add %><br>
<jsp:include page="sub.jsp" flush="false">
	<jsp:param value = "<%=name %>" name = "name"/>
	<jsp:param value = "<%=add %>" name = "add"/>
	<%--주석 --%>
</jsp:include>
여기는 sub.jsp를 부르고 난 후 입니다.<br>
</body>
</html>