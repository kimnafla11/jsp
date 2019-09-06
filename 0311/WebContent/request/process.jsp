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
	request.setCharacterEncoding("utf-8");//request객체에 언어 설정
	String name = request.getParameter("name"); //input.jsp에 "name"이라는 파라미터를 받아서 나오는거임! 절대 다른걸로 하믄 안됨
%>
사용자 이름 = <%=name %><br>
학과명 = <%=request.getParameter("department") %><br>
취미= <%=request.getParameter("hobby") %><br>
</body>
</html>
