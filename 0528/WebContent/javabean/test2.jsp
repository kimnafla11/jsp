<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "singer.Idol" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="idol" class = "singer.Idol"/>
<jsp:setProperty property="*" name="idol"/>
입력한 내용<br>
아이돌 이름 : <%=idol.getIdolName() %><br>
아이돌 소속사 : <%=idol.getIdolCo() %><br>
아이돌 멤버수 : <%=idol.getMember() %>
</body>
</html>