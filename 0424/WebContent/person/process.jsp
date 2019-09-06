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
<jsp:useBean id="person" class="my.info.Person" scope="request"/>
<jsp:setProperty property="*" name="person"/>
<% person.setBirthDay(new java.util.Date()); %><%--오늘날짜 --%>
이름: <%=person.getName() %><br>
취미: <%
	for(String hobby : person.getHobbies())
		out.println(hobby+"<br>");
%><%--배열이니까 for문으로 출력한다. 그 배열에 있는 값을 hobby에 넣어줌 --%>
좋아하는음식: <%
	for(String food: person.getFoods())
		out.println(food+"<br>");
%>
몸무게: <%=person.getWeight() %>
생일: <%=person.getBirthDay() %>
</body>
</html>