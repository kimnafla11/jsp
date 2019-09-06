<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %><%--디코드 해줌 크롬에서는 자동으로 되긴함 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("ui") %>님 안녕하슈<br>
비밀번호는 <%= request.getParameter("pw") %>입니다<br>
<%
	String urlName = request.getParameter("name");
	String name = URLDecoder.decode(urlName,"utf-8");
	String urlAdd = request.getParameter("add");
	String Address = URLDecoder.decode(urlAdd,"utf-8");
%>
당신의 이름은 <%=request.getParameter("name")%>맞지여?<br>
당신의 주소는 <%=request.getParameter("add")%>맞지여?<br>
<%--get방식으로 받은 input ui를 출력함 --%>
<%--post방식으로 넘어온 파라미너가 아닌 get방식으로 넘어온 파라미터라서
url 파라미터를 인코딩 디코딩하는 방식이 필요한거임 ㅇㅓ렵다...존나 어려운디??ㅋ --%>
</body>
</html>