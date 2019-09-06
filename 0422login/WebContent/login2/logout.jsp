<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.info.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//session.invalidate();//세션 모든 객체를 삭제해주는 메서드 일반적인 방법은 아님
	//session.removeAttribute("AUTH");//AUTH라는 속성만 삭제하는 메소드
	session.setMaxInactiveInterval(10);//10초후에 사라짐 뾰롱,,
	Member member = (Member)session.getAttribute("AUTH");
%>
<%=member.getUserName() %>님 로그아웃 되었습니다.<br>
<a href = "checkLogin.jsp">로그인 여부 확인하기</a>
</body>
</html>