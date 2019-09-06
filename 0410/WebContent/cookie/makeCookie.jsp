<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %><%--한글 인코딩 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name = "김나은";
	String urlName = URLEncoder.encode(name,"utf-8");
	Cookie cookie = new Cookie("NM",urlName);
	response.addCookie(cookie);
	Cookie cookie1 = new Cookie("ADD",request.getParameter("add"));
	response.addCookie(cookie1);
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	Cookie cookie2 = new Cookie("UI",userId);
	response.addCookie(cookie2);
	Cookie cookie3 = new Cookie("PW",password);
	response.addCookie(cookie3);
	String urlUN = URLEncoder.encode(request.getParameter("userName"),"utf-8");
	Cookie cookie4 = new Cookie("NA",urlUN);
%>
쿠키가 만들어졌어요<br>
<%=cookie.getName() %> : <%=cookie.getValue() %>
<%=cookie1.getName() %> : <%=cookie1.getValue() %>
<%=cookie2.getName() %> : <%=cookie2.getValue() %>
<%=cookie3.getName() %> : <%=cookie3.getValue() %>

</body>
</html>