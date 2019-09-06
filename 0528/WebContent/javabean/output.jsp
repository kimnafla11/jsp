<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Person" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력한값 출력</title>
</head>
<body>
<% Person person = (Person)session.getAttribute("PS"); %>
이름 : <%= person.getName() %><br>
나이 : <%= person.getAge() %><br>
좋아하는 음식 : <% for(String food : person.getFood())
				out.println(food+"<br>");%>
취미 : <% for(String hobby : person.getHobby())
				out.println(hobby+"<br>");%>
생일 : <%= person.getBirth() %>
</body>
</html>