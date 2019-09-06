<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Student" %><%--Student클래스 활용할거니까 임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Student stu = new Student();//기본생성자->파라미터에 아무 값도 안들어가있긔
	Student stu1 = new Student("고유빈",100, new java.util.Date());//파라미터 생성자로 만든거-> 값들이 다 채워져있다, Date값은 저렇게 넣기
	request.setAttribute("s", stu);//속성 s에다가 stu속성을 넣었다, 하지만 stu는 아무 값도 안들어있다
	request.setAttribute("t",stu1);
%>

<jsp:forward page="test6.jsp"/>

</body>
</html>